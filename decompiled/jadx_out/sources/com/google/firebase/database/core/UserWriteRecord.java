package com.google.firebase.database.core;

import com.google.firebase.database.snapshot.Node;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class UserWriteRecord {
    private final CompoundWrite merge;
    private final Node overwrite;
    private final Path path;
    private final boolean visible;
    private final long writeId;

    public UserWriteRecord(long j, Path path, CompoundWrite compoundWrite) {
        this.writeId = j;
        this.path = path;
        this.overwrite = null;
        this.merge = compoundWrite;
        this.visible = true;
    }

    public UserWriteRecord(long j, Path path, Node node, boolean z) {
        this.writeId = j;
        this.path = path;
        this.overwrite = node;
        this.merge = null;
        this.visible = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UserWriteRecord userWriteRecord = (UserWriteRecord) obj;
        if (this.writeId == userWriteRecord.writeId && this.path.equals(userWriteRecord.path) && this.visible == userWriteRecord.visible) {
            Node node = this.overwrite;
            if (node == null ? userWriteRecord.overwrite != null : !node.equals(userWriteRecord.overwrite)) {
                return false;
            }
            CompoundWrite compoundWrite = this.merge;
            if (compoundWrite != null) {
                if (compoundWrite.equals(userWriteRecord.merge)) {
                    return true;
                }
            } else if (userWriteRecord.merge == null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public CompoundWrite getMerge() {
        CompoundWrite compoundWrite = this.merge;
        if (compoundWrite != null) {
            return compoundWrite;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 2, 13, 68, 77, 16, 5, 0, 0, 6, 74, 67, 68, 14, 6, 17, 94, 85, 68, 20, 11, 6, 87, 16, 19, 17, 10, 23, 92, 16, 13, 16, 67, 2, 87, 16, 11, 21, 6, 17, 78, 66, 13, 23, 6, 66}, "dccc90", true));
    }

    public Node getOverwrite() {
        Node node = this.overwrite;
        if (node != null) {
            return node;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{32, 88, 95, 68, 23, 66, 2, 90, 82, 6, 16, 17, 67, 86, 71, 6, 17, 21, 17, 80, 69, 6, 67, 21, 11, 92, 95, 67, 20, 16, 10, 77, 84, 67, 10, 17, 67, 88, 17, 14, 6, 16, 4, 92, 16}, "c91ccb", -5.47371186E8d));
    }

    public Path getPath() {
        return this.path;
    }

    public long getWriteId() {
        return this.writeId;
    }

    public int hashCode() {
        int iHashCode = Long.valueOf(this.writeId).hashCode();
        int iHashCode2 = Boolean.valueOf(this.visible).hashCode();
        int iHashCode3 = this.path.hashCode();
        Node node = this.overwrite;
        int iHashCode4 = node != null ? node.hashCode() : 0;
        CompoundWrite compoundWrite = this.merge;
        return ((iHashCode4 + (((((iHashCode * 31) + iHashCode2) * 31) + iHashCode3) * 31)) * 31) + (compoundWrite != null ? compoundWrite.hashCode() : 0);
    }

    public boolean isMerge() {
        return this.merge != null;
    }

    public boolean isOverwrite() {
        return this.overwrite != null;
    }

    public boolean isVisible() {
        return this.visible;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{100, 67, 1, 17, 110, 74, 88, 68, 1, 49, 92, 91, 94, 66, 0, 24, 80, 92, 12}, "10dc98", true, false) + this.writeId + NPStringFog.decode(new byte[]{21, 73, 87, 18, 10, 8}, "596fb5", true, true) + this.path + NPStringFog.decode(new byte[]{69, 78, 80, 70, 13, 87, 9, 93, 4}, "e895d5", true, true) + this.visible + NPStringFog.decode(new byte[]{23, 13, 67, 81, 17, 69, 69, 11, 65, 81, 94}, "7b54c2", -1.0962488E9f) + this.overwrite + NPStringFog.decode(new byte[]{66, 8, 1, 64, 85, 6, 95}, "bed22c", -25157) + this.merge + NPStringFog.decode(new byte[]{74}, "724069", 1.06278162E8d);
    }
}
