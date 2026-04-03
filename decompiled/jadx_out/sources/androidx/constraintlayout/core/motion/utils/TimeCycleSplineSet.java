package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public abstract class TimeCycleSplineSet {
    protected static final int CURVE_OFFSET = 2;
    protected static final int CURVE_PERIOD = 1;
    protected static final int CURVE_VALUE = 0;
    private static final String TAG = NPStringFog.decode(new byte[]{103, 67, 9, 15, 86, 7, 103, 86, 17}, "43ef8b", 27955);
    protected static float VAL_2PI = 6.2831855f;
    protected int count;
    protected long last_time;
    protected CurveFit mCurveFit;
    protected String mType;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    protected float[] mCache = new float[3];
    protected boolean mContinue = false;
    protected float last_cycle = Float.NaN;

    public static class CustomSet extends TimeCycleSplineSet {
        String mAttributeName;
        float[] mCache;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(NPStringFog.decode(new byte[]{26}, "6ba0b2", 1.523798772E9d))[1];
            this.mConstraintAttributeList = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{93, 13, 11, 19, 70, 17, 90, 3, 9, 88, 18, 87, 86, 16, 69, 87, 71, 66, 77, 13, 8, 20, 83, 69, 77, 16, 12, 86, 71, 69, 92, 66, 6, 85, 94, 93, 25, 17, 0, 64, 98, 94, 80, 12, 17, 28, 66, 94, 74, 78, 69, 119, 93, 95, 74, 22, 23, 85, 91, 95, 77, 35, 17, 64, 64, 88, 91, 23, 17, 81, 30, 31, 23, 76, 76}, "9be421", false));
        }

        public void setPoint(int i, CustomAttribute customAttribute, float f, int i2, float f2) {
            this.mConstraintAttributeList.append(i, customAttribute);
            this.mWaveProperties.append(i, new float[]{f, f2});
            this.mWaveShape = Math.max(this.mWaveShape, i2);
        }

        public boolean setProperty(MotionWidget motionWidget, float f, long j, KeyCache keyCache) {
            this.mCurveFit.getPos(f, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                this.last_cycle = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                if (Float.isNaN(this.last_cycle)) {
                    this.last_cycle = 0.0f;
                }
            }
            double d = this.last_cycle;
            double d2 = j - j2;
            Double.isNaN(d2);
            double d3 = f2;
            Double.isNaN(d3);
            Double.isNaN(d);
            this.last_cycle = (float) ((((d2 * 1.0E-9d) * d3) + d) % 1.0d);
            this.last_time = j;
            float fCalcWave = calcWave(this.last_cycle);
            this.mContinue = false;
            for (int i = 0; i < this.mCache.length; i++) {
                this.mContinue = (((double) this.mTempValues[i]) != 0.0d) | this.mContinue;
                this.mCache[i] = (this.mTempValues[i] * fCalcWave) + f3;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mCache);
            if (f2 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[iNumberOfInterpolatedValues + 2];
            this.mCache = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNumberOfInterpolatedValues + 2);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i2);
                CustomAttribute customAttributeValueAt = this.mConstraintAttributeList.valueAt(i2);
                float[] fArrValueAt = this.mWaveProperties.valueAt(i2);
                double d = iKeyAt;
                Double.isNaN(d);
                dArr[i2] = d * 0.01d;
                customAttributeValueAt.getValuesToInterpolate(this.mTempValues);
                int i3 = 0;
                while (true) {
                    if (i3 < this.mTempValues.length) {
                        dArr2[i2][i3] = r7[i3];
                        i3++;
                    }
                }
                dArr2[i2][iNumberOfInterpolatedValues] = fArrValueAt[0];
                dArr2[i2][iNumberOfInterpolatedValues + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.get(i, dArr, dArr2);
        }
    }

    public static class CustomVarSet extends TimeCycleSplineSet {
        String mAttributeName;
        float[] mCache;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomVarSet(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(NPStringFog.decode(new byte[]{26}, "685e6e", 1734408909L))[1];
            this.mConstraintAttributeList = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{80, 88, 15, 19, 64, 23, 87, 86, 13, 88, 20, 81, 91, 69, 65, 87, 65, 68, 64, 88, 12, 20, 85, 67, 64, 69, 8, 86, 65, 67, 81, 23, 2, 85, 88, 91, 20, 68, 4, 64, 100, 88, 93, 89, 21, 28, 68, 88, 71, 27, 65, 119, 91, 89, 71, 67, 19, 85, 93, 89, 64, 118, 21, 64, 70, 94, 86, 66, 21, 81, 24, 25, 26, 25, 72}, "47a447", -57334406L));
        }

        public void setPoint(int i, CustomVariable customVariable, float f, int i2, float f2) {
            this.mConstraintAttributeList.append(i, customVariable);
            this.mWaveProperties.append(i, new float[]{f, f2});
            this.mWaveShape = Math.max(this.mWaveShape, i2);
        }

        public boolean setProperty(MotionWidget motionWidget, float f, long j, KeyCache keyCache) {
            this.mCurveFit.getPos(f, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                this.last_cycle = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                if (Float.isNaN(this.last_cycle)) {
                    this.last_cycle = 0.0f;
                }
            }
            double d = this.last_cycle;
            double d2 = j - j2;
            Double.isNaN(d2);
            double d3 = f2;
            Double.isNaN(d3);
            Double.isNaN(d);
            this.last_cycle = (float) ((((d2 * 1.0E-9d) * d3) + d) % 1.0d);
            this.last_time = j;
            float fCalcWave = calcWave(this.last_cycle);
            this.mContinue = false;
            for (int i = 0; i < this.mCache.length; i++) {
                this.mContinue = (((double) this.mTempValues[i]) != 0.0d) | this.mContinue;
                this.mCache[i] = (this.mTempValues[i] * fCalcWave) + f3;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mCache);
            if (f2 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[iNumberOfInterpolatedValues + 2];
            this.mCache = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNumberOfInterpolatedValues + 2);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i2);
                CustomVariable customVariableValueAt = this.mConstraintAttributeList.valueAt(i2);
                float[] fArrValueAt = this.mWaveProperties.valueAt(i2);
                double d = iKeyAt;
                Double.isNaN(d);
                dArr[i2] = d * 0.01d;
                customVariableValueAt.getValuesToInterpolate(this.mTempValues);
                int i3 = 0;
                while (true) {
                    if (i3 < this.mTempValues.length) {
                        dArr2[i2][i3] = r7[i3];
                        i3++;
                    }
                }
                dArr2[i2][iNumberOfInterpolatedValues] = fArrValueAt[0];
                dArr2[i2][iNumberOfInterpolatedValues + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.get(i, dArr, dArr2);
        }
    }

    protected static class Sort {
        protected Sort() {
        }

        static void doubleQuickSort(int[] iArr, float[][] fArr, int i, int i2) {
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

        private static int partition(int[] iArr, float[][] fArr, int i, int i2) {
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

        private static void swap(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    protected float calcWave(float f) {
        switch (this.mWaveShape) {
            case 1:
                return Math.signum(VAL_2PI * f);
            case 2:
                return 1.0f - Math.abs(f);
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                return 1.0f - (((f * 2.0f) + 1.0f) % 2.0f);
            case 5:
                return (float) Math.cos(VAL_2PI * f);
            case 6:
                float fAbs = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                return 1.0f - (fAbs * fAbs);
            default:
                return (float) Math.sin(VAL_2PI * f);
        }
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public void setPoint(int i, float f, float f2, int i2, float f3) {
        int[] iArr = this.mTimePoints;
        int i3 = this.count;
        iArr[i3] = i;
        float[][] fArr = this.mValues;
        fArr[i3][0] = f;
        fArr[i3][1] = f2;
        fArr[i3][2] = f3;
        this.mWaveShape = Math.max(this.mWaveShape, i2);
        this.count++;
    }

    protected void setStartTime(long j) {
        this.last_time = j;
    }

    public void setType(String str) {
        this.mType = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r12) {
        /*
            r11 = this;
            r10 = 2
            r1 = 1
            r3 = 0
            int r0 = r11.count
            if (r0 != 0) goto L2e
            java.io.PrintStream r0 = java.lang.System.err
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 25
            byte[] r2 = new byte[r2]
            r2 = {x00aa: FILL_ARRAY_DATA , data: [38, 75, 74, 9, 67, 22, 13, 86, 24, 22, 94, 95, 13, 77, 75, 70, 80, 82, 7, 92, 92, 70, 69, 89, 67} // fill-array
            java.lang.String r3 = "c98f16"
            r4 = -835530912(0xffffffffce32cf60, float:-7.4998374E8)
            java.lang.String r2 = n.NPStringFog.decode(r2, r3, r4)
            r1.append(r2)
            java.lang.String r2 = r11.mType
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.println(r1)
        L2d:
            return
        L2e:
            int[] r2 = r11.mTimePoints
            float[][] r4 = r11.mValues
            int r0 = r0 + (-1)
            androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet.Sort.doubleQuickSort(r2, r4, r3, r0)
            r0 = r1
            r2 = r3
        L39:
            int[] r4 = r11.mTimePoints
            int r5 = r4.length
            if (r0 >= r5) goto L4b
            r5 = r4[r0]
            int r6 = r0 + (-1)
            r4 = r4[r6]
            if (r5 == r4) goto L48
            int r2 = r2 + 1
        L48:
            int r0 = r0 + 1
            goto L39
        L4b:
            if (r2 != 0) goto L4e
            r2 = r1
        L4e:
            double[] r5 = new double[r2]
            r0 = 3
            int[] r0 = new int[]{r2, r0}
            java.lang.Class r2 = java.lang.Double.TYPE
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r2, r0)
            double[][] r0 = (double[][]) r0
            r2 = r3
            r4 = r3
        L5f:
            int r6 = r11.count
            if (r4 >= r6) goto La2
            if (r4 <= 0) goto L72
            int[] r6 = r11.mTimePoints
            r7 = r6[r4]
            int r8 = r4 + (-1)
            r6 = r6[r8]
            if (r7 != r6) goto L72
        L6f:
            int r4 = r4 + 1
            goto L5f
        L72:
            int[] r6 = r11.mTimePoints
            r6 = r6[r4]
            double r6 = (double) r6
            java.lang.Double.isNaN(r6)
            r8 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            double r6 = r6 * r8
            r5[r2] = r6
            r6 = r0[r2]
            float[][] r7 = r11.mValues
            r8 = r7[r4]
            r8 = r8[r3]
            double r8 = (double) r8
            r6[r3] = r8
            r6 = r0[r2]
            r8 = r7[r4]
            r8 = r8[r1]
            double r8 = (double) r8
            r6[r1] = r8
            r6 = r0[r2]
            r7 = r7[r4]
            r7 = r7[r10]
            double r8 = (double) r7
            r6[r10] = r8
            int r2 = r2 + 1
            goto L6f
        La2:
            androidx.constraintlayout.core.motion.utils.CurveFit r0 = androidx.constraintlayout.core.motion.utils.CurveFit.get(r12, r5, r0)
            r11.mCurveFit = r0
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet.setup(int):void");
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat(NPStringFog.decode(new byte[]{17, 23, 30, 65, 19}, "240b01", false, true));
        String str2 = str;
        for (int i = 0; i < this.count; i++) {
            str2 = str2 + NPStringFog.decode(new byte[]{62}, "e02f8d", -1.8774277E9f) + this.mTimePoints[i] + NPStringFog.decode(new byte[]{66, 20, 18}, "b824d0", true) + decimalFormat.format(this.mValues[i]) + NPStringFog.decode(new byte[]{105, 19}, "4327cc", -6940);
        }
        return str2;
    }
}
