package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.core.graphics.PaintCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes27.dex */
final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;
    private final int[] mEmojiAsDefaultStyleExceptions;
    private EmojiCompat.GlyphChecker mGlyphChecker;
    private final MetadataRepo mMetadataRepo;
    private final EmojiCompat.SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    private static final class CodepointIndexFinder {
        private static final int INVALID_INDEX = -1;

        private CodepointIndexFinder() {
        }

        static int findIndexBackward(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            int i3 = i;
            boolean z = false;
            while (i2 != 0) {
                i3--;
                if (i3 < 0) {
                    return !z ? 0 : -1;
                }
                char cCharAt = charSequence.charAt(i3);
                if (z) {
                    if (!Character.isHighSurrogate(cCharAt)) {
                        return -1;
                    }
                    i2--;
                    z = false;
                } else if (!Character.isSurrogate(cCharAt)) {
                    i2--;
                } else {
                    if (Character.isHighSurrogate(cCharAt)) {
                        return -1;
                    }
                    z = true;
                }
            }
            return i3;
        }

        static int findIndexForward(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            boolean z = false;
            int i3 = i;
            while (i2 != 0) {
                if (i3 >= length) {
                    if (z) {
                        return -1;
                    }
                    return length;
                }
                char cCharAt = charSequence.charAt(i3);
                if (z) {
                    if (!Character.isLowSurrogate(cCharAt)) {
                        return -1;
                    }
                    i2--;
                    i3++;
                    z = false;
                } else if (!Character.isSurrogate(cCharAt)) {
                    i2--;
                    i3++;
                } else {
                    if (Character.isLowSurrogate(cCharAt)) {
                        return -1;
                    }
                    z = true;
                    i3++;
                }
            }
            return i3;
        }
    }

    public static class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {
        private static final int PAINT_TEXT_SIZE = 10;
        private static final ThreadLocal<StringBuilder> sStringBuilder = new ThreadLocal<>();
        private final TextPaint mTextPaint;

        DefaultGlyphChecker() {
            TextPaint textPaint = new TextPaint();
            this.mTextPaint = textPaint;
            textPaint.setTextSize(10.0f);
        }

        private static StringBuilder getStringBuilder() {
            ThreadLocal<StringBuilder> threadLocal = sStringBuilder;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            return threadLocal.get();
        }

        @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
        public boolean hasGlyph(CharSequence charSequence, int i, int i2, int i3) {
            if (Build.VERSION.SDK_INT < 23 && i3 > Build.VERSION.SDK_INT) {
                return false;
            }
            StringBuilder stringBuilder = getStringBuilder();
            stringBuilder.setLength(0);
            while (i < i2) {
                stringBuilder.append(charSequence.charAt(i));
                i++;
            }
            return PaintCompat.hasGlyph(this.mTextPaint, stringBuilder.toString());
        }
    }

    static final class ProcessorSm {
        private static final int STATE_DEFAULT = 1;
        private static final int STATE_WALKING = 2;
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        ProcessorSm(MetadataRepo.Node node, boolean z, int[] iArr) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z;
            this.mEmojiAsDefaultStyleExceptions = iArr;
        }

        private static boolean isEmojiStyle(int i) {
            return i == 65039;
        }

        private static boolean isTextStyle(int i) {
            return i == 65038;
        }

        private int reset() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
            return 1;
        }

        private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
            if (this.mCurrentNode.getData().isDefaultEmoji() || isEmojiStyle(this.mLastCodepoint)) {
                return true;
            }
            if (this.mUseEmojiAsDefaultStyle) {
                if (this.mEmojiAsDefaultStyleExceptions == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.getData().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int check(int i) {
            int iReset = 2;
            MetadataRepo.Node node = this.mCurrentNode.get(i);
            switch (this.mState) {
                case 2:
                    if (node != null) {
                        this.mCurrentNode = node;
                        this.mCurrentDepth++;
                    } else if (isTextStyle(i)) {
                        iReset = reset();
                    } else if (!isEmojiStyle(i)) {
                        if (this.mCurrentNode.getData() == null) {
                            iReset = reset();
                        } else if (this.mCurrentDepth == 1 && !shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                            iReset = reset();
                        } else {
                            this.mFlushNode = this.mCurrentNode;
                            reset();
                            iReset = 3;
                        }
                    }
                    break;
                default:
                    if (node != null) {
                        this.mState = 2;
                        this.mCurrentNode = node;
                        this.mCurrentDepth = 1;
                    } else {
                        iReset = reset();
                    }
                    break;
            }
            this.mLastCodepoint = i;
            return iReset;
        }

        EmojiMetadata getCurrentMetadata() {
            return this.mCurrentNode.getData();
        }

        EmojiMetadata getFlushMetadata() {
            return this.mFlushNode.getData();
        }

        boolean isInFlushableState() {
            return this.mState == 2 && this.mCurrentNode.getData() != null && (this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint());
        }
    }

    EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.SpanFactory spanFactory, EmojiCompat.GlyphChecker glyphChecker, boolean z, int[] iArr) {
        this.mSpanFactory = spanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        this.mUseEmojiAsDefaultStyle = z;
        this.mEmojiAsDefaultStyleExceptions = iArr;
    }

    private void addEmoji(Spannable spannable, EmojiMetadata emojiMetadata, int i, int i2) {
        spannable.setSpan(this.mSpanFactory.createSpan(emojiMetadata), i, i2, 33);
    }

    private static boolean delete(Editable editable, KeyEvent keyEvent, boolean z) {
        if (hasModifiers(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (hasInvalidSelection(selectionStart, selectionEnd)) {
            return false;
        }
        EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class);
        if (emojiSpanArr != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    static boolean handleDeleteSurroundingText(InputConnection inputConnection, Editable editable, int i, int i2, boolean z) {
        int i3;
        int i4;
        if (editable == null || inputConnection == null) {
            return false;
        }
        if (i < 0 || i2 < 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (hasInvalidSelection(selectionStart, selectionEnd)) {
            return false;
        }
        if (z) {
            int iFindIndexBackward = CodepointIndexFinder.findIndexBackward(editable, selectionStart, Math.max(i, 0));
            int iFindIndexForward = CodepointIndexFinder.findIndexForward(editable, selectionEnd, Math.max(i2, 0));
            if (iFindIndexBackward == -1 || iFindIndexForward == -1) {
                return false;
            }
            i3 = iFindIndexBackward;
            i4 = iFindIndexForward;
        } else {
            int iMax = Math.max(selectionStart - i, 0);
            int iMin = Math.min(selectionEnd + i2, editable.length());
            i3 = iMax;
            i4 = iMin;
        }
        EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(i3, i4, EmojiSpan.class);
        if (emojiSpanArr == null || emojiSpanArr.length <= 0) {
            return false;
        }
        int iMin2 = i3;
        int iMax2 = i4;
        for (EmojiSpan emojiSpan : emojiSpanArr) {
            int spanStart = editable.getSpanStart(emojiSpan);
            int spanEnd = editable.getSpanEnd(emojiSpan);
            iMin2 = Math.min(spanStart, iMin2);
            iMax2 = Math.max(spanEnd, iMax2);
        }
        int iMax3 = Math.max(iMin2, 0);
        int iMin3 = Math.min(iMax2, editable.length());
        inputConnection.beginBatchEdit();
        editable.delete(iMax3, iMin3);
        inputConnection.endBatchEdit();
        return true;
    }

    static boolean handleOnKeyDown(Editable editable, int i, KeyEvent keyEvent) {
        boolean zDelete;
        switch (i) {
            case 67:
                zDelete = delete(editable, keyEvent, false);
                break;
            case 112:
                zDelete = delete(editable, keyEvent, true);
                break;
            default:
                zDelete = false;
                break;
        }
        if (!zDelete) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean hasGlyph(CharSequence charSequence, int i, int i2, EmojiMetadata emojiMetadata) {
        if (emojiMetadata.getHasGlyph() == 0) {
            emojiMetadata.setHasGlyph(this.mGlyphChecker.hasGlyph(charSequence, i, i2, emojiMetadata.getSdkAdded()));
        }
        return emojiMetadata.getHasGlyph() == 2;
    }

    private static boolean hasInvalidSelection(int i, int i2) {
        return i == -1 || i2 == -1 || i != i2;
    }

    private static boolean hasModifiers(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    EmojiMetadata getEmojiMetadata(CharSequence charSequence) {
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int length = charSequence.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = Character.codePointAt(charSequence, iCharCount);
            if (processorSm.check(iCodePointAt) != 2) {
                return null;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        if (processorSm.isInFlushableState()) {
            return processorSm.getCurrentMetadata();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012 A[Catch: all -> 0x005e, TryCatch #0 {all -> 0x005e, blocks: (B:7:0x000e, B:23:0x0044, B:11:0x0019, B:13:0x0023, B:15:0x0026, B:19:0x002c, B:21:0x0036, B:22:0x0039, B:35:0x006a, B:44:0x0081, B:45:0x008f, B:48:0x00a9, B:49:0x00ad, B:53:0x00b9, B:56:0x00c5, B:57:0x00ca, B:59:0x00d8, B:61:0x00df, B:62:0x00e7, B:64:0x00f2, B:65:0x00fb, B:69:0x0105, B:72:0x0111, B:73:0x0116, B:25:0x0048, B:27:0x0058, B:9:0x0012), top: B:81:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.CharSequence process(java.lang.CharSequence r12, int r13, int r14, int r15, boolean r16) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.process(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
    }
}
