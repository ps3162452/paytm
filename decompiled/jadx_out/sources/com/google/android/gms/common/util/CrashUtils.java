package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class CrashUtils {
    private static final String[] zza = {NPStringFog.decode(new byte[]{88, 91, 84, 64, 13, 89, 93, 27}, "9502b0", -1.601242717E9d), NPStringFog.decode(new byte[]{91, 12, 15, 76, 4, 90, 92, 17, 13, 11, 1, 26}, "8cbbe4", 28334285L), NPStringFog.decode(new byte[]{83, 89, 93, 18, 90, 89, 25}, "781d32", 1.979464072E9d), NPStringFog.decode(new byte[]{91, 85, 71, 80, 28}, "141125", 9864), NPStringFog.decode(new byte[]{8, 86, 21, 83, 75, 29}, "b7c233", -1779066334L)};

    @ResultIgnorabilityUnspecified
    public static boolean addDynamiteErrorToDropBox(Context context, Throwable th) {
        try {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(th);
            return false;
        } catch (Exception e) {
            Log.e(NPStringFog.decode(new byte[]{37, 16, 87, 65, 10, 103, 18, 11, 90, 65}, "fb62b2", -7568), NPStringFog.decode(new byte[]{114, 22, 23, 91, 69, 66, 86, 0, 1, 93, 89, 5, 23, 1, 29, 87, 82, 18, 67, 13, 10, 90, 23, 22, 88, 68, 33, 70, 88, 18, 117, 11, 29, 21}, "7de47b", 1979048895L), e);
            return false;
        }
    }
}
