package com.google.firebase.database;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DatabaseError {
    public static final int DATA_STALE = -1;
    public static final int DISCONNECTED = -4;
    public static final int EXPIRED_TOKEN = -6;
    public static final int INVALID_TOKEN = -7;
    public static final int MAX_RETRIES = -8;
    public static final int NETWORK_ERROR = -24;
    public static final int OPERATION_FAILED = -2;
    public static final int OVERRIDDEN_BY_SET = -9;
    public static final int PERMISSION_DENIED = -3;
    public static final int UNAVAILABLE = -10;
    public static final int UNKNOWN_ERROR = -999;
    public static final int USER_CODE_EXCEPTION = -11;
    public static final int WRITE_CANCELED = -25;
    private static final Map<String, Integer> errorCodes;
    private static final Map<Integer, String> errorReasons;
    private final int code;
    private final String details;
    private final String message;

    static {
        HashMap map = new HashMap();
        errorReasons = map;
        map.put(-1, NPStringFog.decode(new byte[]{109, 95, 0, 20, 22, 23, 88, 89, 22, 85, 1, 17, 80, 88, 11, 20, 12, 0, 92, 83, 22, 20, 22, 10, 25, 85, 0, 20, 16, 16, 87, 23, 4, 83, 3, 12, 87, 23, 18, 93, 22, 13, 25, 84, 16, 70, 16, 0, 87, 67, 69, 80, 3, 17, 88}, "97e4be", false, false));
        map.put(-2, NPStringFog.decode(new byte[]{55, 93, 0, 17, 17, 3, 17, 67, 0, 67, 66, 15, 13, 81, 12, 82, 3, 18, 6, 81, 69, 69, 10, 7, 23, 21, 17, 89, 11, 21, 67, 90, 21, 84, 16, 7, 23, 92, 10, 95, 66, 0, 2, 92, 9, 84, 6}, "c5e1bf", 7318));
        map.put(-3, NPStringFog.decode(new byte[]{53, 90, 11, 69, 17, 0, 13, 91, 7, 88, 69, 67, 5, 93, 7, 69, 17, 13, 14, 70, 66, 94, 80, 21, 4, 18, 18, 83, 67, 14, 8, 65, 17, 95, 94, 13, 65, 70, 13, 22, 65, 6, 19, 84, 13, 68, 92, 67, 21, 90, 11, 69, 17, 12, 17, 87, 16, 87, 69, 10, 14, 92}, "a2b61c", true));
        map.put(-4, NPStringFog.decode(new byte[]{48, 13, 3, 70, 90, 17, 1, 23, 7, 18, 92, 14, 10, 69, 14, 7, 81, 65, 16, 10, 70, 4, 80, 65, 5, 7, 9, 20, 65, 4, 0, 69, 2, 19, 80, 65, 16, 10, 70, 7, 21, 15, 1, 17, 17, 9, 71, 10, 68, 1, 15, 21, 86, 14, 10, 11, 3, 5, 65}, "deff5a", true));
        map.put(-6, NPStringFog.decode(new byte[]{53, 80, 82, 16, 70, 20, 17, 72, 91, 89, 80, 5, 65, 89, 66, 68, 93, 65, 21, 87, 92, 85, 91, 65, 9, 89, 68, 16, 80, 25, 17, 81, 69, 85, 81}, "a8705a", -9.932229E8f));
        map.put(-7, NPStringFog.decode(new byte[]{108, 91, 81, 21, 70, 16, 72, 67, 88, 92, 80, 1, 24, 82, 65, 65, 93, 69, 76, 92, 95, 80, 91, 69, 79, 82, 71, 21, 92, 11, 78, 82, 88, 92, 81}, "83455e", true));
        map.put(-8, NPStringFog.decode(new byte[]{103, 92, 3, 23, 69, 71, 82, 90, 21, 86, 82, 65, 90, 91, 8, 23, 89, 84, 87, 20, 18, 88, 94, 21, 94, 85, 8, 78, 17, 71, 86, 64, 20, 94, 84, 70}, "34f715", -2.073134163E9d));
        map.put(-9, NPStringFog.decode(new byte[]{55, 14, 85, 68, 71, 68, 2, 8, 67, 5, 80, 66, 10, 9, 94, 68, 68, 87, 16, 70, 95, 18, 86, 68, 17, 15, 84, 0, 86, 88, 67, 4, 73, 68, 82, 22, 16, 19, 82, 23, 86, 71, 22, 3, 94, 16, 19, 69, 6, 18}, "cf0d36", 32415));
        map.put(-10, NPStringFog.decode(new byte[]{98, 95, 1, 20, 71, 92, 68, 65, 13, 87, 81, 25, 95, 68, 68, 65, 90, 88, 64, 86, 13, 88, 85, 91, 90, 82}, "67d449", -9.16815238E8d));
        map.put(-11, NPStringFog.decode(new byte[]{51, 64, 6, 65, 18, 1, 9, 87, 6, 19, 81, 3, 10, 95, 6, 87, 18, 4, 20, 92, 14, 19, 70, 10, 3, 19, 37, 90, 64, 7, 4, 82, 16, 86, 18, 38, 7, 71, 2, 81, 83, 17, 3, 19, 17, 70, 92, 14, 9, 92, 19, 19, 70, 10, 20, 86, 20, 19, 83, 12, 70, 86, 27, 80, 87, 18, 18, 90, 12, 93, 8, 104}, "f3c32b", -2.060744682E9d));
        map.put(-24, NPStringFog.decode(new byte[]{102, 81, 7, 22, 11, 72, 87, 75, 3, 66, 13, 87, 92, 25, 1, 89, 17, 84, 86, 25, 12, 89, 16, 24, 80, 92, 66, 70, 1, 74, 84, 86, 16, 91, 1, 92, 18, 93, 23, 83, 68, 76, 93, 25, 3, 22, 10, 93, 70, 78, 13, 68, 15, 24, 87, 75, 16, 89, 22}, "29b6d8", -301815223L));
        map.put(-25, NPStringFog.decode(new byte[]{97, 12, 4, 25, 69, 67, 92, 16, 4, 25, 69, 80, 70, 68, 2, 88, 92, 82, 80, 8, 4, 93, 18, 83, 76, 68, 21, 81, 87, 17, 64, 23, 4, 75, 28}, "5da921", true));
        map.put(Integer.valueOf(UNKNOWN_ERROR), NPStringFog.decode(new byte[]{117, 92, 70, 22, 91, 8, 90, 93, 17, 13, 21, 6, 70, 64, 9, 17, 21, 12, 87, 81, 19, 17, 71, 6, 80}, "42fc5c", true, false));
        HashMap map2 = new HashMap();
        errorCodes = map2;
        map2.put(NPStringFog.decode(new byte[]{80, 5, 66, 81, 16, 16, 85, 8, 83}, "4d60cd", -1059578932L), -1);
        map2.put(NPStringFog.decode(new byte[]{0, 88, 80, 93, 19, 74, 3}, "f991f8", 5.963388E8f), -2);
        map2.put(NPStringFog.decode(new byte[]{17, 0, 71, 9, 93, 22, 18, 12, 90, 10, 107, 1, 4, 11, 92, 1, 80}, "ae5d4e", 1470675139L), -3);
        map2.put(NPStringFog.decode(new byte[]{84, 89, 75, 80, 90, 11, 94, 85, 91, 71, 80, 1}, "00835e", true, true), -4);
        map2.put(NPStringFog.decode(new byte[]{87, 74, 71, 93, 68, 93, 86, 109, 67, 91, 93, 93, 92}, "227468", 1.2370687E9f), -6);
        map2.put(NPStringFog.decode(new byte[]{13, 13, 16, 0, 84, 15, 0, 60, 18, 14, 83, 3, 10}, "dcfa8f", false), -7);
        map2.put(NPStringFog.decode(new byte[]{90, 84, 75, 75, 6, 64, 69, 92, 86, 74}, "7539c4", -3.7644528E8f), -8);
        map2.put(NPStringFog.decode(new byte[]{93, 70, 85, 66, 23, 15, 86, 84, 85, 94, 7, 31, 65, 85, 68}, "2000ef", -2085183525L), -9);
        map2.put(NPStringFog.decode(new byte[]{16, 11, 81, 70, 86, 8, 9, 4, 82, 92, 82}, "ee007a", 219471294L), -10);
        map2.put(NPStringFog.decode(new byte[]{90, 81, 71, 67, 86, 70, 95, 107, 86, 70, 75, 91, 70}, "443494", -866456799L), -24);
        map2.put(NPStringFog.decode(new byte[]{69, 23, 11, 18, 7, 111, 81, 4, 12, 5, 7, 92, 87, 1}, "2ebfb0", TypedValues.Custom.TYPE_STRING), -25);
    }

    private DatabaseError(int i, String str) {
        this(i, str, null);
    }

    private DatabaseError(int i, String str, String str2) {
        this.code = i;
        this.message = str;
        this.details = str2 == null ? "" : str2;
    }

    public static DatabaseError fromCode(int i) {
        Map<Integer, String> map = errorReasons;
        if (map.containsKey(Integer.valueOf(i))) {
            return new DatabaseError(i, map.get(Integer.valueOf(i)), null);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 88, 21, 7, 15, 95, 1, 22, 37, 15, 17, 83, 7, 87, 16, 3, 67, 114, 4, 66, 2, 4, 2, 69, 0, 22, 6, 20, 17, 89, 23, 22, 0, 9, 7, 83, 95, 22}, "e6cfc6", 1629285346L) + i);
    }

    public static DatabaseError fromException(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return new DatabaseError(-11, errorReasons.get(-11) + stringWriter.toString());
    }

    public static DatabaseError fromStatus(String str) {
        return fromStatus(str, null);
    }

    public static DatabaseError fromStatus(String str, String str2) {
        return fromStatus(str, str2, null);
    }

    public static DatabaseError fromStatus(String str, String str2, String str3) {
        Integer num = errorCodes.get(str.toLowerCase());
        Integer numValueOf = num == null ? Integer.valueOf(UNKNOWN_ERROR) : num;
        return new DatabaseError(numValueOf.intValue(), str2 == null ? errorReasons.get(numValueOf) : str2, str3);
    }

    public int getCode() {
        return this.code;
    }

    public String getDetails() {
        return this.details;
    }

    public String getMessage() {
        return this.message;
    }

    public DatabaseException toException() {
        return new DatabaseException(NPStringFog.decode(new byte[]{118, 93, 75, 93, 87, 5, 67, 81, 25, 124, 84, 16, 81, 86, 88, 75, 80, 68, 85, 70, 75, 87, 71, 94, 16}, "04985d", 756868698L) + this.message);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{34, 3, 16, 84, 0, 86, 21, 7, 33, 71, 16, 88, 20, 88, 68}, "fbd5b7", -1.8113368E9f) + this.message;
    }
}
