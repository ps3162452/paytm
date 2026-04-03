package com.google.android.gms.common.moduleinstall;

import com.google.android.gms.common.api.CommonStatusCodes;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class ModuleInstallStatusCodes extends CommonStatusCodes {
    public static final int INSUFFICIENT_STORAGE = 46003;
    public static final int MODULE_NOT_FOUND = 46002;
    public static final int NOT_ALLOWED_MODULE = 46001;
    public static final int SUCCESS = 0;
    public static final int UNKNOWN_MODULE = 46000;

    private ModuleInstallStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        switch (i) {
            case UNKNOWN_MODULE /* 46000 */:
                return NPStringFog.decode(new byte[]{100, 121, 45, 43, 121, 102, 127, 104, 43, 42, 114, 100, 125, 114}, "17fe61", -1.61066542E8d);
            case NOT_ALLOWED_MODULE /* 46001 */:
                return NPStringFog.decode(new byte[]{118, 46, 50, 103, 39, 47, 116, 46, 49, 125, 34, 60, 117, 46, 34, 109, 42, 38}, "8af8fc", 8.12464041E8d);
            case MODULE_NOT_FOUND /* 46002 */:
                return NPStringFog.decode(new byte[]{124, 125, 119, 109, 125, 118, 110, 124, 124, 108, 110, 117, 126, 103, 125, 124}, "123813", 2.78441567E8d);
            case INSUFFICIENT_STORAGE /* 46003 */:
                return NPStringFog.decode(new byte[]{44, 127, 102, 109, 36, 112, 44, 114, 124, 125, 44, 98, 58, 98, 97, 119, 48, 119, 34, 116}, "e158b6", 23134);
            default:
                return CommonStatusCodes.getStatusCodeString(i);
        }
    }
}
