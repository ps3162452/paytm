package androidx.core.math;

import androidx.core.location.LocationRequestCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static int addExact(int i, int i2) {
        int i3 = i + i2;
        if (((i ^ i3) & (i2 ^ i3)) >= 0) {
            return i3;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{93, 92, 21, 81, 84, 0, 70, 18, 14, 66, 86, 23, 82, 94, 14, 67}, "42a43e", 1.9903173E9f));
    }

    public static long addExact(long j, long j2) {
        long j3 = j + j2;
        if (((j ^ j3) & (j2 ^ j3)) >= 0) {
            return j3;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{89, 12, 15, 83, 68, 90, 67, 6, 19, 82, 8, 90, 66}, "5ca4d5", false, true));
    }

    public static double clamp(double d, double d2, double d3) {
        return d < d2 ? d2 : d > d3 ? d3 : d;
    }

    public static float clamp(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static long clamp(long j, long j2, long j3) {
        return j < j2 ? j2 : j > j3 ? j3 : j;
    }

    public static int decrementExact(int i) {
        if (i != Integer.MIN_VALUE) {
            return i - 1;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{15, 15, 66, 1, 3, 1, 20, 65, 89, 18, 1, 22, 0, 13, 89, 19}, "fa6ddd", -645893636L));
    }

    public static long decrementExact(long j) {
        if (j != Long.MIN_VALUE) {
            return j - 1;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{9, 10, 10, 6, 24, 90, 19, 0, 22, 7, 84, 90, 18}, "eeda85", 1.9951249E9f));
    }

    public static int incrementExact(int i) {
        if (i != Integer.MAX_VALUE) {
            return i + 1;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{13, 95, 21, 83, 3, 86, 22, 17, 14, 64, 1, 65, 2, 93, 14, 65}, "d1a6d3", 1523716256L));
    }

    public static long incrementExact(long j) {
        if (j != LocationRequestCompat.PASSIVE_INTERVAL) {
            return 1 + j;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{9, 14, 86, 95, 68, 91, 19, 4, 74, 94, 8, 91, 18}, "ea88d4", 4607));
    }

    public static int multiplyExact(int i, int i2) {
        long j = ((long) i) * ((long) i2);
        if (((int) j) == j) {
            return (int) j;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{10, 90, 76, 92, 5, 7, 17, 20, 87, 79, 7, 16, 5, 88, 87, 78}, "c489bb", 676471217L));
    }

    public static long multiplyExact(long j, long j2) {
        long j3 = j * j2;
        if (((Math.abs(j) | Math.abs(j2)) >>> 31) == 0 || ((j2 == 0 || j3 / j2 == j) && !(j == Long.MIN_VALUE && j2 == -1))) {
            return j3;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{84, 89, 94, 3, 16, 94, 78, 83, 66, 2, 92, 94, 79}, "860d01", true, false));
    }

    public static int negateExact(int i) {
        if (i != Integer.MIN_VALUE) {
            return -i;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{10, 86, 65, 93, 80, 80, 17, 24, 90, 78, 82, 71, 5, 84, 90, 79}, "c85875", 8.765834E8f));
    }

    public static long negateExact(long j) {
        if (j != Long.MIN_VALUE) {
            return -j;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{85, 86, 15, 94, 16, 92, 79, 92, 19, 95, 92, 92, 78}, "99a903", -574));
    }

    public static int subtractExact(int i, int i2) {
        int i3 = i - i2;
        if (((i ^ i2) & (i ^ i3)) >= 0) {
            return i3;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{92, 88, 66, 4, 4, 1, 71, 22, 89, 23, 6, 22, 83, 90, 89, 22}, "566acd", 4.772148E8f));
    }

    public static long subtractExact(long j, long j2) {
        long j3 = j - j2;
        if (((j ^ j2) & (j ^ j3)) >= 0) {
            return j3;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{89, 95, 88, 80, 22, 12, 67, 85, 68, 81, 90, 12, 66}, "50676c", false, false));
    }

    public static int toIntExact(long j) {
        if (((int) j) == j) {
            return (int) j;
        }
        throw new ArithmeticException(NPStringFog.decode(new byte[]{12, 95, 71, 1, 85, 87, 23, 17, 92, 18, 87, 64, 3, 93, 92, 19}, "e13d22", true, false));
    }
}
