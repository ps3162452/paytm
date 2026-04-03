package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
final class AppCompatReceiveContentHelper {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{49, 7, 84, 93, 10, 79, 6, 33, 88, 86, 23, 92, 13, 22}, "cb78c9", -1.219312126E9d);

    private static final class OnDropApi24Impl {
        private OnDropApi24Impl() {
        }

        static boolean onDropForTextView(DragEvent dragEvent, TextView textView, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
            textView.beginBatchEdit();
            try {
                Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
                ViewCompat.performReceiveContent(textView, new ContentInfoCompat.Builder(dragEvent.getClipData(), 3).build());
                textView.endBatchEdit();
                return true;
            } catch (Throwable th) {
                textView.endBatchEdit();
                throw th;
            }
        }

        static boolean onDropForView(DragEvent dragEvent, View view, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            ViewCompat.performReceiveContent(view, new ContentInfoCompat.Builder(dragEvent.getClipData(), 3).build());
            return true;
        }
    }

    private AppCompatReceiveContentHelper() {
    }

    static boolean maybeHandleDragEventViaPerformReceiveContent(View view, DragEvent dragEvent) {
        if (Build.VERSION.SDK_INT >= 31 || Build.VERSION.SDK_INT < 24 || dragEvent.getLocalState() != null || ViewCompat.getOnReceiveContentMimeTypes(view) == null) {
            return false;
        }
        Activity activityTryGetActivity = tryGetActivity(view);
        if (activityTryGetActivity == null) {
            Log.i(LOG_TAG, NPStringFog.decode(new byte[]{122, 86, 88, 70, 69, 65, 81, 86, 88, 5, 93, 4, 25, 83, 68, 14, 65, 91, 25, 89, 89, 65, 80, 2, 77, 94, 64, 8, 69, 24, 3, 23, 64, 8, 84, 22, 4}, "976a1a", true) + view);
            return false;
        }
        if (dragEvent.getAction() == 1) {
            return !(view instanceof TextView);
        }
        if (dragEvent.getAction() == 3) {
            return view instanceof TextView ? OnDropApi24Impl.onDropForTextView(dragEvent, (TextView) view, activityTryGetActivity) : OnDropApi24Impl.onDropForView(dragEvent, view, activityTryGetActivity);
        }
        return false;
    }

    static boolean maybeHandleMenuActionViaPerformReceiveContent(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 31 || ViewCompat.getOnReceiveContentMimeTypes(textView) == null || !(i == 16908322 || i == 16908337)) {
            return false;
        }
        ClipboardManager clipboardManager = (ClipboardManager) textView.getContext().getSystemService(NPStringFog.decode(new byte[]{2, 8, 13, 69, 85, 12, 0, 22, 0}, "add57c", -1.370090322E9d));
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return true;
        }
        ViewCompat.performReceiveContent(textView, new ContentInfoCompat.Builder(primaryClip, 1).setFlags(i == 16908322 ? 0 : 1).build());
        return true;
    }

    static Activity tryGetActivity(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }
}
