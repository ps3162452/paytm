package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int PERPENDICULAR = 1;
    public static final String TAG = NPStringFog.decode(new byte[]{117, 87, 65, 13, 13, 11, 104, 89, 65, 12, 17}, "885dbe", true, true);
    static String[] names = {NPStringFog.decode(new byte[]{67, 89, 71, 80, 71, 8, 92, 88}, "36493a", -818705558L), NPStringFog.decode(new byte[]{30}, "fcf0bb", 8.716303E8f), NPStringFog.decode(new byte[]{26}, "c79b8b", false), NPStringFog.decode(new byte[]{18, 15, 86, 65, 88}, "ef2502", true, true), NPStringFog.decode(new byte[]{94, 85, 88, 6, 11, 65}, "601ac5", 1.0293272E9f), NPStringFog.decode(new byte[]{71, 88, 76, 80, 49, 12, 67, 88, 76, 93}, "7988cc", 5840)};
    private float height;
    private Easing mKeyFrameEasing;
    private float position;
    int visibility;
    private float width;
    private float x;
    private float y;
    private float alpha = 1.0f;
    int mVisibilityMode = 0;
    private boolean applyElevation = false;
    private float elevation = 0.0f;
    private float rotation = 0.0f;
    private float rotationX = 0.0f;
    public float rotationY = 0.0f;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float translationX = 0.0f;
    private float translationY = 0.0f;
    private float translationZ = 0.0f;
    private int mDrawPath = 0;
    private float mPathRotate = Float.NaN;
    private float mProgress = Float.NaN;
    private int mAnimateRelativeTo = -1;
    LinkedHashMap<String, CustomVariable> mCustomVariable = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];

    private boolean diff(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    public void addValues(HashMap<String, SplineSet> map, int i) {
        byte b;
        for (String str : map.keySet()) {
            SplineSet splineSet = map.get(str);
            switch (str.hashCode()) {
                case -1249320806:
                    b = str.equals(NPStringFog.decode(new byte[]{16, 86, 64, 87, 69, 15, 13, 87, 108}, "b9461f", 1.133127761E9d)) ? (byte) 2 : (byte) -1;
                    break;
                case -1249320805:
                    b = str.equals(NPStringFog.decode(new byte[]{22, 86, 65, 83, 70, 11, 11, 87, 108}, "d9522b", true, false)) ? (byte) 3 : (byte) -1;
                    break;
                case -1249320804:
                    b = str.equals(NPStringFog.decode(new byte[]{20, 13, 69, 85, 69, 11, 9, 12, 107}, "fb141b", -1.2334682E9f)) ? (byte) 1 : (byte) -1;
                    break;
                case -1225497657:
                    b = str.equals(NPStringFog.decode(new byte[]{70, 65, 3, 94, 17, 8, 83, 71, 11, 95, 12, 60}, "23b0bd", false)) ? (byte) 10 : (byte) -1;
                    break;
                case -1225497656:
                    b = str.equals(NPStringFog.decode(new byte[]{71, 69, 83, 94, 67, 88, 82, 67, 91, 95, 94, 109}, "372004", false)) ? (byte) 11 : (byte) -1;
                    break;
                case -1225497655:
                    b = str.equals(NPStringFog.decode(new byte[]{76, 71, 89, 89, 18, 95, 89, 65, 81, 88, 15, 105}, "8587a3", -3.5082886E8f)) ? (byte) 12 : (byte) -1;
                    break;
                case -1001078227:
                    b = str.equals(NPStringFog.decode(new byte[]{68, 71, 94, 85, 70, 82, 71, 70}, "451247", true)) ? (byte) 7 : (byte) -1;
                    break;
                case -987906986:
                    b = str.equals(NPStringFog.decode(new byte[]{22, 11, 23, 89, 16, 108}, "fba6d4", -1360088865L)) ? (byte) 4 : (byte) -1;
                    break;
                case -987906985:
                    b = str.equals(NPStringFog.decode(new byte[]{73, 93, 69, 92, 17, 108}, "9433e5", -1590263544L)) ? (byte) 5 : (byte) -1;
                    break;
                case -908189618:
                    b = str.equals(NPStringFog.decode(new byte[]{64, 91, 3, 13, 87, 110}, "38ba26", -3.2008078E8d)) ? (byte) 8 : (byte) -1;
                    break;
                case -908189617:
                    b = str.equals(NPStringFog.decode(new byte[]{68, 82, 3, 84, 80, 60}, "71b85e", -4.8012077E8f)) ? (byte) 9 : (byte) -1;
                    break;
                case 92909918:
                    b = str.equals(NPStringFog.decode(new byte[]{80, 90, 70, 91, 80}, "166312", 19485)) ? (byte) 0 : (byte) -1;
                    break;
                case 803192288:
                    b = str.equals(NPStringFog.decode(new byte[]{66, 85, 21, 80, 99, 87, 70, 85, 21, 93}, "24a818", false, false)) ? (byte) 6 : (byte) -1;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    splineSet.setPoint(i, Float.isNaN(this.alpha) ? 1.0f : this.alpha);
                    break;
                case 1:
                    splineSet.setPoint(i, Float.isNaN(this.rotation) ? 0.0f : this.rotation);
                    break;
                case 2:
                    splineSet.setPoint(i, Float.isNaN(this.rotationX) ? 0.0f : this.rotationX);
                    break;
                case 3:
                    splineSet.setPoint(i, Float.isNaN(this.rotationY) ? 0.0f : this.rotationY);
                    break;
                case 4:
                    splineSet.setPoint(i, Float.isNaN(this.mPivotX) ? 0.0f : this.mPivotX);
                    break;
                case 5:
                    splineSet.setPoint(i, Float.isNaN(this.mPivotY) ? 0.0f : this.mPivotY);
                    break;
                case 6:
                    splineSet.setPoint(i, Float.isNaN(this.mPathRotate) ? 0.0f : this.mPathRotate);
                    break;
                case 7:
                    splineSet.setPoint(i, Float.isNaN(this.mProgress) ? 0.0f : this.mProgress);
                    break;
                case 8:
                    splineSet.setPoint(i, Float.isNaN(this.scaleX) ? 1.0f : this.scaleX);
                    break;
                case 9:
                    splineSet.setPoint(i, Float.isNaN(this.scaleY) ? 1.0f : this.scaleY);
                    break;
                case 10:
                    splineSet.setPoint(i, Float.isNaN(this.translationX) ? 0.0f : this.translationX);
                    break;
                case 11:
                    splineSet.setPoint(i, Float.isNaN(this.translationY) ? 0.0f : this.translationY);
                    break;
                case 12:
                    splineSet.setPoint(i, Float.isNaN(this.translationZ) ? 0.0f : this.translationZ);
                    break;
                default:
                    if (str.startsWith(NPStringFog.decode(new byte[]{115, 97, 103, 98, 125, 126}, "044623", -436501725L))) {
                        String str2 = str.split(NPStringFog.decode(new byte[]{24}, "41df25", 1.4022414E9f))[1];
                        if (this.mCustomVariable.containsKey(str2)) {
                            CustomVariable customVariable = this.mCustomVariable.get(str2);
                            if (splineSet instanceof SplineSet.CustomSpline) {
                                ((SplineSet.CustomSpline) splineSet).setPoint(i, customVariable);
                            } else {
                                Utils.loge(TAG, str + NPStringFog.decode(new byte[]{16, 110, 12, 6, 19, 101, 64, 84, 12, 13, 1, 22, 94, 87, 17, 67, 5, 22, 115, 77, 22, 23, 11, 91, 99, 93, 17, 67, 2, 68, 81, 85, 0, 67, 89, 22}, "08ecd6", -1661457003L) + i + NPStringFog.decode(new byte[]{73, 16, 64, 82, 93, 77, 0}, "e06318", 2120747961L) + customVariable.getValueToInterpolate() + splineSet);
                            }
                        }
                    } else {
                        Utils.loge(TAG, NPStringFog.decode(new byte[]{101, 45, 40, 126, 120, 98, 126, 67, 16, 64, 91, 92, 94, 6, 67}, "0cc075", true, false) + str);
                    }
                    break;
            }
        }
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.visibility = motionWidget.getVisibility();
        this.alpha = motionWidget.getVisibility() != 4 ? 0.0f : motionWidget.getAlpha();
        this.applyElevation = false;
        this.rotation = motionWidget.getRotationZ();
        this.rotationX = motionWidget.getRotationX();
        this.rotationY = motionWidget.getRotationY();
        this.scaleX = motionWidget.getScaleX();
        this.scaleY = motionWidget.getScaleY();
        this.mPivotX = motionWidget.getPivotX();
        this.mPivotY = motionWidget.getPivotY();
        this.translationX = motionWidget.getTranslationX();
        this.translationY = motionWidget.getTranslationY();
        this.translationZ = motionWidget.getTranslationZ();
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.mCustomVariable.put(str, customAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.position, motionConstrainedPoint.position);
    }

    void different(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (diff(this.alpha, motionConstrainedPoint.alpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{89, 89, 68, 90, 7}, "8542ff", 16807));
        }
        if (diff(this.elevation, motionConstrainedPoint.elevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{76, 67, 3, 91, 65, 9, 89, 69, 11, 90, 92, 63}, "81b52e", false));
        }
        int i = this.visibility;
        int i2 = motionConstrainedPoint.visibility;
        if (i != i2 && this.mVisibilityMode == 0 && (i == 4 || i2 == 4)) {
            hashSet.add(NPStringFog.decode(new byte[]{82, 14, 67, 95, 86}, "3b3772", false));
        }
        if (diff(this.rotation, motionConstrainedPoint.rotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{23, 86, 71, 82, 23, 94, 10, 87, 105}, "e933c7", -1393485029L));
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{69, 80, 69, 14, 48, 91, 65, 80, 69, 3}, "511fb4", true, false));
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(motionConstrainedPoint.mProgress)) {
            hashSet.add(NPStringFog.decode(new byte[]{18, 19, 10, 84, 19, 3, 17, 18}, "bae3af", -28929));
        }
        if (diff(this.rotationX, motionConstrainedPoint.rotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{69, 88, 23, 4, 71, 95, 88, 89, 59}, "77ce36", 1.60130614E8d));
        }
        if (diff(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 90, 18, 86, 67, 13, 11, 91, 63}, "d5f77d", -1075212122L));
        }
        if (diff(this.mPivotX, motionConstrainedPoint.mPivotX)) {
            hashSet.add(NPStringFog.decode(new byte[]{20, 95, 66, 14, 17, 60}, "d64aed", -1.4652317E9f));
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add(NPStringFog.decode(new byte[]{72, 11, 23, 9, 64, 107}, "8baf42", 23043));
        }
        if (diff(this.scaleX, motionConstrainedPoint.scaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{64, 84, 84, 95, 4, 105}, "3753a1", false));
        }
        if (diff(this.scaleY, motionConstrainedPoint.scaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{70, 82, 86, 91, 82, 106}, "517773", false, false));
        }
        if (diff(this.translationX, motionConstrainedPoint.translationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{66, 69, 0, 11, 23, 10, 87, 67, 8, 10, 10, 62}, "67aedf", 342));
        }
        if (diff(this.translationY, motionConstrainedPoint.translationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{17, 65, 87, 12, 66, 9, 4, 71, 95, 13, 95, 60}, "e36b1e", true, false));
        }
        if (diff(this.translationZ, motionConstrainedPoint.translationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 16, 86, 8, 70, 95, 3, 22, 94, 9, 91, 105}, "bb7f53", 42000278L));
        }
        if (diff(this.elevation, motionConstrainedPoint.elevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{3, 92, 86, 23, 82, 66, 15, 95, 93}, "f03a36", false));
        }
    }

    void different(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | diff(this.position, motionConstrainedPoint.position);
        zArr[1] = zArr[1] | diff(this.x, motionConstrainedPoint.x);
        zArr[2] = zArr[2] | diff(this.y, motionConstrainedPoint.y);
        zArr[3] = zArr[3] | diff(this.width, motionConstrainedPoint.width);
        zArr[4] = zArr[4] | diff(this.height, motionConstrainedPoint.height);
    }

    void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.x, this.y, this.width, this.height, this.alpha, this.elevation, this.rotation, this.rotationX, this.rotationY, this.scaleX, this.scaleY, this.mPivotX, this.mPivotY, this.translationX, this.translationY, this.translationZ, this.mPathRotate};
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] < fArr.length) {
                dArr[i] = fArr[iArr[i2]];
                i++;
            }
        }
    }

    int getCustomData(String str, double[] dArr, int i) {
        CustomVariable customVariable = this.mCustomVariable.get(str);
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i] = customVariable.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        customVariable.getValuesToInterpolate(new float[iNumberOfInterpolatedValues]);
        int i2 = 0;
        while (i2 < iNumberOfInterpolatedValues) {
            dArr[i] = r2[i2];
            i2++;
            i++;
        }
        return iNumberOfInterpolatedValues;
    }

    int getCustomDataCount(String str) {
        return this.mCustomVariable.get(str).numberOfInterpolatedValues();
    }

    boolean hasCustomData(String str) {
        return this.mCustomVariable.containsKey(str);
    }

    void setBounds(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
    }

    public void setState(MotionWidget motionWidget) {
        setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        applyParameters(motionWidget);
    }

    public void setState(Rect rect, MotionWidget motionWidget, int i, float f) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(motionWidget);
        this.mPivotX = Float.NaN;
        this.mPivotY = Float.NaN;
        switch (i) {
            case 1:
                this.rotation = f - 90.0f;
                break;
            case 2:
                this.rotation = 90.0f + f;
                break;
        }
    }
}
