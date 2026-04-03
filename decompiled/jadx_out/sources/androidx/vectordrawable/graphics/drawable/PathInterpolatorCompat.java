package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes22.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;
    private static final float PRECISION = 0.002f;
    private float[] mX;
    private float[] mY;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        parseInterpolatorFromTypeArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }

    private void initCubic(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        initPath(path);
    }

    private void initPath(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(MAX_NUM_POINTS, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{101, 94, 7, 25, 52, 5, 69, 94, 66, 81, 5, 23, 17, 87, 66, 80, 10, 18, 80, 90, 11, 93, 68, 8, 84, 88, 5, 77, 12, 68}, "16b9dd", 1127254264L) + length);
        }
        this.mX = new float[iMin];
        this.mY = new float[iMin];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < iMin; i2++) {
            pathMeasure.getPosTan((i2 * length) / (iMin - 1), fArr, null);
            this.mX[i2] = fArr[0];
            this.mY[i2] = fArr[1];
        }
        if (Math.abs(this.mX[0]) > 1.0E-5d || Math.abs(this.mY[0]) > 1.0E-5d || Math.abs(this.mX[iMin - 1] - 1.0f) > 1.0E-5d || Math.abs(this.mY[iMin - 1] - 1.0f) > 1.0E-5d) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{109, 11, 0, 20, 104, 3, 77, 11, 69, 89, 77, 17, 77, 67, 22, 64, 89, 16, 77, 67, 4, 64, 24, 74, 9, 79, 85, 29, 24, 3, 87, 7, 69, 81, 86, 6, 25, 2, 17, 20, 16, 83, 21, 82, 76, 20, 75, 22, 88, 17, 17, 14, 24}, "9ce48b", -657614008L) + this.mX[0] + NPStringFog.decode(new byte[]{72}, "d202ef", false) + this.mY[0] + NPStringFog.decode(new byte[]{25, 7, 88, 83, 9}, "9b6734", true, true) + this.mX[iMin - 1] + NPStringFog.decode(new byte[]{30}, "2a9f01", -1030751002L) + this.mY[iMin - 1]);
        }
        float f = 0.0f;
        int i3 = 0;
        while (i < iMin) {
            float f2 = this.mX[i3];
            if (f2 < f) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 10, 83, 20, 51, 0, 68, 10, 22, 87, 2, 15, 94, 13, 66, 20, 15, 14, 95, 18, 22, 86, 2, 2, 91, 66, 89, 90, 67, 8, 68, 17, 83, 88, 5, 77, 16, 26, 22, 14}, "0b64ca", 6.2391514E8f) + f2);
            }
            this.mX[i] = f2;
            i++;
            i3++;
            f = f2;
        }
        if (pathMeasure.nextContour()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{50, 89, 86, 66, 103, 86, 18, 89, 19, 17, 95, 88, 19, 93, 87, 66, 85, 82, 70, 82, 92, 12, 67, 94, 8, 68, 92, 23, 68, 27, 70, 82, 82, 12, 16, 67, 70, 89, 82, 20, 82, 23, 84, 26, 19, 1, 88, 89, 18, 94, 70, 16, 68}, "f13b77", 3.011635E7f));
        }
    }

    private void initQuad(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        initPath(path);
    }

    private void parseInterpolatorFromTypeArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{69, 87, 76, 93, 37, 3, 65, 87}, "5685ab", 11042))) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{64, 88, 17, 11, 32, 80, 68, 88}, "09ecd1", true, true), 4);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData(namedString);
            if (pathCreatePathFromPathData == null) {
                throw new InflateException(NPStringFog.decode(new byte[]{96, 9, 93, 65, 18, 0, 64, 9, 24, 8, 17, 65, 90, 20, 84, 13, 78, 65, 67, 9, 81, 2, 10, 65, 93, 18, 24, 2, 16, 4, 85, 21, 93, 5, 66, 7, 70, 14, 85, 65}, "4a8aba", 10672) + namedString);
            }
            initPath(pathCreatePathFromPathData);
            return;
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{5, 13, 88, 76, 17, 90, 10, 58, 7}, "fb68c5", 230597131L))) {
            throw new InflateException(NPStringFog.decode(new byte[]{69, 4, 16, 89, 125, 87, 65, 0, 22, 65, 91, 85, 84, 17, 11, 67, 20, 75, 80, 20, 17, 88, 70, 92, 70, 69, 16, 89, 81, 25, 86, 10, 10, 69, 70, 86, 89, 61, 85, 17, 85, 77, 65, 23, 13, 83, 65, 77, 80}, "5ed149", 25619));
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{82, 90, 15, 76, 69, 10, 93, 108, 80}, "15a87e", true))) {
            throw new InflateException(NPStringFog.decode(new byte[]{67, 0, 70, 9, 126, 15, 71, 4, 64, 17, 88, 13, 82, 21, 93, 19, 23, 19, 86, 16, 71, 8, 69, 4, 64, 65, 70, 9, 82, 65, 80, 14, 92, 21, 69, 14, 95, 56, 3, 65, 86, 21, 71, 19, 91, 3, 66, 21, 86}, "3a2a7a", true));
        }
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{82, 91, 92, 64, 17, 14, 93, 108, 3}, "1424ca", false), 0, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{91, 10, 89, 21, 70, 89, 84, 60, 6}, "8e7a46", 1.15912392E9d), 1, 0.0f);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{80, 93, 12, 22, 71, 87, 95, 106, 80}, "32bb58", -1769438549L));
        if (zHasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{0, 9, 8, 64, 17, 88, 15, 63, 84}, "cff4c7", -2088567330L))) {
            throw new InflateException(NPStringFog.decode(new byte[]{64, 83, 76, 95, 124, 94, 68, 87, 74, 71, 90, 92, 81, 70, 87, 69, 21, 66, 85, 67, 77, 94, 71, 85, 67, 18, 90, 88, 65, 88, 16, 81, 87, 89, 65, 66, 95, 94, 96, 5, 21, 81, 94, 86, 24, 84, 90, 94, 68, 64, 87, 91, 108, 2, 16, 84, 87, 69, 21, 83, 69, 80, 81, 84, 21, 114, 85, 72, 81, 82, 71, 67, 30}, "028750", true));
        }
        if (zHasAttribute) {
            initCubic(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{91, 89, 13, 65, 75, 11, 84, 110, 81}, "86c59d", 2.0943382E9f), 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{84, 12, 10, 17, 67, 10, 91, 58, 86}, "7cde1e", true, false), 3, 0.0f));
        } else {
            initQuad(namedFloat, namedFloat2);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int i = 0;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.mX[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.mX[length] - this.mX[i];
        if (f2 == 0.0f) {
            return this.mY[i];
        }
        float f3 = (f - this.mX[i]) / f2;
        float f4 = this.mY[i];
        return (f3 * (this.mY[length] - f4)) + f4;
    }
}
