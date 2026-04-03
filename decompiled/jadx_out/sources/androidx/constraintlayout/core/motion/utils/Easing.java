package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class Easing {
    String str = NPStringFog.decode(new byte[]{10, 0, 80, 88, 23, 94, 23, 29}, "cd56c7", -1.8273385E9f);
    private static final String ACCELERATE = NPStringFog.decode(new byte[]{0, 67, 0, 90, 87, 29, 83, 24, 86, 31, 20, 5, 77, 6, 87, 31, 20, 5, 77, 14, 78, 19, 4, 27, 84, 31}, "c6b345", -140189384L);
    private static final String ACCELERATE_NAME = NPStringFog.decode(new byte[]{89, 2, 91, 92, 10, 4, 74, 0, 76, 92}, "8a89fa", true, true);
    private static final String ANTICIPATE = NPStringFog.decode(new byte[]{86, 67, 6, 13, 85, 25, 5, 24, 87, 82, 26, 17, 5, 26, 68, 84, 24, 7, 3, 26, 68, 73, 6, 31, 0, 0, 77}, "56dd61", false, false);
    private static final String ANTICIPATE_NAME = NPStringFog.decode(new byte[]{2, 13, 65, 15, 1, 93, 19, 2, 65, 3}, "cc5fb4", -563081213L);
    private static final String DECELERATE = NPStringFog.decode(new byte[]{87, 64, 81, 8, 2, 24, 4, 27, 3, 77, 65, 0, 26, 5, 31, 65, 81, 30, 6, 25, 19, 81, 79, 9, 1, 28}, "453aa0", -1.415570866E9d);
    private static final String DECELERATE_NAME = NPStringFog.decode(new byte[]{86, 7, 85, 85, 14, 3, 64, 3, 66, 85}, "2b60bf", -1.159076635E9d);
    private static final String LINEAR = NPStringFog.decode(new byte[]{5, 65, 4, 13, 80, 27, 87, 24, 70, 85, 31, 19, 86, 24, 70, 84, 26}, "f4fd33", -391756222L);
    private static final String LINEAR_NAME = NPStringFog.decode(new byte[]{95, 92, 91, 93, 83, 70}, "355824", true, false);
    private static final String OVERSHOOT = NPStringFog.decode(new byte[]{91, 19, 3, 95, 87, 73, 8, 72, 82, 2, 24, 65, 9, 72, 84, 0, 24, 65, 8, 72, 87, 2, 24, 65, 9, 79}, "8fa64a", 20356);
    private static final String OVERSHOOT_NAME = NPStringFog.decode(new byte[]{9, 78, 85, 66, 64, 91, 9, 87, 68}, "f80033", -1549024494L);
    private static final String STANDARD = NPStringFog.decode(new byte[]{86, 71, 83, 8, 80, 26, 5, 28, 5, 77, 19, 2, 27, 2, 29, 65, 3, 28, 7, 30, 17, 80, 26}, "521a32", true);
    private static final String STANDARD_NAME = NPStringFog.decode(new byte[]{18, 16, 82, 93, 7, 88, 19, 0}, "ad33c9", false, false);
    static Easing sDefault = new Easing();
    public static String[] NAMED_EASING = {NPStringFog.decode(new byte[]{75, 65, 89, 93, 0, 88, 74, 81}, "8583d9", false, false), NPStringFog.decode(new byte[]{83, 1, 91, 80, 13, 0, 64, 3, 76, 80}, "2b85ae", false), NPStringFog.decode(new byte[]{1, 6, 0, 81, 91, 85, 23, 2, 23, 81}, "ecc470", -5863), NPStringFog.decode(new byte[]{84, 89, 94, 92, 83, 68}, "800926", false, false)};

    static class CubicEasing extends Easing {
        double x1;
        double x2;
        double y1;
        double y2;
        private static double error = 0.01d;
        private static double d_error = 1.0E-4d;

        public CubicEasing(double d, double d2, double d3, double d4) {
            setup(d, d2, d3, d4);
        }

        CubicEasing(String str) {
            this.str = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.x1 = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int iIndexOf3 = str.indexOf(44, iIndexOf2 + 1);
            this.y1 = Double.parseDouble(str.substring(iIndexOf2 + 1, iIndexOf3).trim());
            int iIndexOf4 = str.indexOf(44, iIndexOf3 + 1);
            this.x2 = Double.parseDouble(str.substring(iIndexOf3 + 1, iIndexOf4).trim());
            this.y2 = Double.parseDouble(str.substring(iIndexOf4 + 1, str.indexOf(41, iIndexOf4 + 1)).trim());
        }

        private double getDiffX(double d) {
            double d2 = 1.0d - d;
            double d3 = this.x1;
            double d4 = this.x2;
            return (d2 * 6.0d * d * (d4 - d3)) + (3.0d * d2 * d2 * d3) + (3.0d * d * d * (1.0d - d4));
        }

        private double getDiffY(double d) {
            double d2 = 1.0d - d;
            double d3 = this.y1;
            double d4 = this.y2;
            return (d2 * 6.0d * d * (d4 - d3)) + (3.0d * d2 * d2 * d3) + (3.0d * d * d * (1.0d - d4));
        }

        private double getX(double d) {
            double d2 = 1.0d - d;
            return (d2 * 3.0d * d * d * this.x2) + (this.x1 * d2 * 3.0d * d2 * d) + (d * d * d);
        }

        private double getY(double d) {
            double d2 = 1.0d - d;
            return (d2 * 3.0d * d * d * this.y2) + (this.y1 * d2 * 3.0d * d2 * d) + (d * d * d);
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double get(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > error) {
                d2 *= 0.5d;
                d3 = getX(d3) < d ? d3 + d2 : d3 - d2;
            }
            double x = getX(d3 - d2);
            double x2 = getX(d3 + d2);
            double y = getY(d3 - d2);
            return (((getY(d2 + d3) - y) * (d - x)) / (x2 - x)) + y;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double getDiff(double d) {
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > d_error) {
                d2 *= 0.5d;
                d3 = getX(d3) < d ? d3 + d2 : d3 - d2;
            }
            return (getY(d2 + d3) - getY(d3 - d2)) / (getX(d3 + d2) - getX(d3 - d2));
        }

        void setup(double d, double d2, double d3, double d4) {
            this.x1 = d;
            this.y1 = d2;
            this.x2 = d3;
            this.y2 = d4;
        }
    }

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith(NPStringFog.decode(new byte[]{2, 69, 1, 88, 2}, "a0c1ab", true, true))) {
            return new CubicEasing(str);
        }
        if (str.startsWith(NPStringFog.decode(new byte[]{67, 22, 90, 95, 87, 1}, "0f669d", -2.68457742E8d))) {
            return new StepCurve(str);
        }
        if (str.startsWith(NPStringFog.decode(new byte[]{103, 1, 9, 84, 89, 81, 95}, "4ba802", false, true))) {
            return new Schlick(str);
        }
        byte b = -1;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals(ACCELERATE_NAME)) {
                    b = 1;
                }
                break;
            case -1263948740:
                if (str.equals(DECELERATE_NAME)) {
                    b = 2;
                }
                break;
            case -1197605014:
                if (str.equals(ANTICIPATE_NAME)) {
                    b = 4;
                }
                break;
            case -1102672091:
                if (str.equals(LINEAR_NAME)) {
                    b = 3;
                }
                break;
            case -749065269:
                if (str.equals(OVERSHOOT_NAME)) {
                    b = 5;
                }
                break;
            case 1312628413:
                if (str.equals(STANDARD_NAME)) {
                    b = 0;
                }
                break;
        }
        switch (b) {
            case 0:
                return new CubicEasing(STANDARD);
            case 1:
                return new CubicEasing(ACCELERATE);
            case 2:
                return new CubicEasing(DECELERATE);
            case 3:
                return new CubicEasing(LINEAR);
            case 4:
                return new CubicEasing(ANTICIPATE);
            case 5:
                return new CubicEasing(OVERSHOOT);
            default:
                System.err.println(NPStringFog.decode(new byte[]{22, 68, 7, 88, 66, 12, 22, 95, 9, 88, 116, 4, 17, 95, 8, 81, 17, 22, 27, 88, 18, 87, 73, 69, 7, 68, 20, 89, 67, 69, 17, 79, 8, 66, 80, 29, 88, 66, 20, 87, 95, 22, 11, 66, 15, 89, 95, 32, 3, 69, 15, 88, 86, 88, 64, 85, 19, 84, 88, 6, 74, 7, 72, 6, 29, 85, 76, 3, 74, 6, 31, 85, 78, 6, 72, 0, 24, 71, 66, 89, 20, 22}, "b6f61e", -7.02887444E8d) + Arrays.toString(NAMED_EASING));
                return sDefault;
        }
    }

    public double get(double d) {
        return d;
    }

    public double getDiff(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.str;
    }
}
