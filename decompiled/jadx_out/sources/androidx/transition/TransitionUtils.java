package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: loaded from: classes51.dex */
class TransitionUtils {
    private static final boolean HAS_IS_ATTACHED_TO_WINDOW;
    private static final boolean HAS_OVERLAY;
    private static final boolean HAS_PICTURE_BITMAP;
    private static final int MAX_IMAGE_SIZE = 1048576;

    static class MatrixEvaluator implements TypeEvaluator<Matrix> {
        final float[] mTempStartValues = new float[9];
        final float[] mTempEndValues = new float[9];
        final Matrix mTempMatrix = new Matrix();

        MatrixEvaluator() {
        }

        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.mTempStartValues);
            matrix2.getValues(this.mTempEndValues);
            for (int i = 0; i < 9; i++) {
                this.mTempEndValues[i] = ((this.mTempEndValues[i] - this.mTempStartValues[i]) * f) + this.mTempStartValues[i];
            }
            this.mTempMatrix.setValues(this.mTempEndValues);
            return this.mTempMatrix;
        }
    }

    static {
        HAS_IS_ATTACHED_TO_WINDOW = Build.VERSION.SDK_INT >= 19;
        HAS_OVERLAY = Build.VERSION.SDK_INT >= 18;
        HAS_PICTURE_BITMAP = Build.VERSION.SDK_INT >= 28;
    }

    private TransitionUtils() {
    }

    static View copyViewImage(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        ViewUtils.transformMatrixToGlobal(view, matrix);
        ViewUtils.transformMatrixToLocal(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int iRound = Math.round(rectF.left);
        int iRound2 = Math.round(rectF.top);
        int iRound3 = Math.round(rectF.right);
        int iRound4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmapCreateViewBitmap = createViewBitmap(view, matrix, rectF, viewGroup);
        if (bitmapCreateViewBitmap != null) {
            imageView.setImageBitmap(bitmapCreateViewBitmap);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, BasicMeasure.EXACTLY));
        imageView.layout(iRound, iRound2, iRound3, iRound4);
        return imageView;
    }

    private static Bitmap createViewBitmap(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean zIsAttachedToWindow;
        boolean z;
        ViewGroup viewGroup2;
        Bitmap bitmapCreateBitmap = null;
        int iIndexOfChild = 0;
        if (HAS_IS_ATTACHED_TO_WINDOW) {
            z = !view.isAttachedToWindow();
            zIsAttachedToWindow = viewGroup == null ? false : viewGroup.isAttachedToWindow();
        } else {
            zIsAttachedToWindow = false;
            z = false;
        }
        if (HAS_OVERLAY && z) {
            if (zIsAttachedToWindow) {
                viewGroup2 = (ViewGroup) view.getParent();
                iIndexOfChild = viewGroup2.indexOfChild(view);
                viewGroup.getOverlay().add(view);
            }
            return bitmapCreateBitmap;
        }
        viewGroup2 = null;
        int iRound = Math.round(rectF.width());
        int iRound2 = Math.round(rectF.height());
        if (iRound > 0 && iRound2 > 0) {
            float fMin = Math.min(1.0f, 1048576.0f / (iRound * iRound2));
            int iRound3 = Math.round(iRound * fMin);
            int iRound4 = Math.round(iRound2 * fMin);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(fMin, fMin);
            if (HAS_PICTURE_BITMAP) {
                Picture picture = new Picture();
                Canvas canvasBeginRecording = picture.beginRecording(iRound3, iRound4);
                canvasBeginRecording.concat(matrix);
                view.draw(canvasBeginRecording);
                picture.endRecording();
                bitmapCreateBitmap = Bitmap.createBitmap(picture);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(iRound3, iRound4, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.concat(matrix);
                view.draw(canvas);
            }
        }
        if (HAS_OVERLAY && z) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, iIndexOfChild);
        }
        return bitmapCreateBitmap;
    }

    static Animator mergeAnimators(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }
}
