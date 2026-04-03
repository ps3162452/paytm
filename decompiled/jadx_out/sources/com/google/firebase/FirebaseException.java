package com.google.firebase;

import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class FirebaseException extends Exception {
    @Deprecated
    protected FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str) {
        super(str);
        Preconditions.checkNotEmpty(str, NPStringFog.decode(new byte[]{34, 82, 64, 83, 95, 85, 70, 90, 81, 65, 69, 88, 1, 82, 20, 95, 67, 74, 18, 23, 90, 93, 66, 25, 4, 82, 20, 87, 91, 73, 18, 78}, "f74269", true, false));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str, Throwable th) {
        super(str, th);
        Preconditions.checkNotEmpty(str, NPStringFog.decode(new byte[]{119, 80, 68, 85, 93, 92, 19, 88, 85, 71, 71, 81, 84, 80, 16, 89, 65, 67, 71, 21, 94, 91, 64, 16, 81, 80, 16, 81, 89, 64, 71, 76}, "350440", -303087411L));
    }
}
