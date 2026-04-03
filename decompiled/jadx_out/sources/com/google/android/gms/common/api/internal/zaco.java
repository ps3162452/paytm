package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaco {
    private static final ExecutorService zaa = com.google.android.gms.internal.base.zat.zaa().zaa(new NumberedThreadFactory(NPStringFog.decode(new byte[]{36, 39, 119, 109, 50, 75, 2, 8, 71, 84, 9, 75, 14}, "cf42f9", 8778)), 1);

    public static ExecutorService zaa() {
        return zaa;
    }
}
