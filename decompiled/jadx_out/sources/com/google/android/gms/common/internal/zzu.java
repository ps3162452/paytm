package com.google.android.gms.common.internal;

import android.net.Uri;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzu {
    private static final Uri zza;
    private static final Uri zzb;

    static {
        Uri uri = Uri.parse(NPStringFog.decode(new byte[]{90, 18, 23, 20, 16, 9, 29, 73, 19, 8, 22, 64, 28, 1, 12, 11, 4, 95, 87, 72, 0, 11, 14, 28}, "2fcdc3", -7.3609652E7d));
        zza = uri;
        zzb = uri.buildUpon().appendPath(NPStringFog.decode(new byte[]{90, 12, 22, 91, 89, 81, 74}, "9ed854", true, true)).appendPath(NPStringFog.decode(new byte[]{7, 8, 89, 0}, "aa7daa", -1.8779031E9f)).build();
    }
}
