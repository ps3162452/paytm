package androidx.core.graphics;

import android.graphics.PointF;
import androidx.core.util.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class PathSegment {
    private final PointF mEnd;
    private final float mEndFraction;
    private final PointF mStart;
    private final float mStartFraction;

    public PathSegment(PointF pointF, float f, PointF pointF2, float f2) {
        this.mStart = (PointF) Preconditions.checkNotNull(pointF, NPStringFog.decode(new byte[]{70, 17, 0, 75, 70, 18, 8, 88, 65, 87, 71, 94, 89}, "5ea922", true));
        this.mStartFraction = f;
        this.mEnd = (PointF) Preconditions.checkNotNull(pointF2, NPStringFog.decode(new byte[]{4, 89, 86, 68, 88, 91, 65, 89, 71, 8, 9}, "a72def", 4.86980208E8d));
        this.mEndFraction = f2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        return Float.compare(this.mStartFraction, pathSegment.mStartFraction) == 0 && Float.compare(this.mEndFraction, pathSegment.mEndFraction) == 0 && this.mStart.equals(pathSegment.mStart) && this.mEnd.equals(pathSegment.mEnd);
    }

    public PointF getEnd() {
        return this.mEnd;
    }

    public float getEndFraction() {
        return this.mEndFraction;
    }

    public PointF getStart() {
        return this.mStart;
    }

    public float getStartFraction() {
        return this.mStartFraction;
    }

    public int hashCode() {
        int iHashCode = this.mStart.hashCode();
        float f = this.mStartFraction;
        int iFloatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        int iHashCode2 = this.mEnd.hashCode();
        float f2 = this.mEndFraction;
        return ((((iFloatToIntBits + (iHashCode * 31)) * 31) + iHashCode2) * 31) + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{54, 2, 65, 93, 97, 1, 1, 14, 80, 91, 70, 31, 21, 23, 84, 71, 70, 89}, "fc552d", 1.502333416E9d) + this.mStart + NPStringFog.decode(new byte[]{27, 65, 23, 65, 82, 65, 67, 39, 22, 84, 80, 71, 94, 14, 10, 8}, "7ad533", -6.80054114E8d) + this.mStartFraction + NPStringFog.decode(new byte[]{74, 24, 1, 90, 86, 88}, "f8d42e", true, true) + this.mEnd + NPStringFog.decode(new byte[]{77, 19, 81, 94, 2, 127, 19, 82, 87, 68, 15, 86, 15, 14}, "a340f9", true, true) + this.mEndFraction + '}';
    }
}
