package com.google.firebase.database.core;

import java.net.URI;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class RepoInfo {
    private static final String LAST_SESSION_ID_PARAM = NPStringFog.decode(new byte[]{90, 66}, "611ca9", -1.709288188E9d);
    private static final String VERSION_PARAM = NPStringFog.decode(new byte[]{19}, "e72991", 469569451L);
    public String host;
    public String internalHost;
    public String namespace;
    public boolean secure;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RepoInfo repoInfo = (RepoInfo) obj;
        if (this.secure == repoInfo.secure && this.host.equals(repoInfo.host)) {
            return this.namespace.equals(repoInfo.namespace);
        }
        return false;
    }

    public URI getConnectionURL(String str) {
        String str2 = (this.secure ? NPStringFog.decode(new byte[]{17, 70, 16}, "f5cebe", true) : NPStringFog.decode(new byte[]{79, 74}, "896420", 1716037188L)) + NPStringFog.decode(new byte[]{13, 22, 23}, "798e7a", false) + this.internalHost + NPStringFog.decode(new byte[]{25, 30, 21, 70, 10, 93, 69, 13}, "60b553", 415204116L) + this.namespace + NPStringFog.decode(new byte[]{22}, "09b6ba", 1030118261L) + VERSION_PARAM + NPStringFog.decode(new byte[]{91}, "f5db8e", false) + NPStringFog.decode(new byte[]{84}, "a43b4a", 1.103929036E9d);
        if (str != null) {
            str2 = str2 + NPStringFog.decode(new byte[]{30, 85, 69, 11}, "89669c", true) + str;
        }
        return URI.create(str2);
    }

    public int hashCode() {
        return (((this.host.hashCode() * 31) + (this.secure ? 1 : 0)) * 31) + this.namespace.hashCode();
    }

    public boolean isCacheableHost() {
        return this.internalHost.startsWith(NPStringFog.decode(new byte[]{75, 78}, "8c0816", 1.367756333E9d));
    }

    public boolean isCustomHost() {
        return (this.host.contains(NPStringFog.decode(new byte[]{77, 83, 89, 69, 85, 6, 2, 70, 85, 94, 95, 74, 0, 90, 93}, "c5070d", -2.0939455E9f)) || this.host.contains(NPStringFog.decode(new byte[]{27, 2, 13, 67, 84, 3, 84, 23, 1, 88, 94, 76, 81, 1, 9, 94, 31, 2, 90, 9}, "5dd11a", false))) ? false : true;
    }

    public boolean isDemoHost() {
        return this.host.contains(NPStringFog.decode(new byte[]{23, 87, 15, 70, 83, 86, 88, 66, 3, 93, 89, 25, 93, 84, 11, 91, 24, 87, 86, 92}, "91f464", 7341));
    }

    public boolean isSecure() {
        return this.secure;
    }

    public String toDebugString() {
        return NPStringFog.decode(new byte[]{17, 88, 11, 21, 69, 12}, "90df11", false, true) + this.host + NPStringFog.decode(new byte[]{28, 17, 64, 4, 83, 20, 66, 84, 14}, "013a0a", 4.89307906E8d) + this.secure + NPStringFog.decode(new byte[]{28, 25, 8, 64, 9}, "09f34f", false, false) + this.namespace + NPStringFog.decode(new byte[]{70, 81, 13, 22, 6, 17, 8, 89, 15, 95}, "f8cbcc", -1930979457L) + this.internalHost + NPStringFog.decode(new byte[]{26}, "3cbd38", 1.6448934E9f);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{12, 70, 68, 65}, "d2014b", 13336) + (this.secure ? NPStringFog.decode(new byte[]{66}, "1a288c", 5.42539164E8d) : "") + NPStringFog.decode(new byte[]{10, 75, 26}, "0d5d23", 6.17559693E8d) + this.host;
    }
}
