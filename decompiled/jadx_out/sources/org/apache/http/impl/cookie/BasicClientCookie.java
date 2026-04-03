package org.apache.http.impl.cookie;

import java.util.Date;
import n.NPStringFog;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicClientCookie implements SetCookie, ClientCookie {
    public BasicClientCookie(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 64, 3, 21}, "bb5a41", false, true));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 77, 0, 24}, "578b97", -11694));
    }

    @Override // org.apache.http.cookie.ClientCookie
    public boolean containsAttribute(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 19, 6, 68}, "96fde0", 3.24660767E8d));
    }

    @Override // org.apache.http.cookie.ClientCookie
    public String getAttribute(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 65, 91, 24}, "6f4991", 31785));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getComment() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 64, 71, 7, 19}, "d42e29", 1.799952333E9d));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getCommentURL() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 66, 65, 4, 66}, "e64fca", 355213150L));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getDomain() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 71, 0, 16}, "cb2b1f", true, true));
    }

    @Override // org.apache.http.cookie.Cookie
    public Date getExpiryDate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 16, 6, 21}, "77ed45", 26630));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 23, 90, 16}, "40b81d", -26673));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getPath() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 23, 82, 71}, "16b0f3", -592189230L));
    }

    @Override // org.apache.http.cookie.Cookie
    public int[] getPorts() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 64, 3, 66}, "ef5acc", 1166708787L));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getValue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 76, 80, 64}, "6192a9", -21638));
    }

    @Override // org.apache.http.cookie.Cookie
    public int getVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 17, 90, 17}, "4dd806", -29087));
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isExpired(Date date) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 68, 86, 23}, "83146c", -2.107076088E9d));
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isPersistent() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 77, 84, 71}, "4386f8", false, false));
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isSecure() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 70, 7, 16}, "ea3e12", 2.0325526E9f));
    }

    public void setAttribute(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 71, 90, 71}, "c628f6", -1438895724L));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setComment(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 17, 16, 82, 66}, "fee0cf", -188237373L));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setDomain(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 18, 20, 84, 64}, "ffa6a0", -30306));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setExpiryDate(Date date) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 18, 16, 3, 67}, "ffeab7", 907322368L));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setPath(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 66, 3, 21}, "7f7a47", 1148788743L));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setSecure(boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 66, 16, 0, 18}, "56eb3a", true, true));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setValue(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 22, 16, 0, 21}, "abeb46", false));
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setVersion(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 68, 16, 87, 16}, "60e512", 1.947850759E9d));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 69, 65, 83, 67}, "a141b8", true));
    }
}
