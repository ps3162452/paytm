package com.google.android.gms.common.internal;

import java.util.concurrent.ConcurrentHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@Deprecated
public class LibraryVersion {
    private static final GmsLogger zza = new GmsLogger(NPStringFog.decode(new byte[]{122, 93, 7, 16, 89, 20, 79, 98, 0, 16, 75, 15, 89, 90}, "64eb8f", 1.307596781E9d), "");
    private static final LibraryVersion zzb = new LibraryVersion();
    private final ConcurrentHashMap zzc = new ConcurrentHashMap();

    protected LibraryVersion() {
    }

    public static LibraryVersion getInstance() {
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0110  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getVersion(java.lang.String r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.LibraryVersion.getVersion(java.lang.String):java.lang.String");
    }
}
