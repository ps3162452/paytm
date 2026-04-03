package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class DialogCompat {
    private DialogCompat() {
    }

    public static View requireViewById(Dialog dialog, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return dialog.requireViewById(i);
        }
        View viewFindViewById = dialog.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 34, 16, 81, 91, 86, 21, 70, 94, 90, 64, 19, 20, 3, 86, 80, 70, 86, 8, 5, 85, 21, 85, 19, 48, 15, 85, 66, 20, 90, 8, 21, 89, 81, 81, 19, 18, 14, 89, 70, 20, 119, 15, 7, 92, 90, 83}, "ff0543", -5588));
        }
        return viewFindViewById;
    }
}
