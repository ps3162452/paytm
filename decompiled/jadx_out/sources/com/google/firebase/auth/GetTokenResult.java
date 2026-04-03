package com.google.firebase.auth;

import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.annotations.PublicApi;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes58.dex */
@PublicApi
public class GetTokenResult {
    private String zza;
    private Map<String, Object> zzb;

    @KeepForSdk
    public GetTokenResult(String str, Map<String, Object> map) {
        this.zza = str;
        this.zzb = map;
    }

    private final long zza(String str) {
        Integer num = (Integer) this.zzb.get(str);
        if (num == null) {
            return 0L;
        }
        return num.longValue();
    }

    @PublicApi
    public long getAuthTimestamp() {
        return zza(NPStringFog.decode(new byte[]{82, 20, 68, 94, 103, 71, 90, 12, 85}, "3a0683", false, true));
    }

    @PublicApi
    public Map<String, Object> getClaims() {
        return this.zzb;
    }

    @PublicApi
    public long getExpirationTimestamp() {
        return zza(NPStringFog.decode(new byte[]{0, 76, 65}, "e41069", false));
    }

    @PublicApi
    public long getIssuedAtTimestamp() {
        return zza(NPStringFog.decode(new byte[]{89, 81, 64}, "00401a", 1.7087037E9f));
    }

    @Nullable
    @PublicApi
    public String getSignInProvider() {
        Map map = (Map) this.zzb.get(NPStringFog.decode(new byte[]{2, 95, 69, 83, 83, 80, 23, 83}, "d67611", 5.3182787E8f));
        if (map != null) {
            return (String) map.get(NPStringFog.decode(new byte[]{69, 94, 2, 8, 108, 13, 88, 104, 21, 20, 92, 18, 95, 83, 0, 20}, "67ef3d", true, false));
        }
        return null;
    }

    @Nullable
    @PublicApi
    public String getToken() {
        return this.zza;
    }
}
