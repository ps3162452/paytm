package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zabj {
    private static final ExecutorService zaa = com.google.android.gms.internal.base.zat.zaa().zac(2, new NumberedThreadFactory(NPStringFog.decode(new byte[]{37, 34, 115, 105, 38, 74, 7, 0, 69, 66, 12, 64}, "bc06c2", false)), 2);

    public static ExecutorService zaa() {
        return zaa;
    }
}
