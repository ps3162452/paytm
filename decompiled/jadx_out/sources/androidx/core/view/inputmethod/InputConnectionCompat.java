package androidx.core.view.inputmethod;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class InputConnectionCompat {
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;
    private static final String COMMIT_CONTENT_ACTION = NPStringFog.decode(new byte[]{86, 89, 6, 20, 11, 88, 83, 79, 76, 5, 11, 67, 82, 25, 20, 15, 1, 70, 25, 94, 12, 22, 17, 69, 90, 82, 22, 14, 11, 85, 25, 126, 12, 22, 17, 69, 116, 88, 12, 8, 1, 82, 67, 94, 13, 8, 39, 94, 90, 71, 3, 18, 74, 114, 120, 122, 47, 47, 48, 110, 116, 120, 44, 50, 33, 127, 99}, "77bfd1", true, false);
    private static final String COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY = NPStringFog.decode(new byte[]{82, 12, 1, 64, 14, 81, 87, 76, 22, 71, 17, 72, 92, 16, 17, 28, 23, 9, 0, 76, 19, 91, 4, 79, 29, 11, 11, 66, 20, 76, 94, 7, 17, 90, 14, 92, 29, 43, 11, 66, 20, 76, 112, 13, 11, 92, 4, 91, 71, 11, 10, 92, 34, 87, 94, 18, 4, 70, 79, 123, 124, 44, 49, 119, 47, 108, 108, 55, 55, 123}, "3be2a8", false);
    private static final String COMMIT_CONTENT_CONTENT_URI_KEY = NPStringFog.decode(new byte[]{88, 15, 80, 17, 11, 81, 93, 25, 26, 0, 11, 74, 92, 79, 66, 10, 1, 79, 23, 8, 90, 19, 17, 76, 84, 4, 64, 11, 11, 92, 23, 40, 90, 19, 17, 76, 122, 14, 90, 13, 1, 91, 77, 8, 91, 13, 39, 87, 84, 17, 85, 23, 74, 123, 118, 47, 96, 38, 42, 108, 102, 52, 102, 42}, "9a4cd8", false, false);
    private static final String COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY = NPStringFog.decode(new byte[]{89, 15, 83, 65, 11, 90, 92, 79, 68, 70, 20, 67, 87, 19, 67, 29, 18, 2, 11, 79, 65, 90, 1, 68, 22, 8, 89, 67, 17, 71, 85, 4, 67, 91, 11, 87, 22, 40, 89, 67, 17, 71, 123, 14, 89, 93, 1, 80, 76, 8, 88, 93, 39, 92, 85, 17, 86, 71, 74, 112, 119, 47, 99, 118, 42, 103, 103, 37, 114, 96, 39, 97, 113, 49, 99, 122, 43, 125}, "8a73d3", 1.002061886E9d);
    private static final String COMMIT_CONTENT_DESCRIPTION_KEY = NPStringFog.decode(new byte[]{2, 93, 84, 69, 10, 10, 7, 75, 30, 84, 10, 17, 6, 29, 70, 94, 0, 20, 77, 90, 94, 71, 16, 23, 14, 86, 68, 95, 10, 7, 77, 122, 94, 71, 16, 23, 32, 92, 94, 89, 0, 0, 23, 90, 95, 89, 38, 12, 14, 67, 81, 67, 75, 32, 44, 125, 100, 114, 43, 55, 60, 119, 117, 100, 38, 49, 42, 99, 100, 126, 42, 45}, "c307ec", true);
    private static final String COMMIT_CONTENT_FLAGS_INTEROP_KEY = NPStringFog.decode(new byte[]{80, 12, 85, 66, 13, 81, 85, 76, 66, 69, 18, 72, 94, 16, 69, 30, 20, 9, 2, 76, 71, 89, 7, 79, 31, 11, 95, 64, 23, 76, 92, 7, 69, 88, 13, 92, 31, 43, 95, 64, 23, 76, 114, 13, 95, 94, 7, 91, 69, 11, 94, 94, 33, 87, 92, 18, 80, 68, 76, 123, 126, 44, 101, 117, 44, 108, 110, 36, 125, 113, 37, 107}, "1b10b8", false, false);
    private static final String COMMIT_CONTENT_FLAGS_KEY = NPStringFog.decode(new byte[]{80, 93, 83, 71, 92, 15, 85, 75, 25, 86, 92, 20, 84, 29, 65, 92, 86, 17, 31, 90, 89, 69, 70, 18, 92, 86, 67, 93, 92, 2, 31, 122, 89, 69, 70, 18, 114, 92, 89, 91, 86, 5, 69, 90, 88, 91, 112, 9, 92, 67, 86, 65, 29, 37, 126, 125, 99, 112, 125, 50, 110, 117, 123, 116, 116, 53}, "13753f", 30427083L);
    private static final String COMMIT_CONTENT_INTEROP_ACTION = NPStringFog.decode(new byte[]{88, 10, 2, 74, 91, 80, 93, 74, 21, 77, 68, 73, 86, 22, 18, 22, 66, 8, 10, 74, 16, 81, 81, 78, 23, 13, 8, 72, 65, 77, 84, 1, 18, 80, 91, 93, 23, 45, 8, 72, 65, 77, 122, 11, 8, 86, 81, 90, 77, 13, 9, 86, 119, 86, 84, 20, 7, 76, 26, 122, 118, 41, 43, 113, 96, 102, 122, 43, 40, 108, 113, 119, 109}, "9df849", false);
    private static final String COMMIT_CONTENT_LINK_URI_INTEROP_KEY = NPStringFog.decode(new byte[]{4, 95, 82, 69, 10, 15, 1, 31, 69, 66, 21, 22, 10, 67, 66, 25, 19, 87, 86, 31, 64, 94, 0, 17, 75, 88, 88, 71, 16, 18, 8, 84, 66, 95, 10, 2, 75, 120, 88, 71, 16, 18, 38, 94, 88, 89, 0, 5, 17, 88, 89, 89, 38, 9, 8, 65, 87, 67, 75, 37, 42, 127, 98, 114, 43, 50, 58, 125, 127, 121, 46, 57, 48, 99, 127}, "e167ef", 16488);
    private static final String COMMIT_CONTENT_LINK_URI_KEY = NPStringFog.decode(new byte[]{7, 89, 84, 19, 88, 91, 2, 79, 30, 2, 88, 64, 3, 25, 70, 8, 82, 69, 72, 94, 94, 17, 66, 70, 11, 82, 68, 9, 88, 86, 72, 126, 94, 17, 66, 70, 37, 88, 94, 15, 82, 81, 18, 94, 95, 15, 116, 93, 11, 71, 81, 21, 25, 113, 41, 121, 100, 36, 121, 102, 57, 123, 121, 47, 124, 109, 51, 101, 121}, "f70a72", true);
    private static final String COMMIT_CONTENT_OPTS_INTEROP_KEY = NPStringFog.decode(new byte[]{4, 94, 7, 70, 11, 89, 1, 30, 16, 65, 20, 64, 10, 66, 23, 26, 18, 1, 86, 30, 21, 93, 1, 71, 75, 89, 13, 68, 17, 68, 8, 85, 23, 92, 11, 84, 75, 121, 13, 68, 17, 68, 38, 95, 13, 90, 1, 83, 17, 89, 12, 90, 39, 95, 8, 64, 2, 64, 74, 115, 42, 126, 55, 113, 42, 100, 58, 127, 51, 96, 55}, "e0c4d0", false);
    private static final String COMMIT_CONTENT_OPTS_KEY = NPStringFog.decode(new byte[]{4, 95, 85, 23, 90, 13, 1, 73, 31, 6, 90, 22, 0, 31, 71, 12, 80, 19, 75, 88, 95, 21, 64, 16, 8, 84, 69, 13, 90, 0, 75, 120, 95, 21, 64, 16, 38, 94, 95, 11, 80, 7, 17, 88, 94, 11, 118, 11, 8, 65, 80, 17, 27, 39, 42, 127, 101, 32, 123, 48, 58, 126, 97, 49, 102}, "e11e5d", 16542);
    private static final String COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY = NPStringFog.decode(new byte[]{3, 92, 82, 74, 9, 10, 6, 28, 69, 77, 22, 19, 13, 64, 66, 22, 16, 82, 81, 28, 64, 81, 3, 20, 76, 91, 88, 72, 19, 23, 15, 87, 66, 80, 9, 7, 76, 123, 88, 72, 19, 23, 33, 93, 88, 86, 3, 0, 22, 91, 89, 86, 37, 12, 15, 66, 87, 76, 72, 32, 45, 124, 98, 125, 40, 55, 61, 96, 115, 107, 51, 47, 54, 109, 100, 125, 37, 38, 43, 100, 115, 106}, "b268fc", 4307);
    private static final String COMMIT_CONTENT_RESULT_RECEIVER_KEY = NPStringFog.decode(new byte[]{7, 15, 84, 75, 95, 81, 2, 25, 30, 90, 95, 74, 3, 79, 70, 80, 85, 79, 72, 8, 94, 73, 69, 76, 11, 4, 68, 81, 95, 92, 72, 40, 94, 73, 69, 76, 37, 14, 94, 87, 85, 91, 18, 8, 95, 87, 115, 87, 11, 17, 81, 77, 30, 123, 41, 47, 100, 124, 126, 108, 57, 51, 117, 106, 101, 116, 50, 62, 98, 124, 115, 125, 47, 55, 117, 107}, "fa0908", false);
    private static final String EXTRA_INPUT_CONTENT_INFO = NPStringFog.decode(new byte[]{2, 89, 2, 65, 12, 92, 7, 79, 72, 80, 12, 71, 6, 25, 16, 90, 6, 66, 77, 82, 30, 71, 17, 84, 77, 126, 40, 99, 54, 97, 60, 116, 41, 125, 55, 112, 45, 99, 57, 122, 45, 115, 44}, "c7f3c5", 1434874671L);
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{120, 91, 67, 17, 23, 112, 94, 91, 93, 1, 0, 71, 88, 90, 93, 39, 12, 94, 65, 84, 71}, "153dc3", -12931);

    public interface OnCommitContentListener {
        boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle);
    }

    @Deprecated
    public InputConnectionCompat() {
    }

    public static boolean commitContent(InputConnection inputConnection, EditorInfo editorInfo, InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        boolean z;
        boolean z2 = false;
        ClipDescription description = inputContentInfoCompat.getDescription();
        String[] contentMimeTypes = EditorInfoCompat.getContentMimeTypes(editorInfo);
        int length = contentMimeTypes.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            }
            if (description.hasMimeType(contentMimeTypes[i2])) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 25) {
            return inputConnection.commitContent((InputContentInfo) inputContentInfoCompat.unwrap(), i, bundle);
        }
        switch (EditorInfoCompat.getProtocol(editorInfo)) {
            case 2:
                z2 = true;
                break;
            case 3:
            case 4:
                break;
            default:
                return false;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable(z2 ? COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY : COMMIT_CONTENT_CONTENT_URI_KEY, inputContentInfoCompat.getContentUri());
        bundle2.putParcelable(z2 ? COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY : COMMIT_CONTENT_DESCRIPTION_KEY, inputContentInfoCompat.getDescription());
        bundle2.putParcelable(z2 ? COMMIT_CONTENT_LINK_URI_INTEROP_KEY : COMMIT_CONTENT_LINK_URI_KEY, inputContentInfoCompat.getLinkUri());
        bundle2.putInt(z2 ? COMMIT_CONTENT_FLAGS_INTEROP_KEY : COMMIT_CONTENT_FLAGS_KEY, i);
        bundle2.putParcelable(z2 ? COMMIT_CONTENT_OPTS_INTEROP_KEY : COMMIT_CONTENT_OPTS_KEY, bundle);
        return inputConnection.performPrivateCommand(z2 ? COMMIT_CONTENT_INTEROP_ACTION : COMMIT_CONTENT_ACTION, bundle2);
    }

    private static OnCommitContentListener createOnCommitContentListenerUsingPerformReceiveContent(View view) {
        Preconditions.checkNotNull(view);
        return new OnCommitContentListener(view) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.3
            final View val$view;

            {
                this.val$view = view;
            }

            @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
            public boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
                if (Build.VERSION.SDK_INT >= 25 && (i & 1) != 0) {
                    try {
                        inputContentInfoCompat.requestPermission();
                        InputContentInfo inputContentInfo = (InputContentInfo) inputContentInfoCompat.unwrap();
                        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                        bundle2.putParcelable(NPStringFog.decode(new byte[]{83, 86, 0, 71, 88, 90, 86, 64, 74, 86, 88, 65, 87, 22, 18, 92, 82, 68, 28, 93, 28, 65, 69, 82, 28, 113, 42, 101, 98, 103, 109, 123, 43, 123, 99, 118, 124, 108, 59, 124, 121, 117, 125}, "28d573", 609270799L), inputContentInfo);
                        bundle = bundle2;
                    } catch (Exception e) {
                        Log.w(NPStringFog.decode(new byte[]{47, 92, 22, 69, 18, 113, 9, 92, 8, 85, 5, 70, 15, 93, 8, 115, 9, 95, 22, 83, 18}, "f2f0f2", 17308), NPStringFog.decode(new byte[]{113, 83, 91, 68, 77, 16, 91, 92, 70, 6, 75, 68, 18, 81, 90, 13, 77, 85, 92, 70, 21, 5, 75, 95, 95, 18, 124, 46, 124, 11, 18, 64, 80, 18, 76, 85, 65, 70, 101, 6, 75, 93, 91, 65, 70, 10, 86, 94, 26, 27, 21, 5, 88, 89, 94, 87, 81}, "225c90", 31708), e);
                        return false;
                    }
                }
                return ViewCompat.performReceiveContent(this.val$view, new ContentInfoCompat.Builder(new ClipData(inputContentInfoCompat.getDescription(), new ClipData.Item(inputContentInfoCompat.getContentUri())), 2).setLinkUri(inputContentInfoCompat.getLinkUri()).setExtras(bundle).build()) == null;
            }
        };
    }

    public static InputConnection createWrapper(View view, InputConnection inputConnection, EditorInfo editorInfo) {
        return createWrapper(inputConnection, editorInfo, createOnCommitContentListenerUsingPerformReceiveContent(view));
    }

    @Deprecated
    public static InputConnection createWrapper(InputConnection inputConnection, EditorInfo editorInfo, OnCommitContentListener onCommitContentListener) {
        boolean z = false;
        ObjectsCompat.requireNonNull(inputConnection, NPStringFog.decode(new byte[]{11, 87, 72, 68, 68, 112, 13, 87, 86, 84, 83, 71, 11, 86, 86, 17, 93, 70, 17, 77, 24, 83, 85, 19, 12, 86, 86, 28, 94, 70, 14, 85}, "b98103", false, true));
        ObjectsCompat.requireNonNull(editorInfo, NPStringFog.decode(new byte[]{6, 92, 90, 66, 95, 67, 42, 86, 85, 89, 16, 92, 22, 75, 71, 22, 82, 84, 67, 86, 92, 88, 29, 95, 22, 84, 95}, "c83601", 16440));
        ObjectsCompat.requireNonNull(onCommitContentListener, NPStringFog.decode(new byte[]{11, 91, 115, 9, 89, 91, 13, 65, 115, 9, 90, 66, 1, 91, 68, 42, 93, 69, 16, 80, 94, 3, 70, 22, 9, 64, 67, 18, 20, 84, 1, 21, 94, 9, 90, 27, 10, 64, 92, 10}, "d50f46", -951315550L));
        return Build.VERSION.SDK_INT >= 25 ? new InputConnectionWrapper(inputConnection, z, onCommitContentListener) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.1
            final OnCommitContentListener val$listener;

            {
                this.val$listener = onCommitContentListener;
            }

            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
                if (this.val$listener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i, bundle)) {
                    return true;
                }
                return super.commitContent(inputContentInfo, i, bundle);
            }
        } : EditorInfoCompat.getContentMimeTypes(editorInfo).length != 0 ? new InputConnectionWrapper(inputConnection, z, onCommitContentListener) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.2
            final OnCommitContentListener val$listener;

            {
                this.val$listener = onCommitContentListener;
            }

            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean performPrivateCommand(String str, Bundle bundle) {
                if (InputConnectionCompat.handlePerformPrivateCommand(str, bundle, this.val$listener)) {
                    return true;
                }
                return super.performPrivateCommand(str, bundle);
            }
        } : inputConnection;
    }

    static boolean handlePerformPrivateCommand(String str, Bundle bundle, OnCommitContentListener onCommitContentListener) throws Throwable {
        boolean z;
        ResultReceiver resultReceiver;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals(COMMIT_CONTENT_ACTION, str)) {
            z = false;
        } else {
            if (!TextUtils.equals(COMMIT_CONTENT_INTEROP_ACTION, str)) {
                return false;
            }
            z = true;
        }
        try {
            ResultReceiver resultReceiver2 = (ResultReceiver) bundle.getParcelable(z ? COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY : COMMIT_CONTENT_RESULT_RECEIVER_KEY);
            try {
                Uri uri = (Uri) bundle.getParcelable(z ? COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY : COMMIT_CONTENT_CONTENT_URI_KEY);
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY : COMMIT_CONTENT_DESCRIPTION_KEY);
                boolean zOnCommitContent = (uri == null || clipDescription == null) ? false : onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, (Uri) bundle.getParcelable(z ? COMMIT_CONTENT_LINK_URI_INTEROP_KEY : COMMIT_CONTENT_LINK_URI_KEY)), bundle.getInt(z ? COMMIT_CONTENT_FLAGS_INTEROP_KEY : COMMIT_CONTENT_FLAGS_KEY), (Bundle) bundle.getParcelable(z ? COMMIT_CONTENT_OPTS_INTEROP_KEY : COMMIT_CONTENT_OPTS_KEY));
                if (resultReceiver2 != null) {
                    resultReceiver2.send(zOnCommitContent ? 1 : 0, null);
                }
                return zOnCommitContent;
            } catch (Throwable th) {
                resultReceiver = resultReceiver2;
                th = th;
                if (resultReceiver != null) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = null;
        }
    }
}
