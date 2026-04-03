package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class StringResourceValueReader {
    private final Resources zza;
    private final String zzb;

    public StringResourceValueReader(Context context) {
        Preconditions.checkNotNull(context);
        Resources resources = context.getResources();
        this.zza = resources;
        this.zzb = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public String getString(String str) {
        int identifier = this.zza.getIdentifier(str, NPStringFog.decode(new byte[]{21, 68, 67, 90, 87, 4}, "f0139c", -3.582058E7f), this.zzb);
        if (identifier == 0) {
            return null;
        }
        return this.zza.getString(identifier);
    }
}
