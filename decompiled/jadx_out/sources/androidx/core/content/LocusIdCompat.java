package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.core.util.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class LocusIdCompat {
    private final String mId;
    private final LocusId mWrapped;

    private static class Api29Impl {
        private Api29Impl() {
        }

        static LocusId create(String str) {
            return new LocusId(str);
        }

        static String getId(LocusId locusId) {
            return locusId.getId();
        }
    }

    public LocusIdCompat(String str) {
        this.mId = (String) Preconditions.checkStringNotEmpty(str, NPStringFog.decode(new byte[]{15, 1, 66, 2, 7, 10, 8, 10, 22, 65, 4, 1, 70, 0, 15, 17, 18, 29}, "febafd", true, false));
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped = Api29Impl.create(str);
        } else {
            this.mWrapped = null;
        }
    }

    private String getSanitizedId() {
        return this.mId.length() + NPStringFog.decode(new byte[]{58, 85, 94, 82, 75, 71}, "e66394", 20612);
    }

    public static LocusIdCompat toLocusIdCompat(LocusId locusId) {
        Preconditions.checkNotNull(locusId, NPStringFog.decode(new byte[]{89, 91, 7, 68, 16, 47, 81, 20, 7, 80, 13, 8, 90, 64, 68, 83, 6, 70, 91, 65, 8, 93}, "54d1cf", -1.732943697E9d));
        return new LocusIdCompat((String) Preconditions.checkStringNotEmpty(Api29Impl.getId(locusId), NPStringFog.decode(new byte[]{80, 1, 17, 1, 5, 10, 87, 10, 69, 66, 6, 1, 25, 0, 92, 18, 16, 29}, "9e1bdd", 6.85005782E8d)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LocusIdCompat locusIdCompat = (LocusIdCompat) obj;
            String str = this.mId;
            return str == null ? locusIdCompat.mId == null : str.equals(locusIdCompat.mId);
        }
        return false;
    }

    public String getId() {
        return this.mId;
    }

    public int hashCode() {
        String str = this.mId;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public LocusId toLocusId() {
        return this.mWrapped;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{120, 89, 0, 64, 23, 45, 80, 117, 12, 88, 20, 5, 64, 109}, "46c5dd", false) + getSanitizedId() + NPStringFog.decode(new byte[]{105}, "458c2b", 383599884L);
    }
}
