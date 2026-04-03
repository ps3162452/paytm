package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zag implements DialogInterface.OnClickListener {
    public static zag zab(Activity activity, Intent intent, int i) {
        return new zad(intent, activity, i);
    }

    public static zag zac(Fragment fragment, Intent intent, int i) {
        return new zae(intent, fragment, i);
    }

    public static zag zad(LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new zaf(intent, lifecycleFragment, 2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                zaa();
            } catch (ActivityNotFoundException e) {
                String strDecode = NPStringFog.decode(new byte[]{112, 82, 12, 89, 80, 84, 22, 71, 10, 21, 70, 68, 87, 65, 17, 21, 71, 85, 69, 92, 9, 64, 65, 89, 89, 93, 69, 92, 91, 68, 83, 93, 17, 27}, "63e550", 21733);
                if (true == Build.FINGERPRINT.contains(NPStringFog.decode(new byte[]{2, 0, 91, 3, 23, 11, 6}, "ee5feb", true, false))) {
                    strDecode = NPStringFog.decode(new byte[]{34, 3, 8, 14, 93, 2, 68, 22, 14, 66, 75, 18, 5, 16, 21, 66, 74, 3, 23, 13, 13, 23, 76, 15, 11, 12, 65, 11, 86, 18, 1, 12, 21, 76, 24, 50, 12, 11, 18, 66, 85, 7, 29, 66, 14, 1, 91, 19, 22, 66, 22, 10, 93, 8, 68, 16, 4, 17, 87, 10, 18, 11, 15, 5, 24, 33, 11, 13, 6, 14, 93, 70, 52, 14, 0, 27, 24, 21, 1, 16, 23, 11, 91, 3, 23, 66, 2, 13, 86, 8, 1, 1, 21, 11, 87, 8, 68, 11, 18, 17, 77, 3, 23, 66, 14, 12, 24, 3, 9, 23, 13, 3, 76, 9, 22, 17, 65, 21, 81, 18, 12, 66, 38, 13, 87, 1, 8, 7, 65, 35, 104, 47, 23, 66, 3, 23, 76, 70, 10, 13, 21, 66, 127, 9, 11, 5, 13, 7, 24, 54, 8, 3, 24, 66, 107, 18, 11, 16, 4, 76}, "dbab8f", 1.9774121E9f);
                }
                Log.e(NPStringFog.decode(new byte[]{38, 91, 88, 84, 86, 83, 48, 87, 93, 81, 75, 81, 1, 70}, "b29894", 1.150252728E9d), strDecode, e);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }

    protected abstract void zaa();
}
