package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.Api;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class Common {
    public static final Api<Api.ApiOptions.NoOptions> API;
    public static final Api.ClientKey<zah> CLIENT_KEY;
    public static final zae zaa;
    private static final Api.AbstractClientBuilder zab;

    static {
        Api.ClientKey<zah> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        zab zabVar = new zab();
        zab = zabVar;
        API = new Api<>(NPStringFog.decode(new byte[]{39, 14, 88, 9, 91, 93, 74, 32, 101, 45}, "da5d43", -1.991859095E9d), zabVar, clientKey);
        zaa = new zae();
    }
}
