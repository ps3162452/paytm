package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int PERPENDICULAR = 1;
    public static final String TAG = NPStringFog.decode(new byte[]{116, 87, 66, 88, 86, 89, 105, 89, 66, 89, 74}, "986197", false, true);
    static String[] names = {NPStringFog.decode(new byte[]{22, 94, 17, 89, 22, 13, 9, 95}, "f1b0bd", 1.4075535E9f), NPStringFog.decode(new byte[]{78}, "64e040", true, true), NPStringFog.decode(new byte[]{73}, "03dd3b", -1.9631272E9f), NPStringFog.decode(new byte[]{66, 12, 1, 70, 91}, "5ee231", true), NPStringFog.decode(new byte[]{92, 80, 81, 87, 81, 66}, "458096", 1770757756L), NPStringFog.decode(new byte[]{20, 88, 65, 92, 99, 87, 16, 88, 65, 81}, "d95418", -1.4054156E9f)};
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
    LinkedHashMap<String, ConstraintAttribute> attributes = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];

    private boolean diff(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    public void addValues(HashMap<String, ViewSpline> map, int i) {
        byte b;
        for (String str : map.keySet()) {
            ViewSpline viewSpline = map.get(str);
            switch (str.hashCode()) {
                case -1249320806:
                    b = str.equals(NPStringFog.decode(new byte[]{67, 87, 18, 84, 65, 12, 94, 86, 62}, "18f55e", -7.416166E8f)) ? (byte) 3 : (byte) -1;
                    break;
                case -1249320805:
                    b = str.equals(NPStringFog.decode(new byte[]{17, 92, 70, 86, 70, 95, 12, 93, 107}, "c32726", 25083)) ? (byte) 4 : (byte) -1;
                    break;
                case -1225497657:
                    b = str.equals(NPStringFog.decode(new byte[]{71, 17, 3, 91, 69, 85, 82, 23, 11, 90, 88, 97}, "3cb569", true, true)) ? (byte) 11 : (byte) -1;
                    break;
                case -1225497656:
                    b = str.equals(NPStringFog.decode(new byte[]{22, 75, 82, 88, 64, 95, 3, 77, 90, 89, 93, 106}, "b93633", 2.1409457E9f)) ? (byte) 12 : (byte) -1;
                    break;
                case -1225497655:
                    b = str.equals(NPStringFog.decode(new byte[]{64, 19, 80, 12, 18, 85, 85, 21, 88, 13, 15, 99}, "4a1ba9", 2.4078605E8f)) ? (byte) 13 : (byte) -1;
                    break;
                case -1001078227:
                    b = str.equals(NPStringFog.decode(new byte[]{72, 20, 87, 6, 70, 7, 75, 21}, "8f8a4b", false, true)) ? (byte) 8 : (byte) -1;
                    break;
                case -908189618:
                    b = str.equals(NPStringFog.decode(new byte[]{64, 90, 86, 88, 82, 104}, "397470", -5.31503527E8d)) ? (byte) 9 : (byte) -1;
                    break;
                case -908189617:
                    b = str.equals(NPStringFog.decode(new byte[]{64, 1, 80, 84, 80, 59}, "3b185b", -3.18344879E8d)) ? (byte) 10 : (byte) -1;
                    break;
                case -760884510:
                    b = str.equals(NPStringFog.decode(new byte[]{22, 70, 88, 91, 65, 95, 13, 70, 84, 101, 91, 79, 13, 64, 97}, "b49529", false)) ? (byte) 5 : (byte) -1;
                    break;
                case -760884509:
                    b = str.equals(NPStringFog.decode(new byte[]{22, 75, 87, 90, 67, 80, 13, 75, 91, 100, 89, 64, 13, 77, 111}, "b96406", -1185120223L)) ? (byte) 6 : (byte) -1;
                    break;
                case -40300674:
                    b = str.equals(NPStringFog.decode(new byte[]{17, 93, 17, 89, 67, 89, 12, 92}, "c2e870", 1360708880L)) ? (byte) 2 : (byte) -1;
                    break;
                case -4379043:
                    b = str.equals(NPStringFog.decode(new byte[]{3, 84, 82, 68, 5, 23, 15, 87, 89}, "f872dc", -7.983318E8f)) ? (byte) 1 : (byte) -1;
                    break;
                case 37232917:
                    b = str.equals(NPStringFog.decode(new byte[]{77, 68, 88, 11, 70, 81, 77, 95, 86, 11, 101, 89, 77, 94, 107, 10, 65, 89, 77, 83}, "969e58", 8430)) ? (byte) 7 : (byte) -1;
                    break;
                case 92909918:
                    b = str.equals(NPStringFog.decode(new byte[]{86, 13, 66, 91, 87}, "7a236f", true)) ? (byte) 0 : (byte) -1;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    viewSpline.setPoint(i, Float.isNaN(this.alpha) ? 1.0f : this.alpha);
                    break;
                case 1:
                    viewSpline.setPoint(i, Float.isNaN(this.elevation) ? 0.0f : this.elevation);
                    break;
                case 2:
                    viewSpline.setPoint(i, Float.isNaN(this.rotation) ? 0.0f : this.rotation);
                    break;
                case 3:
                    viewSpline.setPoint(i, Float.isNaN(this.rotationX) ? 0.0f : this.rotationX);
                    break;
                case 4:
                    viewSpline.setPoint(i, Float.isNaN(this.rotationY) ? 0.0f : this.rotationY);
                    break;
                case 5:
                    viewSpline.setPoint(i, Float.isNaN(this.mPivotX) ? 0.0f : this.mPivotX);
                    break;
                case 6:
                    viewSpline.setPoint(i, Float.isNaN(this.mPivotY) ? 0.0f : this.mPivotY);
                    break;
                case 7:
                    viewSpline.setPoint(i, Float.isNaN(this.mPathRotate) ? 0.0f : this.mPathRotate);
                    break;
                case 8:
                    viewSpline.setPoint(i, Float.isNaN(this.mProgress) ? 0.0f : this.mProgress);
                    break;
                case 9:
                    viewSpline.setPoint(i, Float.isNaN(this.scaleX) ? 1.0f : this.scaleX);
                    break;
                case 10:
                    viewSpline.setPoint(i, Float.isNaN(this.scaleY) ? 1.0f : this.scaleY);
                    break;
                case 11:
                    viewSpline.setPoint(i, Float.isNaN(this.translationX) ? 0.0f : this.translationX);
                    break;
                case 12:
                    viewSpline.setPoint(i, Float.isNaN(this.translationY) ? 0.0f : this.translationY);
                    break;
                case 13:
                    viewSpline.setPoint(i, Float.isNaN(this.translationZ) ? 0.0f : this.translationZ);
                    break;
                default:
                    if (str.startsWith(NPStringFog.decode(new byte[]{112, 109, 107, 101, 44, 116}, "3881c9", 3.033012E8d))) {
                        String str2 = str.split(NPStringFog.decode(new byte[]{20}, "86b299", -2374))[1];
                        if (this.attributes.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.attributes.get(str2);
                            if (viewSpline instanceof ViewSpline.CustomSet) {
                                ((ViewSpline.CustomSet) viewSpline).setPoint(i, constraintAttribute);
                            } else {
                                float valueToInterpolate = constraintAttribute.getValueToInterpolate();
                                String strValueOf = String.valueOf(viewSpline);
                                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(strValueOf).length());
                                sb.append(str);
                                sb.append(NPStringFog.decode(new byte[]{69, 100, 94, 0, 20, 102, 21, 94, 94, 11, 6, 21, 11, 93, 67, 69, 2, 21, 38, 71, 68, 17, 12, 88, 54, 87, 67, 69, 5, 71, 4, 95, 82, 69, 94, 21}, "e27ec5", 2.071579045E9d));
                                sb.append(i);
                                sb.append(NPStringFog.decode(new byte[]{78, 19, 67, 85, 14, 65, 7}, "b354b4", false));
                                sb.append(valueToInterpolate);
                                sb.append(strValueOf);
                                Log.e(TAG, sb.toString());
                            }
                        }
                    } else {
                        String strValueOf2 = String.valueOf(str);
                        Log.e(TAG, strValueOf2.length() != 0 ? NPStringFog.decode(new byte[]{101, 118, 126, 119, 125, 51, 126, 24, 70, 73, 94, 13, 94, 93, 21}, "08592d", 1.1890469E9f).concat(strValueOf2) : new String(NPStringFog.decode(new byte[]{54, 120, 41, 124, 127, 52, 45, 22, 17, 66, 92, 10, 13, 83, 66}, "c6b20c", 240696378L)));
                    }
                    break;
            }
        }
    }

    public void applyParameters(View view) {
        this.visibility = view.getVisibility();
        this.alpha = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.applyElevation = false;
        if (Build.VERSION.SDK_INT >= 21) {
            this.elevation = view.getElevation();
        }
        this.rotation = view.getRotation();
        this.rotationX = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.scaleX = view.getScaleX();
        this.scaleY = view.getScaleY();
        this.mPivotX = view.getPivotX();
        this.mPivotY = view.getPivotY();
        this.translationX = view.getTranslationX();
        this.translationY = view.getTranslationY();
        if (Build.VERSION.SDK_INT >= 21) {
            this.translationZ = view.getTranslationZ();
        }
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        this.mVisibilityMode = constraint.propertySet.mVisibilityMode;
        this.visibility = constraint.propertySet.visibility;
        this.alpha = (constraint.propertySet.visibility == 0 || this.mVisibilityMode != 0) ? constraint.propertySet.alpha : 0.0f;
        this.applyElevation = constraint.transform.applyElevation;
        this.elevation = constraint.transform.elevation;
        this.rotation = constraint.transform.rotation;
        this.rotationX = constraint.transform.rotationX;
        this.rotationY = constraint.transform.rotationY;
        this.scaleX = constraint.transform.scaleX;
        this.scaleY = constraint.transform.scaleY;
        this.mPivotX = constraint.transform.transformPivotX;
        this.mPivotY = constraint.transform.transformPivotY;
        this.translationX = constraint.transform.translationX;
        this.translationY = constraint.transform.translationY;
        this.translationZ = constraint.transform.translationZ;
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        this.mPathRotate = constraint.motion.mPathRotate;
        this.mDrawPath = constraint.motion.mDrawPath;
        this.mAnimateRelativeTo = constraint.motion.mAnimateRelativeTo;
        this.mProgress = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.isContinuous()) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.position, motionConstrainedPoint.position);
    }

    void different(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (diff(this.alpha, motionConstrainedPoint.alpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{88, 91, 64, 14, 82}, "970f30", 1.9135263E9f));
        }
        if (diff(this.elevation, motionConstrainedPoint.elevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{84, 14, 85, 79, 2, 66, 88, 13, 94}, "1b09c6", true, false));
        }
        int i = this.visibility;
        int i2 = motionConstrainedPoint.visibility;
        if (i != i2 && this.mVisibilityMode == 0 && (i == 0 || i2 == 0)) {
            hashSet.add(NPStringFog.decode(new byte[]{5, 92, 21, 14, 84}, "d0ef58", false, false));
        }
        if (diff(this.rotation, motionConstrainedPoint.rotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{19, 86, 77, 88, 77, 10, 14, 87}, "a9999c", false, false));
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{65, 64, 5, 87, 18, 90, 65, 91, 11, 87, 49, 82, 65, 90, 54, 86, 21, 82, 65, 87}, "52d9a3", true));
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(motionConstrainedPoint.mProgress)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 70, 12, 80, 19, 80, 64, 71}, "34c7a5", false));
        }
        if (diff(this.rotationX, motionConstrainedPoint.rotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{20, 93, 65, 4, 21, 95, 9, 92, 109}, "f25ea6", -30698));
        }
        if (diff(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{16, 90, 17, 4, 21, 10, 13, 91, 60}, "b5eeac", -9465));
        }
        if (diff(this.mPivotX, motionConstrainedPoint.mPivotX)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 74, 86, 88, 67, 85, 88, 74, 90, 102, 89, 69, 88, 76, 111}, "787603", 5.0924534E8f));
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 17, 81, 90, 69, 83, 95, 17, 93, 100, 95, 67, 95, 23, 105}, "0c0465", true, false));
        }
        if (diff(this.scaleX, motionConstrainedPoint.scaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 81, 4, 89, 87, 96}, "e2e528", false, true));
        }
        if (diff(this.scaleY, motionConstrainedPoint.scaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{69, 87, 87, 85, 85, 108}, "646905", true, true));
        }
        if (diff(this.translationX, motionConstrainedPoint.translationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{16, 20, 83, 89, 74, 14, 5, 18, 91, 88, 87, 58}, "df279b", 5.32996067E8d));
        }
        if (diff(this.translationY, motionConstrainedPoint.translationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 23, 88, 11, 74, 90, 86, 17, 80, 10, 87, 111}, "7e9e96", 2.0868616E9f));
        }
        if (diff(this.translationZ, motionConstrainedPoint.translationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 67, 0, 12, 66, 13, 81, 69, 8, 13, 95, 59}, "01ab1a", false, false));
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
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[i] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        constraintAttribute.getValuesToInterpolate(new float[iNumberOfInterpolatedValues]);
        int i2 = 0;
        while (i2 < iNumberOfInterpolatedValues) {
            dArr[i] = r2[i2];
            i2++;
            i++;
        }
        return iNumberOfInterpolatedValues;
    }

    int getCustomDataCount(String str) {
        return this.attributes.get(str).numberOfInterpolatedValues();
    }

    boolean hasCustomData(String str) {
        return this.attributes.containsKey(str);
    }

    void setBounds(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
    }

    public void setState(Rect rect, View view, int i, float f) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(view);
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

    public void setState(Rect rect, ConstraintSet constraintSet, int i, int i2) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(constraintSet.getParameters(i2));
        switch (i) {
            case 1:
            case 3:
                this.rotation -= 90.0f;
                break;
            case 2:
            case 4:
                float f = this.rotation + 90.0f;
                this.rotation = f;
                if (f > 180.0f) {
                    this.rotation = f - 360.0f;
                }
                break;
        }
    }

    public void setState(View view) {
        setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        applyParameters(view);
    }
}
