package me.dm7.barcodescanner.core;

import android.hardware.Camera;
import android.support.annotation.NonNull;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class CameraWrapper {
    public final Camera mCamera;
    public final int mCameraId;

    private CameraWrapper(@NonNull Camera camera, int i) {
        if (camera == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{118, 82, 93, 82, 66, 85, 21, 80, 81, 89, 94, 91, 65, 19, 82, 82, 16, 90, 64, 95, 92}, "530704", -13459));
        }
        this.mCamera = camera;
        this.mCameraId = i;
    }

    public static CameraWrapper getWrapper(Camera camera, int i) {
        if (camera == null) {
            return null;
        }
        return new CameraWrapper(camera, i);
    }
}
