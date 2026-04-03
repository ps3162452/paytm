package org.apache.http.protocol;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface HttpContext {
    public static final String RESERVED_PREFIX = NPStringFog.decode(new byte[]{11, 69, 76, 67, 75}, "c183ef", true);

    Object getAttribute(String str);

    Object removeAttribute(String str);

    void setAttribute(String str, Object obj);
}
