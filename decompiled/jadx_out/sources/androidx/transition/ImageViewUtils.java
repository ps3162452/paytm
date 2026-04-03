package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
class ImageViewUtils {
    private static Field sDrawMatrixField;
    private static boolean sDrawMatrixFieldFetched;
    private static boolean sTryHiddenAnimateTransform = true;

    private ImageViewUtils() {
    }

    static void animateTransform(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        Matrix matrix2;
        if (Build.VERSION.SDK_INT >= 29) {
            imageView.animateTransform(matrix);
            return;
        }
        if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                imageView.invalidate();
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            hiddenAnimateTransform(imageView, matrix);
            return;
        }
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            fetchDrawMatrixField();
            if (sDrawMatrixField != null) {
                try {
                    matrix2 = (Matrix) sDrawMatrixField.get(imageView);
                    if (matrix2 == null) {
                        try {
                            Matrix matrix3 = new Matrix();
                            try {
                                sDrawMatrixField.set(imageView, matrix3);
                                matrix2 = matrix3;
                            } catch (IllegalAccessException e) {
                                matrix2 = matrix3;
                            }
                        } catch (IllegalAccessException e2) {
                        }
                    }
                } catch (IllegalAccessException e3) {
                    matrix2 = null;
                }
            } else {
                matrix2 = null;
            }
            if (matrix2 != null) {
                matrix2.set(matrix);
            }
            imageView.invalidate();
        }
    }

    private static void fetchDrawMatrixField() {
        if (sDrawMatrixFieldFetched) {
            return;
        }
        try {
            sDrawMatrixField = ImageView.class.getDeclaredField(NPStringFog.decode(new byte[]{95, 118, 69, 4, 19, 46, 83, 70, 69, 12, 28}, "227edc", 391386443L));
            sDrawMatrixField.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
        sDrawMatrixFieldFetched = true;
    }

    @RequiresApi(21)
    @SuppressLint({"NewApi"})
    private static void hiddenAnimateTransform(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        if (sTryHiddenAnimateTransform) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e) {
                sTryHiddenAnimateTransform = false;
            }
        }
    }
}
