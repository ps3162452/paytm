package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class PathParser {
    private static final String LOGTAG = NPStringFog.decode(new byte[]{99, 88, 77, 11, 50, 87, 65, 74, 92, 17}, "399cb6", -715663317L);

    private static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        PathDataNode(char c, float[] fArr) {
            this.mType = c;
            this.mParams = fArr;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }

        private static void addCommand(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int i;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            Path path2;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15 = fArr[0];
            float f16 = fArr[1];
            float f17 = fArr[2];
            float f18 = fArr[3];
            float f19 = fArr[4];
            float f20 = fArr[5];
            switch (c2) {
                case 'A':
                case 'a':
                    i = 7;
                    f = f18;
                    f2 = f17;
                    f3 = f16;
                    f4 = f15;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    f = f18;
                    f2 = f17;
                    f3 = f16;
                    f4 = f15;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    f = f18;
                    f2 = f17;
                    f3 = f16;
                    f4 = f15;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                    i = 2;
                    f = f18;
                    f2 = f17;
                    f3 = f16;
                    f4 = f15;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    f = f18;
                    f2 = f17;
                    f3 = f16;
                    f4 = f15;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f19, f20);
                    i = 2;
                    f2 = f19;
                    f3 = f20;
                    f4 = f19;
                    f = f20;
                    break;
                default:
                    i = 2;
                    f = f18;
                    f2 = f17;
                    f3 = f16;
                    f4 = f15;
                    break;
            }
            float f21 = f4;
            float f22 = f3;
            float f23 = f19;
            float f24 = f20;
            Path path3 = path;
            for (int i2 = 0; i2 < fArr2.length; i2 += i) {
                switch (c2) {
                    case 'A':
                        drawArc(path, f21, f22, fArr2[i2 + 5], fArr2[i2 + 6], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        float f25 = fArr2[i2 + 5];
                        float f26 = fArr2[i2 + 6];
                        f5 = f25;
                        f6 = f26;
                        f7 = f23;
                        f8 = f24;
                        f2 = f25;
                        f = f26;
                        path2 = path3;
                        break;
                    case 'C':
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f27 = fArr2[i2 + 4];
                        float f28 = fArr2[i2 + 5];
                        f2 = fArr2[i2 + 2];
                        f = fArr2[i2 + 3];
                        f5 = f27;
                        f6 = f28;
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'H':
                        path3.lineTo(fArr2[i2 + 0], f22);
                        f5 = fArr2[i2 + 0];
                        f6 = f22;
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'L':
                        path3.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f5 = fArr2[i2 + 0];
                        f6 = fArr2[i2 + 1];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'M':
                        float f29 = fArr2[i2 + 0];
                        float f30 = fArr2[i2 + 1];
                        if (i2 > 0) {
                            path3.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f5 = f29;
                            f6 = f30;
                            f7 = f23;
                            f8 = f24;
                            path2 = path3;
                        } else {
                            path3.moveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f5 = f29;
                            f6 = f30;
                            f7 = f29;
                            f8 = f30;
                            path2 = path3;
                        }
                        break;
                    case 'Q':
                        path3.quadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f2 = fArr2[i2 + 0];
                        f = fArr2[i2 + 1];
                        f5 = fArr2[i2 + 2];
                        f6 = fArr2[i2 + 3];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'S':
                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                            f9 = (2.0f * f21) - f2;
                            f10 = (2.0f * f22) - f;
                        } else {
                            f9 = f21;
                            f10 = f22;
                        }
                        path.cubicTo(f9, f10, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f2 = fArr2[i2 + 0];
                        f = fArr2[i2 + 1];
                        f5 = fArr2[i2 + 2];
                        f6 = fArr2[i2 + 3];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'T':
                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                            f21 = (2.0f * f21) - f2;
                            f22 = (2.0f * f22) - f;
                        }
                        path3.quadTo(f21, f22, fArr2[i2 + 0], fArr2[i2 + 1]);
                        f5 = fArr2[i2 + 0];
                        f6 = fArr2[i2 + 1];
                        f7 = f23;
                        f8 = f24;
                        f2 = f21;
                        f = f22;
                        path2 = path3;
                        break;
                    case 'V':
                        path.lineTo(f21, fArr2[i2 + 0]);
                        f5 = f21;
                        f6 = fArr2[i2 + 0];
                        f7 = f23;
                        f8 = f24;
                        path2 = path;
                        break;
                    case 'a':
                        drawArc(path, f21, f22, fArr2[i2 + 5] + f21, fArr2[i2 + 6] + f22, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        float f31 = f21 + fArr2[i2 + 5];
                        float f32 = f22 + fArr2[i2 + 6];
                        f5 = f31;
                        f6 = f32;
                        f7 = f23;
                        f8 = f24;
                        f2 = f31;
                        f = f32;
                        path2 = path;
                        break;
                    case 'c':
                        path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f33 = fArr2[i2 + 2];
                        float f34 = fArr2[i2 + 3];
                        f5 = f21 + fArr2[i2 + 4];
                        f2 = f33 + f21;
                        f = f22 + f34;
                        f6 = f22 + fArr2[i2 + 5];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'h':
                        path3.rLineTo(fArr2[i2 + 0], 0.0f);
                        f5 = f21 + fArr2[i2 + 0];
                        f6 = f22;
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'l':
                        path3.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f5 = f21 + fArr2[i2 + 0];
                        f6 = f22 + fArr2[i2 + 1];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'm':
                        float f35 = f21 + fArr2[i2 + 0];
                        float f36 = f22 + fArr2[i2 + 1];
                        if (i2 > 0) {
                            path3.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f5 = f35;
                            f6 = f36;
                            f7 = f23;
                            f8 = f24;
                            path2 = path3;
                        } else {
                            path3.rMoveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f5 = f35;
                            f6 = f36;
                            f7 = f35;
                            f8 = f36;
                            path2 = path3;
                        }
                        break;
                    case 'q':
                        path3.rQuadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f37 = fArr2[i2 + 0];
                        float f38 = fArr2[i2 + 1];
                        f5 = f21 + fArr2[i2 + 2];
                        f2 = f37 + f21;
                        f = f22 + f38;
                        f6 = f22 + fArr2[i2 + 3];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 's':
                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                            f11 = f21 - f2;
                            f12 = f22 - f;
                        } else {
                            f11 = 0.0f;
                            f12 = 0.0f;
                        }
                        path.rCubicTo(f11, f12, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f39 = fArr2[i2 + 0];
                        float f40 = fArr2[i2 + 1];
                        f5 = f21 + fArr2[i2 + 2];
                        f2 = f39 + f21;
                        f = f22 + f40;
                        f6 = f22 + fArr2[i2 + 3];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 't':
                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                            f13 = f21 - f2;
                            f14 = f22 - f;
                        } else {
                            f14 = 0.0f;
                            f13 = 0.0f;
                        }
                        path3.rQuadTo(f13, f14, fArr2[i2 + 0], fArr2[i2 + 1]);
                        f5 = f21 + fArr2[i2 + 0];
                        f6 = f22 + fArr2[i2 + 1];
                        f2 = f13 + f21;
                        f = f14 + f22;
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    case 'v':
                        path3.rLineTo(0.0f, fArr2[i2 + 0]);
                        f5 = f21;
                        f6 = f22 + fArr2[i2 + 0];
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                    default:
                        f5 = f21;
                        f6 = f22;
                        f7 = f23;
                        f8 = f24;
                        path2 = path3;
                        break;
                }
                c = c2;
                f21 = f5;
                f22 = f6;
                f23 = f7;
                f24 = f8;
                path3 = path2;
            }
            fArr[0] = f21;
            fArr[1] = f22;
            fArr[2] = f2;
            fArr[3] = f;
            fArr[4] = f23;
            fArr[5] = f24;
        }

        private static void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            int iCeil = (int) Math.ceil(Math.abs((4.0d * d9) / 3.141592653589793d));
            double dCos = Math.cos(d7);
            double dSin = Math.sin(d7);
            double dCos2 = Math.cos(d8);
            double dSin2 = Math.sin(d8);
            double d10 = (d4 * dCos * dCos2) + ((-d3) * dSin * dSin2);
            double d11 = iCeil;
            Double.isNaN(d11);
            double d12 = d9 / d11;
            int i = 0;
            double d13 = (dSin2 * ((-d3) * dCos)) - (dCos2 * (d4 * dSin));
            while (i < iCeil) {
                double d14 = d8 + d12;
                double dSin3 = Math.sin(d14);
                double dCos3 = Math.cos(d14);
                double d15 = (((d3 * dCos) * dCos3) + d) - ((d4 * dSin) * dSin3);
                double d16 = (d4 * dCos * dSin3) + (d3 * dSin * dCos3) + d2;
                double d17 = (((-d3) * dCos) * dSin3) - ((d4 * dSin) * dCos3);
                double d18 = (dCos3 * d4 * dCos) + (dSin3 * (-d3) * dSin);
                double dTan = Math.tan((d14 - d8) / 2.0d);
                double dSqrt = ((Math.sqrt((dTan * (3.0d * dTan)) + 4.0d) - 1.0d) * Math.sin(d14 - d8)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d13 * dSqrt) + d5), (float) ((d10 * dSqrt) + d6), (float) (d15 - (dSqrt * d17)), (float) (d16 - (dSqrt * d18)), (float) d15, (float) d16);
                d8 = d14;
                i++;
                d10 = d18;
                d5 = d15;
                d6 = d16;
                d13 = d17;
            }
        }

        private static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d3 = f;
            Double.isNaN(d3);
            double d4 = f2;
            Double.isNaN(d4);
            double d5 = f5;
            Double.isNaN(d5);
            double d6 = ((d3 * dCos) + (d4 * dSin)) / d5;
            double d7 = -f;
            Double.isNaN(d7);
            double d8 = f2;
            Double.isNaN(d8);
            double d9 = f6;
            Double.isNaN(d9);
            double d10 = ((d7 * dSin) + (d8 * dCos)) / d9;
            double d11 = f3;
            Double.isNaN(d11);
            double d12 = f4;
            Double.isNaN(d12);
            double d13 = f5;
            Double.isNaN(d13);
            double d14 = ((d11 * dCos) + (d12 * dSin)) / d13;
            double d15 = -f3;
            Double.isNaN(d15);
            double d16 = f4;
            Double.isNaN(d16);
            double d17 = f6;
            Double.isNaN(d17);
            double d18 = ((d15 * dSin) + (d16 * dCos)) / d17;
            double d19 = d6 - d14;
            double d20 = d10 - d18;
            double d21 = (d6 + d14) / 2.0d;
            double d22 = (d10 + d18) / 2.0d;
            double d23 = (d19 * d19) + (d20 * d20);
            if (d23 == 0.0d) {
                Log.w(NPStringFog.decode(new byte[]{53, 81, 22, 10, 97, 84, 23, 67, 7, 16}, "e0bb15", false), NPStringFog.decode(new byte[]{65, 101, 88, 94, 94, 67, 18, 21, 86, 69, 85, 23, 2, 90, 94, 89, 83, 94, 5, 80, 89, 67}, "a57707", 1.13547153E8d));
                return;
            }
            double d24 = (1.0d / d23) - 0.25d;
            if (d24 < 0.0d) {
                Log.w(NPStringFog.decode(new byte[]{100, 5, 69, 10, 52, 85, 70, 23, 84, 16}, "4d1bd4", true, true), NPStringFog.decode(new byte[]{105, 86, 12, 87, 64, 23, 25, 88, 23, 92, 20, 16, 86, 86, 69, 95, 85, 22, 25, 88, 21, 88, 70, 16, 25}, "99e94d", false) + d23);
                float fSqrt = (float) (Math.sqrt(d23) / 1.99999d);
                drawArc(path, f, f2, f3, f4, f5 * fSqrt, f6 * fSqrt, f7, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d24);
            double d25 = d19 * dSqrt;
            double d26 = d20 * dSqrt;
            if (z == z2) {
                d = d21 - d26;
                d2 = d25 + d22;
            } else {
                d = d26 + d21;
                d2 = d22 - d25;
            }
            double dAtan2 = Math.atan2(d10 - d2, d6 - d);
            double dAtan22 = Math.atan2(d18 - d2, d14 - d) - dAtan2;
            if (z2 != (dAtan22 >= 0.0d)) {
                dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
            }
            double d27 = f5;
            Double.isNaN(d27);
            double d28 = d27 * d;
            double d29 = f6;
            Double.isNaN(d29);
            double d30 = d2 * d29;
            arcToBezier(path, (d28 * dCos) - (d30 * dSin), (d28 * dSin) + (d30 * dCos), f5, f6, f, f2, radians, dAtan2, dAtan22);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                addCommand(path, fArr, c, pathDataNodeArr[i].mType, pathDataNodeArr[i].mParams);
                c = pathDataNodeArr[i].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.mType = pathDataNode.mType;
            int i = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i >= fArr.length) {
                    return;
                }
                this.mParams[i] = (fArr[i] * (1.0f - f)) + (pathDataNode2.mParams[i] * f);
                i++;
            }
        }
    }

    private PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathDataNode(c, fArr));
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            if (pathDataNodeArr[i].mType != pathDataNodeArr2[i].mType || pathDataNodeArr[i].mParams.length != pathDataNodeArr2[i].mParams.length) {
                return false;
            }
        }
        return true;
    }

    static float[] copyOfRange(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int iMin = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, iMin);
        return fArr2;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int iNextStart = nextStart(str, i);
            String strTrim = str.substring(i2, iNextStart).trim();
            if (strTrim.length() > 0) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i = iNextStart + 1;
            i2 = iNextStart;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            addNode(arrayList, str.charAt(i2), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathDataNodeArrCreateNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(pathDataNodeArrCreateNodesFromPathData, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{113, 70, 19, 11, 70, 23, 93, 90, 65, 20, 85, 69, 71, 93, 15, 3, 20}, "44ad47", -2.4689918E8d) + str, e);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(pathDataNodeArr[i]);
        }
        return pathDataNodeArr2;
    }

    private static void extract(String str, int i, ExtractFloatResult extractFloatResult) {
        extractFloatResult.mEndWithNegOrDot = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            switch (str.charAt(i2)) {
                case ' ':
                case ',':
                    z = false;
                    z3 = true;
                    break;
                case '-':
                    if (i2 == i || z) {
                        z = false;
                    } else {
                        extractFloatResult.mEndWithNegOrDot = true;
                        z = false;
                        z3 = true;
                    }
                    break;
                case '.':
                    if (z2) {
                        extractFloatResult.mEndWithNegOrDot = true;
                        z = false;
                        z3 = true;
                    } else {
                        z = false;
                        z2 = true;
                    }
                    break;
                case 'E':
                case 'e':
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z3) {
                extractFloatResult.mEndPosition = i2;
            }
        }
        extractFloatResult.mEndPosition = i2;
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (i < length) {
                extract(str, i, extractFloatResult);
                int i3 = extractFloatResult.mEndPosition;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i2++;
                }
                i = extractFloatResult.mEndWithNegOrDot ? i3 : i3 + 1;
            }
            return copyOfRange(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{84, 66, 23, 13, 16, 22, 88, 94, 69, 18, 3, 68, 66, 89, 11, 5, 66, 20}, "10ebb6", -1.6671224E9f) + str + NPStringFog.decode(new byte[]{18}, "031e6e", 2.028176247E9d), e);
        }
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr3 == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{101, 95, 82, 23, 86, 90, 85, 82, 68, 23, 76, 90, 17, 85, 82, 23, 81, 91, 69, 82, 69, 71, 87, 89, 80, 67, 82, 83, 24, 84, 95, 83, 23, 69, 93, 70, 68, 91, 67, 94, 86, 82, 17, 89, 88, 83, 93, 70, 17, 84, 86, 89, 86, 90, 69, 23, 85, 82, 24, 91, 68, 91, 91}, "177785", -1.2228297E9f));
        }
        if (pathDataNodeArr.length != pathDataNodeArr2.length || pathDataNodeArr2.length != pathDataNodeArr3.length) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{109, 11, 83, 69, 87, 11, 93, 6, 69, 69, 77, 11, 25, 1, 83, 69, 80, 10, 77, 6, 68, 21, 86, 8, 88, 23, 83, 1, 25, 5, 87, 7, 22, 23, 92, 23, 76, 15, 66, 12, 87, 3, 25, 13, 89, 1, 92, 23, 25, 14, 67, 22, 77, 68, 81, 2, 64, 0, 25, 16, 81, 6, 22, 22, 88, 9, 92, 67, 90, 0, 87, 3, 77, 11}, "9c6e9d", 32243));
        }
        if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr[i].interpolatePathDataNode(pathDataNodeArr2[i], pathDataNodeArr3[i], f);
        }
        return true;
    }

    private static int nextStart(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                break;
            }
            i++;
        }
        return i;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i = 0; i < pathDataNodeArr2.length; i++) {
            pathDataNodeArr[i].mType = pathDataNodeArr2[i].mType;
            for (int i2 = 0; i2 < pathDataNodeArr2[i].mParams.length; i2++) {
                pathDataNodeArr[i].mParams[i2] = pathDataNodeArr2[i].mParams[i2];
            }
        }
    }
}
