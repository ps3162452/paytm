package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes51.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.ARC_MOTION);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{15, 13, 10, 10, 12, 67, 15, 50, 1, 17, 21, 95, 1, 5, 8, 34, 15, 81, 14, 1}, "bddca6", -10781), 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{11, 11, 92, 13, 94, 71, 11, 42, 93, 22, 90, 72, 9, 12, 70, 5, 95, 115, 8, 5, 94, 1}, "fb2d32", -1011572667L), 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{91, 88, 64, 91, 85, 70, 91, 120, 86, 85, 84, 86}, "698283", -32233), 2, DEFAULT_MAX_ANGLE_DEGREES));
        typedArrayObtainStyledAttributes.recycle();
    }

    private static float toTangent(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 75, 2, 24, 91, 23, 64, 77, 65, 90, 83, 66, 81, 92, 21, 79, 83, 7, 93, 25, 81, 24, 87, 12, 87, 25, 88, 8, 22, 6, 86, 94, 19, 93, 83, 17}, "39a86b", true, true));
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        Path path = new Path();
        path.moveTo(f, f2);
        float f10 = f3 - f;
        float f11 = f4 - f2;
        float f12 = (f11 * f11) + (f10 * f10);
        float f13 = (f + f3) / 2.0f;
        float f14 = (f2 + f4) / 2.0f;
        float f15 = f12 * 0.25f;
        boolean z = f2 > f4;
        if (Math.abs(f10) < Math.abs(f11)) {
            float fAbs = Math.abs(f12 / (2.0f * f11));
            if (z) {
                f6 = f4 + fAbs;
                f9 = f3;
            } else {
                f6 = f2 + fAbs;
                f9 = f;
            }
            f5 = f9;
            f7 = this.mMinimumVerticalTangent * f15 * this.mMinimumVerticalTangent;
        } else {
            float f16 = f12 / (f10 * 2.0f);
            if (z) {
                f5 = f + f16;
                f6 = f2;
            } else {
                f5 = f3 - f16;
                f6 = f4;
            }
            f7 = this.mMinimumHorizontalTangent * f15 * this.mMinimumHorizontalTangent;
        }
        float f17 = f13 - f5;
        float f18 = f14 - f6;
        float f19 = (f18 * f18) + (f17 * f17);
        float f20 = this.mMaximumTangent * f15 * this.mMaximumTangent;
        if (f19 >= f7) {
            f7 = f19 > f20 ? f20 : 0.0f;
        }
        if (f7 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f7 / f19);
            f5 = ((f5 - f13) * fSqrt) + f13;
            f8 = ((f6 - f14) * fSqrt) + f14;
        } else {
            f8 = f6;
        }
        path.cubicTo((f + f5) / 2.0f, (f2 + f8) / 2.0f, (f5 + f3) / 2.0f, (f8 + f4) / 2.0f, f3, f4);
        return path;
    }

    public void setMaximumAngle(float f) {
        this.mMaximumAngle = f;
        this.mMaximumTangent = toTangent(f);
    }

    public void setMinimumHorizontalAngle(float f) {
        this.mMinimumHorizontalAngle = f;
        this.mMinimumHorizontalTangent = toTangent(f);
    }

    public void setMinimumVerticalAngle(float f) {
        this.mMinimumVerticalAngle = f;
        this.mMinimumVerticalTangent = toTangent(f);
    }
}
