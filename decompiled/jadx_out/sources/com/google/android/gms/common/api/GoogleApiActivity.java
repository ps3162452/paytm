package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {
    protected int zaa = 0;

    public static Intent zaa(Context context, PendingIntent pendingIntent, int i, boolean z) {
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra(NPStringFog.decode(new byte[]{67, 82, 95, 7, 94, 90, 84, 104, 88, 13, 67, 81, 93, 67}, "371c74", true, false), pendingIntent);
        intent.putExtra(NPStringFog.decode(new byte[]{0, 0, 91, 91, 94, 90, 1, 62, 81, 91, 94, 81, 8, 21, 109, 94, 83}, "fa2774", false), i);
        intent.putExtra(NPStringFog.decode(new byte[]{90, 14, 64, 80, 2, 72, 107, 12, 85, 87, 5, 86, 81, 19}, "4a49d1", false), z);
        return intent;
    }

    private final void zab() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e(NPStringFog.decode(new byte[]{33, 94, 93, 81, 15, 85, 39, 65, 91, 119, 0, 68, 15, 71, 91, 66, 26}, "f126c0", -16031), NPStringFog.decode(new byte[]{118, 81, 18, 11, 66, 80, 67, 75, 70, 17, 64, 88, 69, 70, 3, 6, 20, 78, 94, 70, 14, 13, 65, 77, 23, 87, 30, 22, 70, 88, 68}, "72fb49", -3.0131555E8f));
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get(NPStringFog.decode(new byte[]{20, 0, 93, 81, 81, 15, 3, 58, 90, 91, 76, 4, 10, 17}, "de358a", true, true));
        Integer num = (Integer) extras.get(NPStringFog.decode(new byte[]{82, 74, 20, 90, 19, 62, 84, 87, 2, 80}, "78f5aa", 1.18671304E9d));
        if (pendingIntent == null && num == null) {
            Log.e(NPStringFog.decode(new byte[]{37, 87, 90, 82, 88, 86, 35, 72, 92, 116, 87, 71, 11, 78, 92, 65, 77}, "b85543", -1.40988381E8d), NPStringFog.decode(new byte[]{114, 87, 69, 80, 70, 12, 71, 77, 17, 74, 68, 4, 65, 64, 84, 93, 16, 18, 90, 64, 89, 86, 69, 17, 19, 70, 84, 74, 95, 9, 70, 64, 88, 86, 94}, "34190e", -2142383608L));
            finish();
            return;
        }
        if (pendingIntent == null) {
            GoogleApiAvailability.getInstance().showErrorDialogFragment(this, ((Integer) Preconditions.checkNotNull(num)).intValue(), 2, this);
            this.zaa = 1;
            return;
        }
        try {
            startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
            this.zaa = 1;
        } catch (ActivityNotFoundException e) {
            if (extras.getBoolean(NPStringFog.decode(new byte[]{86, 88, 67, 81, 85, 29, 103, 90, 86, 86, 82, 3, 93, 69}, "87783d", -1.5722597E9f), true)) {
                GoogleApiManager.zak(this).zax(new ConnectionResult(22, null), getIntent().getIntExtra(NPStringFog.decode(new byte[]{0, 4, 15, 88, 95, 8, 1, 58, 5, 88, 95, 3, 8, 17, 57, 93, 82}, "fef46f", -28071), -1));
            } else {
                String strConcat = NPStringFog.decode(new byte[]{35, 5, 65, 91, 67, 95, 22, 31, 21, 92, 90, 66, 66, 0, 90, 71, 91, 82, 66, 17, 93, 91, 89, 83, 66, 10, 84, 71, 91, 85, 10, 15, 91, 85, 21}, "bf5256", -14026) + pendingIntent.toString() + NPStringFog.decode(new byte[]{74}, "dc4b1c", 1.943502818E9d);
                if (Build.FINGERPRINT.contains(NPStringFog.decode(new byte[]{87, 84, 88, 83, 67, 94, 83}, "016617", false))) {
                    strConcat = strConcat.concat(NPStringFog.decode(new byte[]{21, 102, 93, 8, 18, 23, 88, 83, 76, 65, 14, 84, 86, 71, 71, 65, 22, 95, 80, 92, 21, 19, 4, 68, 90, 94, 67, 8, 15, 80, 21, 117, 90, 14, 6, 91, 80, 18, 101, 13, 0, 78, 21, 65, 80, 19, 23, 94, 86, 87, 70, 65, 2, 88, 91, 92, 80, 2, 21, 94, 90, 92, 21, 8, 18, 68, 64, 87, 70, 65, 14, 89, 21, 87, 88, 20, 13, 86, 65, 93, 71, 18, 65, 64, 92, 70, 93, 65, 38, 88, 90, 85, 89, 4, 65, 118, 101, 123, 70, 65, 3, 66, 65, 18, 91, 14, 21, 23, 114, 93, 90, 6, 13, 82, 21, 98, 89, 0, 24, 23, 102, 70, 90, 19, 4, 25}, "525aa7", -2.111717164E9d));
                }
                Log.e(NPStringFog.decode(new byte[]{34, 88, 89, 87, 90, 1, 36, 71, 95, 113, 85, 16, 12, 65, 95, 68, 79}, "e7606d", -670337440L), strConcat, e);
            }
            this.zaa = 1;
            finish();
        } catch (IntentSender.SendIntentException e2) {
            Log.e(NPStringFog.decode(new byte[]{127, 95, 14, 82, 89, 83, 121, 64, 8, 116, 86, 66, 81, 70, 8, 65, 76}, "80a556", true), NPStringFog.decode(new byte[]{114, 3, 95, 14, 85, 2, 20, 22, 89, 66, 92, 7, 65, 12, 85, 10, 16, 22, 81, 12, 82, 11, 94, 1, 125, 12, 66, 7, 94, 18}, "4b6b0f", true, false), e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra(NPStringFog.decode(new byte[]{92, 90, 17, 15, 3, 24, 109, 88, 4, 8, 4, 6, 87, 71}, "25efea", 1.810072E9f), true);
            this.zaa = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                GoogleApiManager googleApiManagerZak = GoogleApiManager.zak(this);
                switch (i2) {
                    case -1:
                        googleApiManagerZak.zay();
                        break;
                    case 0:
                        googleApiManagerZak.zax(new ConnectionResult(13, null), getIntent().getIntExtra(NPStringFog.decode(new byte[]{95, 84, 92, 92, 91, 89, 94, 106, 86, 92, 91, 82, 87, 65, 106, 89, 86}, "955027", true, false), -1));
                        break;
                }
            }
        } else if (i == 2) {
            this.zaa = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zaa = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zaa = bundle.getInt(NPStringFog.decode(new byte[]{70, 6, 16, 92, 10, 77, 64, 10, 12, 93}, "4cc3f8", -1.470078821E9d));
        }
        if (this.zaa != 1) {
            zab();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(NPStringFog.decode(new byte[]{66, 80, 18, 91, 9, 23, 68, 92, 14, 90}, "05a4eb", -1.952898E9f), this.zaa);
        super.onSaveInstanceState(bundle);
    }
}
