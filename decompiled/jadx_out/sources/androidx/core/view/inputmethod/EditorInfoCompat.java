package androidx.core.view.inputmethod;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.core.util.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class EditorInfoCompat {
    private static final String CONTENT_MIME_TYPES_INTEROP_KEY = NPStringFog.decode(new byte[]{89, 95, 93, 74, 90, 90, 92, 31, 74, 77, 69, 67, 87, 67, 77, 22, 67, 2, 11, 31, 79, 81, 80, 68, 22, 88, 87, 72, 64, 71, 85, 84, 77, 80, 90, 87, 22, 116, 93, 81, 65, 92, 74, 120, 87, 94, 90, 112, 87, 92, 73, 89, 65, 29, 123, 126, 119, 108, 112, 125, 108, 110, 116, 113, 120, 118, 103, 101, 96, 104, 112, 96}, "819853", -1.102109687E9d);
    private static final String CONTENT_MIME_TYPES_KEY = NPStringFog.decode(new byte[]{4, 13, 85, 16, 92, 10, 1, 27, 31, 1, 92, 17, 0, 77, 71, 11, 86, 20, 75, 10, 95, 18, 70, 23, 8, 6, 69, 10, 92, 7, 75, 38, 85, 11, 71, 12, 23, 42, 95, 4, 92, 32, 10, 14, 65, 3, 71, 77, 38, 44, 127, 54, 118, 45, 49, 60, 124, 43, 126, 38, 58, 55, 104, 50, 118, 48}, "ec1b3c", 895330050L);
    private static final String CONTENT_SELECTION_END_KEY = NPStringFog.decode(new byte[]{82, 87, 86, 66, 90, 95, 87, 65, 28, 83, 90, 68, 86, 23, 68, 89, 80, 65, 29, 80, 92, 64, 64, 66, 94, 92, 70, 88, 90, 82, 29, 124, 86, 89, 65, 89, 65, 112, 92, 86, 90, 117, 92, 84, 66, 81, 65, 24, 112, 118, 124, 100, 112, 120, 103, 102, 97, 117, 121, 115, 112, 109, 123, 127, 123, 105, 118, 119, 118}, "392056", -270899574L);
    private static final String CONTENT_SELECTION_HEAD_KEY = NPStringFog.decode(new byte[]{4, 87, 82, 23, 86, 13, 1, 65, 24, 6, 86, 22, 0, 23, 64, 12, 92, 19, 75, 80, 88, 21, 76, 16, 8, 92, 66, 13, 86, 0, 75, 124, 82, 12, 77, 11, 23, 112, 88, 3, 86, 39, 10, 84, 70, 4, 77, 74, 38, 118, 120, 49, 124, 42, 49, 102, 101, 32, 117, 33, 38, 109, 127, 42, 119, 59, 45, 124, 119, 33}, "e96e9d", 760715L);
    private static final String CONTENT_SURROUNDING_TEXT_KEY = NPStringFog.decode(new byte[]{81, 91, 80, 75, 10, 8, 84, 77, 26, 90, 10, 19, 85, 27, 66, 80, 0, 22, 30, 92, 90, 73, 16, 21, 93, 80, 64, 81, 10, 5, 30, 112, 80, 80, 17, 14, 66, 124, 90, 95, 10, 34, 95, 88, 68, 88, 17, 79, 115, 122, 122, 109, 32, 47, 100, 106, 103, 108, 55, 51, 127, 96, 122, 125, 44, 47, 119, 106, 96, 124, 61, 53}, "0549ea", -7.102929E8f);
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;
    static final int MAX_INITIAL_SELECTION_LENGTH = 1024;
    static final int MEMORY_EFFICIENT_TEXT_LENGTH = 2048;

    private static class Api30Impl {
        private Api30Impl() {
        }

        static CharSequence getInitialSelectedText(EditorInfo editorInfo, int i) {
            return editorInfo.getInitialSelectedText(i);
        }

        static CharSequence getInitialTextAfterCursor(EditorInfo editorInfo, int i, int i2) {
            return editorInfo.getInitialTextAfterCursor(i, i2);
        }

        static CharSequence getInitialTextBeforeCursor(EditorInfo editorInfo, int i, int i2) {
            return editorInfo.getInitialTextBeforeCursor(i, i2);
        }

        static void setInitialSurroundingSubText(EditorInfo editorInfo, CharSequence charSequence, int i) {
            editorInfo.setInitialSurroundingSubText(charSequence, i);
        }
    }

    @Deprecated
    public EditorInfoCompat() {
    }

    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : EMPTY_STRING_ARRAY;
        }
        if (editorInfo.extras == null) {
            return EMPTY_STRING_ARRAY;
        }
        String[] stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_KEY);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_INTEROP_KEY);
        }
        return stringArray == null ? EMPTY_STRING_ARRAY : stringArray;
    }

    public static CharSequence getInitialSelectedText(EditorInfo editorInfo, int i) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialSelectedText(editorInfo, i);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int iMin = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int iMax = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int i2 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int i3 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || i3 - i2 != iMax - iMin || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        return (i & 1) != 0 ? charSequence.subSequence(i2, i3) : TextUtils.substring(charSequence, i2, i3);
    }

    public static CharSequence getInitialTextAfterCursor(EditorInfo editorInfo, int i, int i2) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialTextAfterCursor(editorInfo, i, i2);
        }
        if (editorInfo.extras == null || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i3 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int iMin = Math.min(i, charSequence.length() - i3);
        return (i2 & 1) != 0 ? charSequence.subSequence(i3, iMin + i3) : TextUtils.substring(charSequence, i3, iMin + i3);
    }

    public static CharSequence getInitialTextBeforeCursor(EditorInfo editorInfo, int i, int i2) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialTextBeforeCursor(editorInfo, i, i2);
        }
        if (editorInfo.extras == null || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i3 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int iMin = Math.min(i, i3);
        return (i2 & 1) != 0 ? charSequence.subSequence(i3 - iMin, i3) : TextUtils.substring(charSequence, i3 - iMin, i3);
    }

    static int getProtocol(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            return 1;
        }
        if (editorInfo.extras == null) {
            return 0;
        }
        boolean zContainsKey = editorInfo.extras.containsKey(CONTENT_MIME_TYPES_KEY);
        boolean zContainsKey2 = editorInfo.extras.containsKey(CONTENT_MIME_TYPES_INTEROP_KEY);
        if (zContainsKey && zContainsKey2) {
            return 4;
        }
        if (zContainsKey) {
            return 3;
        }
        return zContainsKey2 ? 2 : 0;
    }

    private static boolean isCutOnSurrogate(CharSequence charSequence, int i, int i2) {
        switch (i2) {
            case 0:
                return Character.isLowSurrogate(charSequence.charAt(i));
            case 1:
                return Character.isHighSurrogate(charSequence.charAt(i));
            default:
                return false;
        }
    }

    private static boolean isPasswordInputType(int i) {
        int i2 = i & 4095;
        return i2 == 129 || i2 == 225 || i2 == 18;
    }

    public static void setContentMimeTypes(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_INTEROP_KEY, strArr);
    }

    public static void setInitialSurroundingSubText(EditorInfo editorInfo, CharSequence charSequence, int i) {
        Preconditions.checkNotNull(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, i);
            return;
        }
        int i2 = editorInfo.initialSelStart > editorInfo.initialSelEnd ? editorInfo.initialSelEnd - i : editorInfo.initialSelStart - i;
        int i3 = editorInfo.initialSelStart > editorInfo.initialSelEnd ? editorInfo.initialSelStart - i : editorInfo.initialSelEnd - i;
        int length = charSequence.length();
        if (i < 0 || i2 < 0 || i3 > length) {
            setSurroundingText(editorInfo, null, 0, 0);
            return;
        }
        if (isPasswordInputType(editorInfo.inputType)) {
            setSurroundingText(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            setSurroundingText(editorInfo, charSequence, i2, i3);
        } else {
            trimLongSurroundingText(editorInfo, charSequence, i2, i3);
        }
    }

    public static void setInitialSurroundingText(EditorInfo editorInfo, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }

    private static void setSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(CONTENT_SURROUNDING_TEXT_KEY, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(CONTENT_SELECTION_HEAD_KEY, i);
        editorInfo.extras.putInt(CONTENT_SELECTION_END_KEY, i2);
    }

    private static void trimLongSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        int i3 = i2 - i;
        int i4 = i3 > 1024 ? 0 : i3;
        int length = charSequence.length();
        int i5 = 2048 - i4;
        double d = i5;
        Double.isNaN(d);
        int iMin = Math.min(length - i2, i5 - Math.min(i, (int) (d * 0.8d)));
        int iMin2 = Math.min(i, i5 - iMin);
        int i6 = i - iMin2;
        if (isCutOnSurrogate(charSequence, i - iMin2, 0)) {
            i6++;
            iMin2--;
        }
        if (isCutOnSurrogate(charSequence, (i2 + iMin) - 1, 1)) {
            iMin--;
        }
        CharSequence charSequenceConcat = i4 != i3 ? TextUtils.concat(charSequence.subSequence(i6, i6 + iMin2), charSequence.subSequence(i2, i2 + iMin)) : charSequence.subSequence(i6, iMin2 + i4 + iMin + i6);
        int i7 = iMin2 + 0;
        setSurroundingText(editorInfo, charSequenceConcat, i7, i4 + i7);
    }
}
