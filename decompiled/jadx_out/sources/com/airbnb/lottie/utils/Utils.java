package com.airbnb.lottie.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public final class Utils {
    public static final int SECOND_IN_NANOS = 1000000000;
    private static final ThreadLocal<PathMeasure> threadLocalPathMeasure = new ThreadLocal<PathMeasure>() { // from class: com.airbnb.lottie.utils.Utils.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    };
    private static final ThreadLocal<Path> threadLocalTempPath = new ThreadLocal<Path>() { // from class: com.airbnb.lottie.utils.Utils.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<Path> threadLocalTempPath2 = new ThreadLocal<Path>() { // from class: com.airbnb.lottie.utils.Utils.3
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<float[]> threadLocalPoints = new ThreadLocal<float[]>() { // from class: com.airbnb.lottie.utils.Utils.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public float[] initialValue() {
            return new float[4];
        }
    };
    private static final float INV_SQRT_2 = (float) (Math.sqrt(2.0d) / 2.0d);
    private static float dpScale = -1.0f;

    private Utils() {
    }

    public static void applyTrimPathIfNeeded(Path path, float f, float f2, float f3) {
        L.beginSection(NPStringFog.decode(new byte[]{86, 69, 19, 85, 64, 50, 69, 92, 14, 105, 88, 18, 95, 124, 5, 119, 92, 3, 83, 80, 7}, "75c99f", 1.009234109E9d));
        PathMeasure pathMeasure = threadLocalPathMeasure.get();
        Path path2 = threadLocalTempPath.get();
        Path path3 = threadLocalTempPath2.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f == 1.0f && f2 == 0.0f) {
            L.endSection(NPStringFog.decode(new byte[]{2, 71, 64, 14, 78, 103, 17, 94, 93, 50, 86, 71, 11, 126, 86, 44, 82, 86, 7, 82, 84}, "c70b73", 1277139598L));
            return;
        }
        if (length < 1.0f || Math.abs((f2 - f) - 1.0f) < 0.01d) {
            L.endSection(NPStringFog.decode(new byte[]{2, 18, 69, 90, 77, 101, 17, 11, 88, 102, 85, 69, 11, 43, 83, 120, 81, 84, 7, 7, 81}, "cb5641", 30535));
            return;
        }
        float f4 = length * f;
        float f5 = length * f2;
        float fMin = Math.min(f4, f5);
        float fMax = Math.max(f4, f5);
        float f6 = f3 * length;
        float fFloorMod = fMin + f6;
        float fFloorMod2 = fMax + f6;
        if (fFloorMod >= length && fFloorMod2 >= length) {
            fFloorMod = MiscUtils.floorMod(fFloorMod, length);
            fFloorMod2 = MiscUtils.floorMod(fFloorMod2, length);
        }
        if (fFloorMod < 0.0f) {
            fFloorMod = MiscUtils.floorMod(fFloorMod, length);
        }
        if (fFloorMod2 < 0.0f) {
            fFloorMod2 = MiscUtils.floorMod(fFloorMod2, length);
        }
        if (fFloorMod == fFloorMod2) {
            path.reset();
            L.endSection(NPStringFog.decode(new byte[]{3, 66, 73, 94, 65, 103, 16, 91, 84, 98, 89, 71, 10, 123, 95, 124, 93, 86, 6, 87, 93}, "b29283", 17222));
            return;
        }
        if (fFloorMod >= fFloorMod2) {
            fFloorMod -= length;
        }
        path2.reset();
        pathMeasure.getSegment(fFloorMod, fFloorMod2, path2, true);
        if (fFloorMod2 > length) {
            path3.reset();
            pathMeasure.getSegment(0.0f, fFloorMod2 % length, path3, true);
            path2.addPath(path3);
        } else if (fFloorMod < 0.0f) {
            path3.reset();
            pathMeasure.getSegment(fFloorMod + length, length, path3, true);
            path2.addPath(path3);
        }
        path.set(path2);
        L.endSection(NPStringFog.decode(new byte[]{87, 71, 68, 95, 28, 53, 68, 94, 89, 99, 4, 21, 94, 126, 82, 125, 0, 4, 82, 82, 80}, "6743ea", true));
    }

    public static void applyTrimPathIfNeeded(Path path, @Nullable TrimPathContent trimPathContent) {
        if (trimPathContent == null || trimPathContent.isHidden()) {
            return;
        }
        applyTrimPathIfNeeded(path, ((FloatKeyframeAnimation) trimPathContent.getStart()).getFloatValue() / 100.0f, ((FloatKeyframeAnimation) trimPathContent.getEnd()).getFloatValue() / 100.0f, ((FloatKeyframeAnimation) trimPathContent.getOffset()).getFloatValue() / 360.0f);
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static Path createPath(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            path.cubicTo(pointF.x + pointF3.x, pointF.y + pointF3.y, pointF2.x + pointF4.x, pointF2.y + pointF4.y, pointF2.x, pointF2.y);
        }
        return path;
    }

    public static float dpScale() {
        if (dpScale == -1.0f) {
            dpScale = Resources.getSystem().getDisplayMetrics().density;
        }
        return dpScale;
    }

    public static float getAnimationScale(Context context) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(context.getContentResolver(), NPStringFog.decode(new byte[]{4, 95, 91, 92, 0, 67, 10, 67, 109, 85, 20, 69, 4, 69, 91, 94, 15, 104, 22, 82, 83, 93, 4}, "e121a7", true, false), 1.0f) : Settings.System.getFloat(context.getContentResolver(), NPStringFog.decode(new byte[]{2, 10, 12, 89, 88, 67, 12, 22, 58, 80, 76, 69, 2, 16, 12, 91, 87, 104, 16, 7, 4, 88, 92}, "cde497", true), 1.0f);
    }

    public static float getScale(Matrix matrix) {
        float[] fArr = threadLocalPoints.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = INV_SQRT_2;
        fArr[3] = INV_SQRT_2;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean hasZeroScaleAxis(Matrix matrix) {
        float[] fArr = threadLocalPoints.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static int hashFor(float f, float f2, float f3, float f4) {
        int i = f != 0.0f ? (int) (527 * f) : 17;
        if (f2 != 0.0f) {
            i = (int) (i * 31 * f2);
        }
        if (f3 != 0.0f) {
            i = (int) (i * 31 * f3);
        }
        return f4 != 0.0f ? (int) (i * 31 * f4) : i;
    }

    public static boolean isAtLeastVersion(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i < i4) {
            return false;
        }
        if (i <= i4) {
            if (i2 < i5) {
                return false;
            }
            if (i2 <= i5 && i3 < i6) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNetworkException(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    public static Bitmap renderPath(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, false);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) rectF.right, (int) rectF.bottom, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        LPaint lPaint = new LPaint();
        lPaint.setAntiAlias(true);
        lPaint.setColor(-16776961);
        canvas.drawPath(path, lPaint);
        return bitmapCreateBitmap;
    }

    public static Bitmap resizeBitmapIfNeeded(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static void saveLayerCompat(Canvas canvas, RectF rectF, Paint paint) {
        saveLayerCompat(canvas, rectF, paint, 31);
    }

    public static void saveLayerCompat(Canvas canvas, RectF rectF, Paint paint, int i) {
        L.beginSection(NPStringFog.decode(new byte[]{54, 17, 15, 13, 18, 70, 16, 4, 16, 4, 45, 4, 26, 0, 20}, "cefaae", 1.08500034E8d));
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        L.endSection(NPStringFog.decode(new byte[]{96, 16, 15, 95, 22, 18, 70, 5, 16, 86, 41, 80, 76, 1, 20}, "5df3e1", 7.93039537E8d));
    }
}
