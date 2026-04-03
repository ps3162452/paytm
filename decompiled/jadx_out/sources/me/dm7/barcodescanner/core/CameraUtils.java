package me.dm7.barcodescanner.core;

import android.hardware.Camera;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class CameraUtils {
    public static Camera getCameraInstance() {
        return getCameraInstance(getDefaultCameraId());
    }

    public static Camera getCameraInstance(int i) {
        Camera cameraOpen = null;
        try {
            cameraOpen = i == -1 ? Camera.open() : Camera.open(i);
        } catch (Exception e) {
        }
        return cameraOpen;
    }

    public static int getDefaultCameraId() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i = -1;
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == 0) {
                return i2;
            }
            i = i2;
        }
        return i;
    }

    public static boolean isFlashSupported(Camera camera) {
        if (camera == null) {
            return false;
        }
        Camera.Parameters parameters = camera.getParameters();
        if (parameters.getFlashMode() == null) {
            return false;
        }
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        return (supportedFlashModes == null || supportedFlashModes.isEmpty() || (supportedFlashModes.size() == 1 && supportedFlashModes.get(0).equals(NPStringFog.decode(new byte[]{86, 5, 81}, "9c76e9", -105)))) ? false : true;
    }
}
