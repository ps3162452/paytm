package com.google.android.gms.common.util;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class ScopeUtil {
    private ScopeUtil() {
    }

    public static String[] toScopeString(Set<Scope> set) {
        Preconditions.checkNotNull(set, NPStringFog.decode(new byte[]{69, 80, 10, 69, 87, 22, 22, 80, 4, 91, 21, 17, 22, 81, 0, 21, 92, 16, 90, 95, 75}, "63e52e", -5.57887573E8d));
        Scope[] scopeArr = (Scope[]) set.toArray(new Scope[set.size()]);
        Preconditions.checkNotNull(scopeArr, NPStringFog.decode(new byte[]{22, 81, 87, 22, 87, 18, 69, 81, 89, 8, 21, 21, 69, 80, 93, 70, 92, 20, 9, 94, 22}, "e28f2a", -1.935427868E9d));
        String[] strArr = new String[scopeArr.length];
        for (int i = 0; i < scopeArr.length; i++) {
            strArr[i] = scopeArr[i].getScopeUri();
        }
        return strArr;
    }
}
