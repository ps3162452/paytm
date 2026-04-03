package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes51.dex */
public class PatternPathMotion extends PathMotion {
    private Path mOriginalPatternPath;
    private final Path mPatternPath = new Path();
    private final Matrix mTempMatrix = new Matrix();

    public PatternPathMotion() {
        this.mPatternPath.lineTo(1.0f, 0.0f);
        this.mOriginalPatternPath = this.mPatternPath;
    }

    @SuppressLint({"RestrictedApi"})
    public PatternPathMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.PATTERN_PATH_MOTION);
        try {
            String namedString = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, NPStringFog.decode(new byte[]{20, 80, 65, 18, 85, 67, 10, 97, 84, 18, 88, 117, 5, 69, 84}, "d15f01", 1197955495L), 0);
            if (namedString == null) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{22, 82, 16, 12, 113, 87, 18, 82, 68, 9, 64, 69, 18, 19, 6, 1, 21, 69, 19, 67, 20, 8, 92, 83, 2, 19, 2, 11, 71, 22, 22, 82, 16, 16, 80, 68, 8, 99, 5, 16, 93, 123, 9, 71, 13, 11, 91}, "f3dd56", 1.33480138E8d));
            }
            setPatternPath(PathParser.createPathFromPathData(namedString));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public PatternPathMotion(Path path) {
        setPatternPath(path);
    }

    private static float distance(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float fDistance = distance(f5, f6);
        double dAtan2 = Math.atan2(f6, f5);
        this.mTempMatrix.setScale(fDistance, fDistance);
        this.mTempMatrix.postRotate((float) Math.toDegrees(dAtan2));
        this.mTempMatrix.postTranslate(f, f2);
        Path path = new Path();
        this.mPatternPath.transform(this.mTempMatrix, path);
        return path;
    }

    public Path getPatternPath() {
        return this.mOriginalPatternPath;
    }

    public void setPatternPath(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f = fArr[0];
        float f2 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f3 = fArr[0];
        float f4 = fArr[1];
        if (f3 == f && f4 == f2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{73, 80, 68, 65, 7, 22, 87, 17, 93, 64, 17, 16, 25, 95, 95, 65, 66, 1, 87, 85, 16, 84, 22, 68, 77, 89, 85, 21, 17, 16, 88, 67, 68, 92, 12, 3, 25, 65, 95, 92, 12, 16}, "9105bd", -29045));
        }
        this.mTempMatrix.setTranslate(-f3, -f4);
        float f5 = f - f3;
        float f6 = f2 - f4;
        float fDistance = 1.0f / distance(f5, f6);
        this.mTempMatrix.postScale(fDistance, fDistance);
        this.mTempMatrix.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
        path.transform(this.mTempMatrix, this.mPatternPath);
        this.mOriginalPatternPath = path;
    }
}
