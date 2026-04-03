package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.io.PrintStream;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class KeyFrameArray {

    public static class CustomArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomAttribute[] values = new CustomAttribute[101];

        public CustomArray() {
            clear();
        }

        public void append(int i, CustomAttribute customAttribute) {
            if (this.values[i] != null) {
                remove(i);
            }
            this.values[i] = customAttribute;
            int[] iArr = this.keys;
            int i2 = this.count;
            this.count = i2 + 1;
            iArr[i2] = i;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.keys, EMPTY);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            System.out.println(NPStringFog.decode(new byte[]{52, 2, 24}, "b88dbb", -1535236186L) + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print(NPStringFog.decode(new byte[]{45, 95, 69, 110}, "fee526", -1703119557L));
            int i = 0;
            while (i < this.count) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? "" : NPStringFog.decode(new byte[]{24, 18}, "42165d", true));
                sb.append(valueAt(i));
                printStream.print(sb.toString());
                i++;
            }
            System.out.println(NPStringFog.decode(new byte[]{105}, "4feeb5", -1.0295035E9f));
        }

        public int keyAt(int i) {
            return this.keys[i];
        }

        public void remove(int i) {
            int i2 = 0;
            this.values[i] = null;
            int i3 = 0;
            while (true) {
                int i4 = this.count;
                if (i2 >= i4) {
                    this.count = i4 - 1;
                    return;
                }
                int[] iArr = this.keys;
                if (i == iArr[i2]) {
                    iArr[i2] = EMPTY;
                    i3++;
                }
                if (i2 != i3) {
                    iArr[i2] = iArr[i3];
                }
                i3++;
                i2++;
            }
        }

        public int size() {
            return this.count;
        }

        public CustomAttribute valueAt(int i) {
            return this.values[this.keys[i]];
        }
    }

    public static class CustomVar {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomVariable[] values = new CustomVariable[101];

        public CustomVar() {
            clear();
        }

        public void append(int i, CustomVariable customVariable) {
            if (this.values[i] != null) {
                remove(i);
            }
            this.values[i] = customVariable;
            int[] iArr = this.keys;
            int i2 = this.count;
            this.count = i2 + 1;
            iArr[i2] = i;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.keys, EMPTY);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            System.out.println(NPStringFog.decode(new byte[]{100, 91, 70}, "2afe06", true, true) + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print(NPStringFog.decode(new byte[]{125, 92, 70, 57}, "6ffb90", true, true));
            int i = 0;
            while (i < this.count) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? "" : NPStringFog.decode(new byte[]{20, 25}, "89386f", true, true));
                sb.append(valueAt(i));
                printStream.print(sb.toString());
                i++;
            }
            System.out.println(NPStringFog.decode(new byte[]{105}, "49bbc3", 1185376505L));
        }

        public int keyAt(int i) {
            return this.keys[i];
        }

        public void remove(int i) {
            int i2 = 0;
            this.values[i] = null;
            int i3 = 0;
            while (true) {
                int i4 = this.count;
                if (i2 >= i4) {
                    this.count = i4 - 1;
                    return;
                }
                int[] iArr = this.keys;
                if (i == iArr[i2]) {
                    iArr[i2] = EMPTY;
                    i3++;
                }
                if (i2 != i3) {
                    iArr[i2] = iArr[i3];
                }
                i3++;
                i2++;
            }
        }

        public int size() {
            return this.count;
        }

        public CustomVariable valueAt(int i) {
            return this.values[this.keys[i]];
        }
    }

    static class FloatArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        float[][] values = new float[101][];

        public FloatArray() {
            clear();
        }

        public void append(int i, float[] fArr) {
            if (this.values[i] != null) {
                remove(i);
            }
            this.values[i] = fArr;
            int[] iArr = this.keys;
            int i2 = this.count;
            this.count = i2 + 1;
            iArr[i2] = i;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.keys, EMPTY);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            System.out.println(NPStringFog.decode(new byte[]{53, 14, 24}, "c48569", -1.6400426E9f) + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print(NPStringFog.decode(new byte[]{123, 89, 16, 63}, "0c0d43", -1224));
            int i = 0;
            while (i < this.count) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? "" : NPStringFog.decode(new byte[]{72, 24}, "d872d4", -3.36737808E8d));
                sb.append(Arrays.toString(valueAt(i)));
                printStream.print(sb.toString());
                i++;
            }
            System.out.println(NPStringFog.decode(new byte[]{59}, "f04f16", 1602245407L));
        }

        public int keyAt(int i) {
            return this.keys[i];
        }

        public void remove(int i) {
            int i2 = 0;
            this.values[i] = null;
            int i3 = 0;
            while (true) {
                int i4 = this.count;
                if (i2 >= i4) {
                    this.count = i4 - 1;
                    return;
                }
                int[] iArr = this.keys;
                if (i == iArr[i2]) {
                    iArr[i2] = EMPTY;
                    i3++;
                }
                if (i2 != i3) {
                    iArr[i2] = iArr[i3];
                }
                i3++;
                i2++;
            }
        }

        public int size() {
            return this.count;
        }

        public float[] valueAt(int i) {
            return this.values[this.keys[i]];
        }
    }
}
