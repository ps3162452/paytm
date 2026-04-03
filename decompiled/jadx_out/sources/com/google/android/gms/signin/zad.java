package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zad {
    public static final Api.ClientKey zaa;
    public static final Api.ClientKey zab;
    public static final Api.AbstractClientBuilder zac;
    static final Api.AbstractClientBuilder zad;
    public static final Scope zae;
    public static final Scope zaf;
    public static final Api zag;
    public static final Api zah;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zaa = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zab = clientKey2;
        zaa zaaVar = new zaa();
        zac = zaaVar;
        zab zabVar = new zab();
        zad = zabVar;
        zae = new Scope(NPStringFog.decode(new byte[]{71, 69, 94, 86, 88, 13, 82}, "77101a", -29162));
        zaf = new Scope(NPStringFog.decode(new byte[]{92, 9, 84, 10, 84}, "9d5c81", 7599));
        zag = new Api(NPStringFog.decode(new byte[]{97, 93, 85, 92, 112, 89, 28, 117, 98, 123}, "242297", -9.394119E7f), zaaVar, clientKey);
        zah = new Api(NPStringFog.decode(new byte[]{100, 11, 83, 89, 44, 13, 25, 43, 122, 99, 32, 49, 121, 35, 120, 104, 36, 51, 126}, "7b47ec", -2.35929826E8d), zabVar, clientKey2);
    }
}
