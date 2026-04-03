package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
class CanvasUtils {
    private static Method sInorderBarrierMethod;
    private static boolean sOrderMethodsFetched;
    private static Method sReorderBarrierMethod;

    private CanvasUtils() {
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    static void enableZ(@NonNull Canvas canvas, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (z) {
                canvas.enableZ();
                return;
            } else {
                canvas.disableZ();
                return;
            }
        }
        if (Build.VERSION.SDK_INT == 28) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 14, 11, 64, 65, 95, 84, 18, 10, 92, 5, 18, 85, 9, 7, 64, 15, 21, 69, 70, 21, 92, 19, 89, 17, 9, 12, 19, 49, 91, 84, 71}, "1fb3a2", 1.132034903E9d));
        }
        if (!sOrderMethodsFetched) {
            try {
                sReorderBarrierMethod = Canvas.class.getDeclaredMethod(NPStringFog.decode(new byte[]{88, 94, 22, 85, 71, 64, 99, 85, 10, 66, 81, 81, 67, 114, 4, 66, 71, 93, 84, 66}, "10e054", 2.74784431E8d), new Class[0]);
                sReorderBarrierMethod.setAccessible(true);
                sInorderBarrierMethod = Canvas.class.getDeclaredMethod(NPStringFog.decode(new byte[]{90, 95, 65, 0, 20, 65, 122, 95, 93, 23, 2, 80, 65, 115, 83, 23, 20, 92, 86, 67}, "312ef5", 12285), new Class[0]);
                sInorderBarrierMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            sOrderMethodsFetched = true;
        }
        if (z) {
            try {
                if (sReorderBarrierMethod != null) {
                    sReorderBarrierMethod.invoke(canvas, new Object[0]);
                }
            } catch (IllegalAccessException e2) {
                return;
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
        if (z || sInorderBarrierMethod == null) {
            return;
        }
        sInorderBarrierMethod.invoke(canvas, new Object[0]);
    }
}
