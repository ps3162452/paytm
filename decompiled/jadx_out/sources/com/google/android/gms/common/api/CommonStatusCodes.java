package com.google.android.gms.common.api;

import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class CommonStatusCodes {
    public static final int API_NOT_CONNECTED = 17;
    public static final int CANCELED = 16;
    public static final int CONNECTION_SUSPENDED_DURING_CALL = 20;
    public static final int DEVELOPER_ERROR = 10;
    public static final int ERROR = 13;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 14;
    public static final int INVALID_ACCOUNT = 5;
    public static final int NETWORK_ERROR = 7;
    public static final int RECONNECTION_TIMED_OUT = 22;
    public static final int RECONNECTION_TIMED_OUT_DURING_UPDATE = 21;
    public static final int REMOTE_EXCEPTION = 19;
    public static final int RESOLUTION_REQUIRED = 6;

    @Deprecated
    public static final int SERVICE_DISABLED = 3;

    @Deprecated
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int SUCCESS_CACHE = -1;
    public static final int TIMEOUT = 15;

    protected CommonStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        switch (i) {
            case -1:
                return NPStringFog.decode(new byte[]{106, 48, 32, 123, 117, 103, 106, 58, 32, 121, 115, 124, 124}, "9ec804", 9.91644516E8d);
            case 0:
                return NPStringFog.decode(new byte[]{100, 102, 116, 113, 113, 107, 100}, "737248", true);
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return NPStringFog.decode(new byte[]{22, 86, 90, 92, 95, 68, 13, 24, 66, 70, 81, 71, 22, 75, 17, 81, 95, 87, 6, 2, 17}, "c81203", -1.3200288E9f) + i;
            case 2:
                return NPStringFog.decode(new byte[]{101, 112, 54, 50, 120, 32, 115, 106, 50, 33, 99, 48, 127, 122, 42, 59, 100, 51, 114, 116, 48, 33, 110, 49, 115, 100, 49, 45, 99, 38, 114}, "65dd1c", -45940798L);
            case 3:
                return NPStringFog.decode(new byte[]{55, 32, 97, 98, 124, 113, 33, 58, 119, 125, 102, 115, 38, 41, 118, 112}, "de3452", true, false);
            case 4:
                return NPStringFog.decode(new byte[]{55, 127, 114, 42, 104, 112, 42, 105, 103, 33, 102, 108, 45, 100, 112, 32}, "d65d79", true, false);
            case 5:
                return NPStringFog.decode(new byte[]{112, 45, 50, 121, 120, 42, 125, 60, 37, 123, 119, 44, 108, 45, 48}, "9cd84c", -2010412369L);
            case 6:
                return NPStringFog.decode(new byte[]{101, 39, 96, 44, 45, 51, 99, 43, 124, 45, 62, 52, 114, 51, 102, 42, 51, 35, 115}, "7b3caf", 1.133373E9f);
            case 7:
                return NPStringFog.decode(new byte[]{44, 124, 48, 101, 122, 100, 41, 102, 33, 96, 103, 121, 48}, "b9d256", -1.568126719E9d);
            case 8:
                return NPStringFog.decode(new byte[]{121, 125, 98, 112, 55, 118, 113, 127, 105, 112, 55, 106, 127, 97}, "0365e8", -1841700725L);
            case 10:
                return NPStringFog.decode(new byte[]{112, 35, 101, 125, 120, 46, 100, 35, 97, 103, 113, 51, 102, 41, 97}, "4f384a", true);
            case 13:
                return NPStringFog.decode(new byte[]{115, 106, 54, 44, 101}, "68dc7b", 9104);
            case 14:
                return NPStringFog.decode(new byte[]{126, 42, 50, 124, 51, 54, 98, 52, 50, 124, 37}, "7df9ad", 2079834147L);
            case 15:
                return NPStringFog.decode(new byte[]{49, 127, 125, 113, 127, 99, 49}, "e60406", true, true);
            case 16:
                return NPStringFog.decode(new byte[]{113, 114, 126, 32, 125, 116, 119, 119}, "230c88", false, true);
            case 17:
                return NPStringFog.decode(new byte[]{120, 104, 122, 57, 126, 121, 109, 103, 112, 41, 126, 120, 124, 123, 103, 35, 116}, "983f06", true, false);
            case 18:
                return NPStringFog.decode(new byte[]{33, 116, 118, 119, 62, 113, 41, 120, 114, 125, 53}, "e173a2", true, false);
            case 19:
                return NPStringFog.decode(new byte[]{106, 36, 47, 125, 49, 114, 103, 36, 58, 113, 32, 103, 108, 40, 45, 124}, "8ab2e7", 2.37789983E8d);
            case 20:
                return NPStringFog.decode(new byte[]{122, 120, 120, 40, 113, 39, 109, 126, 121, 40, 107, 55, 108, 100, 102, 35, 122, 32, 124, 115, 105, 34, 97, 54, 112, 121, 113, 57, 119, 37, 117, 123}, "976f4d", true);
            case 21:
                return NPStringFog.decode(new byte[]{55, 114, 39, 42, 119, 40, 32, 116, 48, 44, 118, 40, 58, 99, 45, 40, 124, 34, 58, 120, 49, 49, 102, 34, 48, 101, 45, 43, 126, 57, 48, 103, 32, 36, 109, 35}, "e7de9f", 324479767L);
            case 22:
                return NPStringFog.decode(new byte[]{97, 114, 38, 127, 121, 127, 118, 116, 49, 121, 120, 127, 108, 99, 44, 125, 114, 117, 108, 120, 48, 100}, "37e071", true);
        }
    }
}
