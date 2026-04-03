package org.apache.http.impl.cookie;

import java.util.Date;
import n.NPStringFog;
import org.apache.http.cookie.SetCookie2;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicClientCookie2 extends BasicClientCookie implements SetCookie2 {
    public BasicClientCookie2(String str, String str2) {
        super((String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 16, 1, 68}, "acece8", 1.0937331E9f));
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie
    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 64, 7, 69}, "1a5ed2", false));
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie, org.apache.http.cookie.Cookie
    public String getCommentURL() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 64, 71, 80, 66}, "d422c5", -1.8352425E9f));
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie, org.apache.http.cookie.Cookie
    public int[] getPorts() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 23, 3, 64}, "bfbaa5", false));
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie, org.apache.http.cookie.Cookie
    public boolean isExpired(Date date) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 22, 4, 23}, "80cf65", 2.0583302E9f));
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie, org.apache.http.cookie.Cookie
    public boolean isPersistent() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 66, 1, 22}, "207c71", 801480029L));
    }

    @Override // org.apache.http.cookie.SetCookie2
    public void setCommentURL(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 69, 65, 4, 18}, "e14f35", -7.13158845E8d));
    }

    @Override // org.apache.http.cookie.SetCookie2
    public void setDiscard(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 68, 23, 0, 21}, "10bb47", -1.0110166E9f));
    }

    @Override // org.apache.http.cookie.SetCookie2
    public void setPorts(int[] iArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 76, 87, 71}, "3c95f1", -6.8118944E8f));
    }
}
