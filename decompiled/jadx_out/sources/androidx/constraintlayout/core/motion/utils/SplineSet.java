package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.state.WidgetFrame;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public abstract class SplineSet {
    private static final String TAG = NPStringFog.decode(new byte[]{53, 64, 90, 12, 95, 7, 53, 85, 66}, "f06e1b", -1017466366L);
    private int count;
    protected CurveFit mCurveFit;
    private String mType;
    protected int[] mTimePoints = new int[10];
    protected float[] mValues = new float[10];

    private static class CoreSpline extends SplineSet {
        long start;
        String type;

        public CoreSpline(String str, long j) {
            this.type = str;
            this.start = j;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setProperty(TypedValues typedValues, float f) {
            typedValues.setValue(typedValues.getId(this.type), get(f));
        }
    }

    public static class CustomSet extends SplineSet {
        String mAttributeName;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mTempValues;

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(NPStringFog.decode(new byte[]{21}, "98c08a", 7326))[1];
            this.mConstraintAttributeList = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i, float f) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{2, 86, 86, 65, 70, 21, 5, 88, 84, 10, 18, 83, 9, 75, 24, 5, 71, 70, 18, 86, 85, 70, 83, 65, 18, 75, 81, 4, 71, 65, 3, 25, 91, 7, 94, 89, 70, 74, 93, 18, 98, 90, 15, 87, 76, 78, 66, 90, 21, 21, 24, 37, 93, 91, 21, 77, 74, 7, 91, 91, 18, 120, 76, 18, 64, 92, 4, 76, 76, 3, 27}, "f98f25", -15299));
        }

        public void setPoint(int i, CustomAttribute customAttribute) {
            this.mConstraintAttributeList.append(i, customAttribute);
        }

        public void setProperty(WidgetFrame widgetFrame, float f) {
            this.mCurveFit.getPos(f, this.mTempValues);
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(widgetFrame, this.mTempValues);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNumberOfInterpolatedValues);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i2);
                CustomAttribute customAttributeValueAt = this.mConstraintAttributeList.valueAt(i2);
                double d = iKeyAt;
                Double.isNaN(d);
                dArr[i2] = d * 0.01d;
                customAttributeValueAt.getValuesToInterpolate(this.mTempValues);
                int i3 = 0;
                while (true) {
                    if (i3 < this.mTempValues.length) {
                        dArr2[i2][i3] = r6[i3];
                        i3++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i, dArr, dArr2);
        }
    }

    public static class CustomSpline extends SplineSet {
        String mAttributeName;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mTempValues;

        public CustomSpline(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(NPStringFog.decode(new byte[]{72}, "ddfae4", 8.882255E7f))[1];
            this.mConstraintAttributeList = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i, float f) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{5, 14, 93, 23, 17, 16, 2, 0, 95, 92, 69, 86, 14, 19, 19, 83, 16, 67, 21, 14, 94, 16, 4, 68, 21, 19, 90, 82, 16, 68, 4, 65, 80, 81, 9, 92, 65, 18, 86, 68, 53, 95, 8, 15, 71, 24, 21, 95, 18, 77, 19, 115, 10, 94, 18, 21, 65, 81, 12, 94, 21, 32, 71, 68, 23, 89, 3, 20, 71, 85, 76}, "aa30e0", -2127868000L));
        }

        public void setPoint(int i, CustomVariable customVariable) {
            this.mConstraintAttributeList.append(i, customVariable);
        }

        public void setProperty(MotionWidget motionWidget, float f) {
            this.mCurveFit.getPos(f, this.mTempValues);
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mTempValues);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setProperty(TypedValues typedValues, float f) {
            setProperty((MotionWidget) typedValues, f);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNumberOfInterpolatedValues);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i2);
                CustomVariable customVariableValueAt = this.mConstraintAttributeList.valueAt(i2);
                double d = iKeyAt;
                Double.isNaN(d);
                dArr[i2] = d * 0.01d;
                customVariableValueAt.getValuesToInterpolate(this.mTempValues);
                int i3 = 0;
                while (true) {
                    if (i3 < this.mTempValues.length) {
                        dArr2[i2][i3] = r6[i3];
                        i3++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i, dArr, dArr2);
        }
    }

    private static class Sort {
        private Sort() {
        }

        static void doubleQuickSort(int[] iArr, float[] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            int i3 = 2;
            iArr2[1] = i;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                i3 = i4 - 1;
                int i6 = iArr2[i3];
                if (i5 < i6) {
                    int iPartition = partition(iArr, fArr, i5, i6);
                    int i7 = i3 + 1;
                    iArr2[i3] = iPartition - 1;
                    int i8 = i7 + 1;
                    iArr2[i7] = i5;
                    int i9 = i8 + 1;
                    iArr2[i8] = i6;
                    i3 = i9 + 1;
                    iArr2[i9] = iPartition + 1;
                }
            }
        }

        private static int partition(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    swap(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            swap(iArr, fArr, i4, i2);
            return i4;
        }

        private static void swap(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    public static SplineSet makeCustomSpline(String str, KeyFrameArray.CustomArray customArray) {
        return new CustomSet(str, customArray);
    }

    public static SplineSet makeCustomSplineSet(String str, KeyFrameArray.CustomVar customVar) {
        return new CustomSpline(str, customVar);
    }

    public static SplineSet makeSpline(String str, long j) {
        return new CoreSpline(str, j);
    }

    public float get(float f) {
        return (float) this.mCurveFit.getPos(f, 0);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f) {
        return (float) this.mCurveFit.getSlope(f, 0);
    }

    public void setPoint(int i, float f) {
        int[] iArr = this.mTimePoints;
        if (iArr.length < this.count + 1) {
            this.mTimePoints = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValues;
            this.mValues = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTimePoints;
        int i2 = this.count;
        iArr2[i2] = i;
        this.mValues[i2] = f;
        this.count = i2 + 1;
    }

    public void setProperty(TypedValues typedValues, float f) {
        typedValues.setValue(TypedValues.Attributes.CC.getId(this.mType), get(f));
    }

    public void setType(String str) {
        this.mType = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r11) {
        /*
            r10 = this;
            r1 = 1
            r3 = 0
            int r0 = r10.count
            if (r0 != 0) goto L7
        L6:
            return
        L7:
            int[] r2 = r10.mTimePoints
            float[] r4 = r10.mValues
            int r0 = r0 + (-1)
            androidx.constraintlayout.core.motion.utils.SplineSet.Sort.doubleQuickSort(r2, r4, r3, r0)
            r0 = r1
            r2 = r1
        L12:
            int r4 = r10.count
            if (r2 >= r4) goto L25
            int[] r4 = r10.mTimePoints
            int r5 = r2 + (-1)
            r5 = r4[r5]
            r4 = r4[r2]
            if (r5 == r4) goto L22
            int r0 = r0 + 1
        L22:
            int r2 = r2 + 1
            goto L12
        L25:
            double[] r4 = new double[r0]
            int[] r0 = new int[]{r0, r1}
            java.lang.Class r1 = java.lang.Double.TYPE
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r1, r0)
            double[][] r0 = (double[][]) r0
            r1 = r3
            r2 = r3
        L35:
            int r5 = r10.count
            if (r2 >= r5) goto L64
            if (r2 <= 0) goto L48
            int[] r5 = r10.mTimePoints
            r6 = r5[r2]
            int r7 = r2 + (-1)
            r5 = r5[r7]
            if (r6 != r5) goto L48
        L45:
            int r2 = r2 + 1
            goto L35
        L48:
            int[] r5 = r10.mTimePoints
            r5 = r5[r2]
            double r6 = (double) r5
            java.lang.Double.isNaN(r6)
            r8 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            double r6 = r6 * r8
            r4[r1] = r6
            r5 = r0[r1]
            float[] r6 = r10.mValues
            r6 = r6[r2]
            double r6 = (double) r6
            r5[r3] = r6
            int r1 = r1 + 1
            goto L45
        L64:
            androidx.constraintlayout.core.motion.utils.CurveFit r0 = androidx.constraintlayout.core.motion.utils.CurveFit.get(r11, r4, r0)
            r10.mCurveFit = r0
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.SplineSet.setup(int):void");
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat(NPStringFog.decode(new byte[]{20, 20, 23, 64, 22}, "779c55", 5.814259E8f));
        String str2 = str;
        for (int i = 0; i < this.count; i++) {
            str2 = str2 + NPStringFog.decode(new byte[]{108}, "7df250", 23697) + this.mTimePoints[i] + NPStringFog.decode(new byte[]{66, 72, 18}, "bd26c4", -11395) + decimalFormat.format(this.mValues[i]) + NPStringFog.decode(new byte[]{104, 66}, "5b78d3", 10067);
        }
        return str2;
    }
}
