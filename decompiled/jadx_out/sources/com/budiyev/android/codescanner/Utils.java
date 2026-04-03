package com.budiyev.android.codescanner;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.os.Build;
import android.view.WindowManager;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationManagerCompat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes67.dex */
final class Utils {
    private static final float DISTORTION_STEP = 0.1f;
    private static final float MAX_DISTORTION = 3.0f;
    private static final int MAX_FPS = 30000;
    private static final float MIN_DISTORTION = 0.3f;
    private static final int MIN_FPS = 10000;
    private static final int MIN_PREVIEW_PIXELS = 589824;

    private static final class CameraSizeComparator implements Comparator<Camera.Size> {
        private CameraSizeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(@NonNull Camera.Size size, @NonNull Camera.Size size2) {
            return Utils$CameraSizeComparator$$ExternalSyntheticBackport0.m(size2.height * size2.width, size.height * size.width);
        }
    }

    private static final class FpsRangeComparator implements Comparator<int[]> {
        private FpsRangeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int iM = Utils$FpsRangeComparator$$ExternalSyntheticBackport0.m(iArr2[1], iArr[1]);
            return iM == 0 ? Utils$FpsRangeComparator$$ExternalSyntheticBackport0.m(iArr2[0], iArr[0]) : iM;
        }
    }

    public static final class SuppressErrorCallback implements ErrorCallback {
        @Override // com.budiyev.android.codescanner.ErrorCallback
        public void onError(@NonNull Throwable th) {
        }
    }

    private Utils() {
    }

    public static void configureDefaultFocusArea(@NonNull Camera.Parameters parameters, @NonNull DecoderWrapper decoderWrapper, @NonNull Rect rect) {
        Point imageSize = decoderWrapper.getImageSize();
        configureDefaultFocusArea(parameters, rect, decoderWrapper.getPreviewSize(), decoderWrapper.getViewSize(), imageSize.getX(), imageSize.getY(), decoderWrapper.getDisplayOrientation());
    }

    public static void configureDefaultFocusArea(@NonNull Camera.Parameters parameters, @NonNull Rect rect, @NonNull Point point, @NonNull Point point2, int i, int i2, int i3) {
        boolean zIsPortrait = isPortrait(i3);
        int i4 = zIsPortrait ? i2 : i;
        if (!zIsPortrait) {
            i = i2;
        }
        configureFocusArea(parameters, getImageFrameRect(i4, i, rect, point, point2), i4, i, i3);
    }

    public static void configureFocusArea(@NonNull Camera.Parameters parameters, @NonNull Rect rect, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList(1);
        Rect rectBound = rect.rotate(-i3, i / 2.0f, i2 / 2.0f).bound(0, 0, i, i2);
        arrayList.add(new Camera.Area(new android.graphics.Rect(mapCoordinate(rectBound.getLeft(), i), mapCoordinate(rectBound.getTop(), i2), mapCoordinate(rectBound.getRight(), i), mapCoordinate(rectBound.getBottom(), i2)), 1000));
        if (parameters.getMaxNumFocusAreas() > 0) {
            parameters.setFocusAreas(arrayList);
        }
        if (parameters.getMaxNumMeteringAreas() > 0) {
            parameters.setMeteringAreas(arrayList);
        }
    }

    public static void configureFocusModeForTouch(@NonNull Camera.Parameters parameters) {
        List<String> supportedFocusModes;
        if (NPStringFog.decode(new byte[]{7, 19, 77, 13}, "ff9b09", 1761070751L).equals(parameters.getFocusMode()) || (supportedFocusModes = parameters.getSupportedFocusModes()) == null || !supportedFocusModes.contains(NPStringFog.decode(new byte[]{3, 20, 76, 86}, "ba8957", 1.2009793E9f))) {
            return;
        }
        parameters.setFocusMode(NPStringFog.decode(new byte[]{7, 20, 16, 90}, "fad5dc", 579697338L));
    }

    public static void configureFpsRange(@NonNull Camera.Parameters parameters) {
        int i;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
            return;
        }
        Collections.sort(supportedPreviewFpsRange, new FpsRangeComparator());
        for (int[] iArr : supportedPreviewFpsRange) {
            int i2 = iArr[0];
            if (i2 >= MIN_FPS && (i = iArr[1]) <= MAX_FPS) {
                parameters.setPreviewFpsRange(i2, i);
                return;
            }
        }
    }

    public static void configureSceneMode(@NonNull Camera.Parameters parameters) {
        List<String> supportedSceneModes;
        if (NPStringFog.decode(new byte[]{83, 81, 20, 86, 11, 92, 84}, "10f5d8", false, true).equals(parameters.getSceneMode()) || (supportedSceneModes = parameters.getSupportedSceneModes()) == null || !supportedSceneModes.contains(NPStringFog.decode(new byte[]{84, 83, 64, 83, 92, 6, 83}, "62203b", 21724))) {
            return;
        }
        parameters.setSceneMode(NPStringFog.decode(new byte[]{7, 87, 69, 80, 12, 86, 0}, "e673c2", true));
    }

    public static void configureVideoStabilization(@NonNull Camera.Parameters parameters) {
        if (!parameters.isVideoStabilizationSupported() || parameters.getVideoStabilization()) {
            return;
        }
        parameters.setVideoStabilization(true);
    }

    @Nullable
    public static Result decodeLuminanceSource(@NonNull MultiFormatReader multiFormatReader, @NonNull LuminanceSource luminanceSource) throws ReaderException {
        Result resultDecodeWithState;
        try {
            resultDecodeWithState = multiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(luminanceSource)));
        } catch (NotFoundException e) {
            resultDecodeWithState = multiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(luminanceSource.invert())));
        } finally {
            multiFormatReader.reset();
        }
        return resultDecodeWithState;
    }

    public static void disableAutoFocus(@NonNull Camera.Parameters parameters) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (supportedFocusModes == null || supportedFocusModes.isEmpty()) {
            return;
        }
        String focusMode = parameters.getFocusMode();
        if (supportedFocusModes.contains(NPStringFog.decode(new byte[]{80, 81, 76, 80, 86}, "684529", 196464995L))) {
            if (NPStringFog.decode(new byte[]{82, 94, 78, 7, 87}, "476b3f", 10050).equals(focusMode)) {
                return;
            }
            parameters.setFocusMode(NPStringFog.decode(new byte[]{2, 11, 29, 6, 0}, "dbecd7", 1417204964L));
        } else {
            if (!supportedFocusModes.contains(NPStringFog.decode(new byte[]{4, 76, 22, 94}, "e9b18a", true)) || NPStringFog.decode(new byte[]{83, 20, 67, 88}, "2a771c", 1867160547L).equals(focusMode)) {
                return;
            }
            parameters.setFocusMode(NPStringFog.decode(new byte[]{82, 16, 77, 12}, "3e9c11", 18564));
        }
    }

    @NonNull
    public static Point findSuitableImageSize(@NonNull Camera.Parameters parameters, int i, int i2) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        if (supportedPreviewSizes != null && !supportedPreviewSizes.isEmpty()) {
            Collections.sort(supportedPreviewSizes, new CameraSizeComparator());
            float f = i / i2;
            float f2 = MIN_DISTORTION;
            while (true) {
                float f3 = f2;
                if (f3 > MAX_DISTORTION) {
                    break;
                }
                for (Camera.Size size : supportedPreviewSizes) {
                    int i3 = size.width;
                    int i4 = size.height;
                    if (i3 * i4 >= MIN_PREVIEW_PIXELS && Math.abs(f - (i3 / i4)) <= f3) {
                        return new Point(i3, i4);
                    }
                }
                f2 = 0.1f + f3;
            }
        }
        Camera.Size previewSize = parameters.getPreviewSize();
        if (previewSize != null) {
            return new Point(previewSize.width, previewSize.height);
        }
        throw new CodeScannerException(NPStringFog.decode(new byte[]{54, 93, 83, 7, 8, 81, 67, 71, 93, 69, 7, 91, 13, 85, 91, 2, 17, 70, 6, 19, 81, 4, 9, 81, 17, 82, 18, 21, 22, 81, 21, 90, 87, 18, 68, 71, 10, 73, 87}, "c32ed4", -3.98046176E8d));
    }

    public static int getDisplayOrientation(@NonNull Context context, @NonNull Camera.CameraInfo cameraInfo) {
        int i;
        int i2 = BarcodeUtils.ROTATION_180;
        WindowManager windowManager = (WindowManager) context.getSystemService(NPStringFog.decode(new byte[]{69, 92, 87, 92, 90, 79}, "259858", true));
        if (windowManager == null) {
            throw new CodeScannerException(NPStringFog.decode(new byte[]{103, 13, 87, 81, 90, 1, 18, 23, 89, 19, 87, 7, 81, 6, 69, 64, 22, 19, 91, 13, 82, 92, 65, 68, 95, 2, 88, 82, 81, 1, 64}, "2c636d", -1.003788052E9d));
        }
        int rotation = windowManager.getDefaultDisplay().getRotation();
        if (rotation == 0) {
            i = 0;
        } else if (rotation == 1) {
            i = 90;
        } else if (rotation == 2) {
            i = 180;
        } else if (rotation == 3) {
            i = BarcodeUtils.ROTATION_270;
        } else {
            if (rotation % 90 != 0) {
                throw new CodeScannerException(NPStringFog.decode(new byte[]{40, 8, 21, 3, 93, 8, 5, 70, 7, 11, 66, 17, 13, 7, 26, 66, 67, 14, 21, 7, 23, 11, 94, 15}, "afcb1a", true, false));
            }
            i = (rotation + 360) % 360;
        }
        if (cameraInfo.facing != 1) {
            i2 = 360;
        }
        return ((i2 + cameraInfo.orientation) - i) % 360;
    }

    @NonNull
    public static Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return Build.VERSION.SDK_INT >= 21 ? context.getDrawable(i) : context.getResources().getDrawable(i);
    }

    @NonNull
    public static Rect getImageFrameRect(int i, int i2, @NonNull Rect rect, @NonNull Point point, @NonNull Point point2) {
        int x = point.getX();
        int y = point.getY();
        int x2 = (x - point2.getX()) / 2;
        int y2 = (y - point2.getY()) / 2;
        float f = i / x;
        float f2 = i2 / y;
        return new Rect(Math.max(Math.round((rect.getLeft() + x2) * f), 0), Math.max(Math.round((rect.getTop() + y2) * f2), 0), Math.min(Math.round(f * (x2 + rect.getRight())), i), Math.min(Math.round(f2 * (rect.getBottom() + y2)), i2));
    }

    @NonNull
    public static Point getPreviewSize(int i, int i2, int i3, int i4) {
        if (i == i3 && i2 == i4) {
            return new Point(i3, i4);
        }
        int i5 = (i * i4) / i2;
        return i5 < i3 ? new Point(i3, (i2 * i3) / i) : new Point(i5, i4);
    }

    public static boolean isPortrait(int i) {
        return i == 90 || i == 270;
    }

    private static int mapCoordinate(int i, int i2) {
        return ((i * 2000) / i2) + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
    }

    @NonNull
    public static byte[] rotateYuv(@NonNull byte[] bArr, int i, int i2, int i3) {
        if (i3 == 0 || i3 == 360) {
            return bArr;
        }
        if (i3 % 90 != 0 || i3 < 0 || i3 > 270) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 15, 16, 89, 90, 12, 86, 65, 20, 87, 66, 4, 70, 8, 9, 86, 22, 77, 68, 0, 10, 81, 82, 95, 18, 81, 74, 24, 15, 85, 30, 65, 87, 0, 6, 73, 18, 83, 81, 8, 31}, "2af86e", true));
        }
        byte[] bArr2 = new byte[bArr.length];
        int i4 = i * i2;
        boolean z = i3 % BarcodeUtils.ROTATION_180 != 0;
        boolean z2 = i3 % BarcodeUtils.ROTATION_270 != 0;
        boolean z3 = i3 >= 180;
        for (int i5 = 0; i5 < i2; i5++) {
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = ((i5 >> 1) * i) + i4 + (i6 & (-2));
                int i8 = z ? i2 : i;
                int i9 = z ? i : i2;
                int i10 = z ? i5 : i6;
                int i11 = z ? i6 : i5;
                if (z2) {
                    i10 = (i8 - i10) - 1;
                }
                if (z3) {
                    i11 = (i9 - i11) - 1;
                }
                int i12 = ((i11 >> 1) * i8) + i4 + (i10 & (-2));
                bArr2[(i11 * i8) + i10] = (byte) (bArr[(i5 * i) + i6] & 255);
                bArr2[i12] = (byte) (bArr[i7] & 255);
                bArr2[i12 + 1] = (byte) (bArr[i7 + 1] & 255);
            }
        }
        return bArr2;
    }

    public static void setAutoFocusMode(@NonNull Camera.Parameters parameters, AutoFocusMode autoFocusMode) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (supportedFocusModes == null || supportedFocusModes.isEmpty()) {
            return;
        }
        if (autoFocusMode == AutoFocusMode.CONTINUOUS) {
            if (NPStringFog.decode(new byte[]{83, 12, 88, 69, 93, 90, 69, 12, 67, 66, 25, 68, 89, 0, 66, 68, 70, 81}, "0c6144", -2.100449209E9d).equals(parameters.getFocusMode())) {
                return;
            }
            if (supportedFocusModes.contains(NPStringFog.decode(new byte[]{2, 10, 95, 17, 10, 13, 20, 10, 68, 22, 78, 19, 8, 6, 69, 16, 17, 6}, "ae1ecc", 1.04264275E9f))) {
                parameters.setFocusMode(NPStringFog.decode(new byte[]{81, 9, 95, 66, 12, 91, 71, 9, 68, 69, 72, 69, 91, 5, 69, 67, 23, 80}, "2f16e5", false));
                return;
            }
        }
        if (NPStringFog.decode(new byte[]{89, 17, 65, 88}, "8d57e9", false).equals(parameters.getFocusMode()) || !supportedFocusModes.contains(NPStringFog.decode(new byte[]{4, 71, 68, 94}, "e2017f", 1616166723L))) {
            return;
        }
        parameters.setFocusMode(NPStringFog.decode(new byte[]{85, 67, 65, 86}, "4659bc", -1081327743L));
    }

    public static void setFlashMode(@NonNull Camera.Parameters parameters, @NonNull String str) {
        List<String> supportedFlashModes;
        if (str.equals(parameters.getFlashMode()) || (supportedFlashModes = parameters.getSupportedFlashModes()) == null || !supportedFlashModes.contains(str)) {
            return;
        }
        parameters.setFlashMode(str);
    }

    public static void setZoom(@NonNull Camera.Parameters parameters, int i) {
        if (!parameters.isZoomSupported() || parameters.getZoom() == i) {
            return;
        }
        parameters.setZoom(Math.min(i, parameters.getMaxZoom()));
    }
}
