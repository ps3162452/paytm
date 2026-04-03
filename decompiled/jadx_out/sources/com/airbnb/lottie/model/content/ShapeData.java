package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class ShapeData {
    private boolean closed;
    private final List<CubicCurveData> curves;
    private PointF initialPoint;

    public ShapeData() {
        this.curves = new ArrayList();
    }

    public ShapeData(PointF pointF, boolean z, List<CubicCurveData> list) {
        this.initialPoint = pointF;
        this.closed = z;
        this.curves = new ArrayList(list);
    }

    private void setInitialPoint(float f, float f2) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.initialPoint.set(f, f2);
    }

    public List<CubicCurveData> getCurves() {
        return this.curves;
    }

    public PointF getInitialPoint() {
        return this.initialPoint;
    }

    public void interpolateBetween(ShapeData shapeData, ShapeData shapeData2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.closed = shapeData.isClosed() || shapeData2.isClosed();
        if (shapeData.getCurves().size() != shapeData2.getCurves().size()) {
            Logger.warning(NPStringFog.decode(new byte[]{37, 67, 20, 66, 1, 64, 70, 91, 19, 71, 16, 19, 14, 87, 16, 81, 68, 71, 14, 83, 70, 71, 5, 94, 3, 22, 8, 65, 9, 81, 3, 68, 70, 91, 2, 19, 5, 89, 8, 64, 22, 92, 10, 22, 22, 91, 13, 93, 18, 69, 72, 20, 55, 91, 7, 70, 3, 20, 85, 9, 70}, "f6f4d3", -1.79784989E9d) + shapeData.getCurves().size() + NPStringFog.decode(new byte[]{63, 55, 91, 88, 68, 80, 22, 86, 9, 25}, "6d3945", true, true) + shapeData2.getCurves().size());
        }
        int iMin = Math.min(shapeData.getCurves().size(), shapeData2.getCurves().size());
        if (this.curves.size() < iMin) {
            for (int size = this.curves.size(); size < iMin; size++) {
                this.curves.add(new CubicCurveData());
            }
        } else if (this.curves.size() > iMin) {
            for (int size2 = this.curves.size() - 1; size2 >= iMin; size2--) {
                this.curves.remove(this.curves.size() - 1);
            }
        }
        PointF initialPoint = shapeData.getInitialPoint();
        PointF initialPoint2 = shapeData2.getInitialPoint();
        setInitialPoint(MiscUtils.lerp(initialPoint.x, initialPoint2.x, f), MiscUtils.lerp(initialPoint.y, initialPoint2.y, f));
        for (int size3 = this.curves.size() - 1; size3 >= 0; size3--) {
            CubicCurveData cubicCurveData = shapeData.getCurves().get(size3);
            CubicCurveData cubicCurveData2 = shapeData2.getCurves().get(size3);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            PointF controlPoint12 = cubicCurveData2.getControlPoint1();
            PointF controlPoint22 = cubicCurveData2.getControlPoint2();
            PointF vertex2 = cubicCurveData2.getVertex();
            this.curves.get(size3).setControlPoint1(MiscUtils.lerp(controlPoint1.x, controlPoint12.x, f), MiscUtils.lerp(controlPoint1.y, controlPoint12.y, f));
            this.curves.get(size3).setControlPoint2(MiscUtils.lerp(controlPoint2.x, controlPoint22.x, f), MiscUtils.lerp(controlPoint2.y, controlPoint22.y, f));
            this.curves.get(size3).setVertex(MiscUtils.lerp(vertex.x, vertex2.x, f), MiscUtils.lerp(vertex.y, vertex2.y, f));
        }
    }

    public boolean isClosed() {
        return this.closed;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{106, 91, 85, 72, 1, 34, 88, 71, 85, 67, 10, 19, 84, 112, 65, 74, 18, 3, 74, 14}, "9348df", true) + this.curves.size() + NPStringFog.decode(new byte[]{81, 92, 95, 71, 80, 6, 15}, "20045b", 868116556L) + this.closed + '}';
    }
}
