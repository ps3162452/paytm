package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zae implements View.OnClickListener {
    final Context zaa;
    final Intent zab;

    zae(Context context, Intent intent) {
        this.zaa = context;
        this.zab = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.zaa.startActivity(this.zab);
        } catch (ActivityNotFoundException e) {
            Log.e(NPStringFog.decode(new byte[]{119, 85, 82, 86, 23, 17, 86, 84, 120, 90, 3, 6, 80, 73, 87, 95, 0, 43, 86, 92, 68, 86, 23}, "3043ec", -7.859052E8f), NPStringFog.decode(new byte[]{115, 3, 13, 8, 3, 80, 21, 22, 11, 68, 21, 64, 84, 16, 16, 68, 20, 81, 70, 13, 8, 17, 18, 93, 90, 12, 68, 13, 8, 64, 80, 12, 16}, "5bddf4", -1.33441489E9d), e);
        }
    }
}
