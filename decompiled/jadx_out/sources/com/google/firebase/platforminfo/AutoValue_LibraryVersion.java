package com.google.firebase.platforminfo;

import javax.annotation.Nonnull;
import n.NPStringFog;

/* JADX INFO: loaded from: classes53.dex */
final class AutoValue_LibraryVersion extends LibraryVersion {
    private final String libraryName;
    private final String version;

    AutoValue_LibraryVersion(String str, String str2) {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{47, 17, 84, 8, 66, 85, 8, 6, 74, 5, 16, 64, 47, 5, 85, 1}, "ad8db9", false));
        }
        this.libraryName = str;
        if (str2 == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{125, 23, 85, 9, 22, 19, 86, 16, 74, 12, 89, 11}, "3b9e6e", -13573));
        }
        this.version = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LibraryVersion)) {
            return false;
        }
        LibraryVersion libraryVersion = (LibraryVersion) obj;
        return this.libraryName.equals(libraryVersion.getLibraryName()) && this.version.equals(libraryVersion.getVersion());
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    @Nonnull
    public String getLibraryName() {
        return this.libraryName;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    @Nonnull
    public String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return ((this.libraryName.hashCode() ^ 1000003) * 1000003) ^ this.version.hashCode();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{116, 8, 84, 17, 82, 23, 65, 55, 83, 17, 64, 12, 87, 15, 77, 15, 90, 7, 74, 0, 68, 26, 125, 4, 85, 4, 11}, "8a6c3e", true) + this.libraryName + NPStringFog.decode(new byte[]{27, 21, 70, 93, 65, 70, 94, 90, 94, 5}, "750835", true, false) + this.version + NPStringFog.decode(new byte[]{68}, "95836d", false, false);
    }
}
