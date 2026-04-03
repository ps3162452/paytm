package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes51.dex */
public class ChangeTransform extends Transition {
    private static final boolean SUPPORTS_VIEW_REMOVAL_SUPPRESSION;
    private boolean mReparent;
    private Matrix mTempMatrix;
    boolean mUseOverlay;
    private static final String PROPNAME_INTERMEDIATE_MATRIX = NPStringFog.decode(new byte[]{86, 15, 93, 64, 11, 15, 83, 91, 90, 90, 5, 8, 80, 4, 109, 64, 5, 8, 68, 7, 86, 64, 9, 92, 94, 15, 77, 87, 22, 11, 82, 5, 80, 83, 16, 3, 122, 0, 77, 64, 13, 30}, "7a92df", -1.377218065E9d);
    private static final String PROPNAME_INTERMEDIATE_PARENT_MATRIX = NPStringFog.decode(new byte[]{4, 91, 5, 64, 12, 8, 1, 15, 2, 90, 2, 15, 2, 80, 53, 64, 2, 15, 22, 83, 14, 64, 14, 91, 12, 91, 21, 87, 17, 12, 0, 81, 8, 83, 23, 4, 53, 84, 19, 87, 13, 21, 40, 84, 21, 64, 10, 25}, "e5a2ca", false, false);
    private static final String PROPNAME_MATRIX = NPStringFog.decode(new byte[]{86, 93, 80, 20, 95, 81, 83, 9, 87, 14, 81, 86, 80, 86, 96, 20, 81, 86, 68, 85, 91, 20, 93, 2, 90, 82, 64, 20, 89, 64}, "734f08", -7.314451E8f);
    private static final String PROPNAME_PARENT = NPStringFog.decode(new byte[]{85, 93, 86, 16, 9, 15, 80, 9, 81, 10, 7, 8, 83, 86, 102, 16, 7, 8, 71, 85, 93, 16, 11, 92, 68, 82, 64, 7, 8, 18}, "432bff", 8.21427E8f);
    private static final String PROPNAME_PARENT_MATRIX = NPStringFog.decode(new byte[]{88, 88, 82, 71, 92, 80, 93, 12, 85, 93, 82, 87, 94, 83, 98, 71, 82, 87, 74, 80, 89, 71, 94, 3, 73, 87, 68, 80, 93, 77, 116, 87, 66, 71, 90, 65}, "966539", -1.7343496E9f);
    private static final String PROPNAME_TRANSFORMS = NPStringFog.decode(new byte[]{4, 86, 81, 70, 9, 93, 1, 2, 86, 92, 7, 90, 2, 93, 97, 70, 7, 90, 22, 94, 90, 70, 11, 14, 17, 74, 84, 90, 21, 82, 10, 74, 88, 71}, "e854f4", -1.3247538E8f);
    private static final String[] sTransitionProperties = {NPStringFog.decode(new byte[]{80, 86, 86, 22, 88, 93, 85, 2, 81, 12, 86, 90, 86, 93, 102, 22, 86, 90, 66, 94, 93, 22, 90, 14, 92, 89, 70, 22, 94, 76}, "182d74", -2.062176456E9d), NPStringFog.decode(new byte[]{0, 8, 84, 75, 14, 89, 5, 92, 83, 81, 0, 94, 6, 3, 100, 75, 0, 94, 18, 0, 95, 75, 12, 10, 21, 20, 81, 87, 18, 86, 14, 20, 93, 74}, "af09a0", false), NPStringFog.decode(new byte[]{84, 12, 84, 16, 95, 94, 81, 88, 83, 10, 81, 89, 82, 7, 100, 16, 81, 89, 70, 4, 95, 16, 93, 13, 69, 3, 66, 7, 94, 67, 120, 3, 68, 16, 89, 79}, "5b0b07", true)};
    private static final Property<PathAnimatorMatrix, float[]> NON_TRANSLATIONS_PROPERTY = new Property<PathAnimatorMatrix, float[]>(float[].class, NPStringFog.decode(new byte[]{10, 13, 89, 49, 16, 87, 10, 17, 91, 4, 22, 95, 11, 12, 68}, "db7eb6", 1.501786663E9d)) { // from class: androidx.transition.ChangeTransform.1
        @Override // android.util.Property
        public float[] get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public void set(PathAnimatorMatrix pathAnimatorMatrix, float[] fArr) {
            pathAnimatorMatrix.setValues(fArr);
        }
    };
    private static final Property<PathAnimatorMatrix, PointF> TRANSLATIONS_PROPERTY = new Property<PathAnimatorMatrix, PointF>(PointF.class, NPStringFog.decode(new byte[]{17, 19, 82, 11, 69, 89, 4, 21, 90, 10, 88, 70}, "ea3e65", -2.5500026E8f)) { // from class: androidx.transition.ChangeTransform.2
        @Override // android.util.Property
        public PointF get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public void set(PathAnimatorMatrix pathAnimatorMatrix, PointF pointF) {
            pathAnimatorMatrix.setTranslation(pointF);
        }
    };

    private static class GhostListener extends TransitionListenerAdapter {
        private GhostView mGhostView;
        private View mView;

        GhostListener(View view, GhostView ghostView) {
            this.mView = view;
            this.mGhostView = ghostView;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            transition.removeListener(this);
            GhostViewUtils.removeGhost(this.mView);
            this.mView.setTag(R.id.transition_transform, null);
            this.mView.setTag(R.id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.mGhostView.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.mGhostView.setVisibility(0);
        }
    }

    private static class PathAnimatorMatrix {
        private final Matrix mMatrix = new Matrix();
        private float mTranslationX;
        private float mTranslationY;
        private final float[] mValues;
        private final View mView;

        PathAnimatorMatrix(View view, float[] fArr) {
            this.mView = view;
            this.mValues = (float[]) fArr.clone();
            this.mTranslationX = this.mValues[2];
            this.mTranslationY = this.mValues[5];
            setAnimationMatrix();
        }

        private void setAnimationMatrix() {
            this.mValues[2] = this.mTranslationX;
            this.mValues[5] = this.mTranslationY;
            this.mMatrix.setValues(this.mValues);
            ViewUtils.setAnimationMatrix(this.mView, this.mMatrix);
        }

        Matrix getMatrix() {
            return this.mMatrix;
        }

        void setTranslation(PointF pointF) {
            this.mTranslationX = pointF.x;
            this.mTranslationY = pointF.y;
            setAnimationMatrix();
        }

        void setValues(float[] fArr) {
            System.arraycopy(fArr, 0, this.mValues, 0, fArr.length);
            setAnimationMatrix();
        }
    }

    private static class Transforms {
        final float mRotationX;
        final float mRotationY;
        final float mRotationZ;
        final float mScaleX;
        final float mScaleY;
        final float mTranslationX;
        final float mTranslationY;
        final float mTranslationZ;

        Transforms(View view) {
            this.mTranslationX = view.getTranslationX();
            this.mTranslationY = view.getTranslationY();
            this.mTranslationZ = ViewCompat.getTranslationZ(view);
            this.mScaleX = view.getScaleX();
            this.mScaleY = view.getScaleY();
            this.mRotationX = view.getRotationX();
            this.mRotationY = view.getRotationY();
            this.mRotationZ = view.getRotation();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Transforms)) {
                return false;
            }
            Transforms transforms = (Transforms) obj;
            return transforms.mTranslationX == this.mTranslationX && transforms.mTranslationY == this.mTranslationY && transforms.mTranslationZ == this.mTranslationZ && transforms.mScaleX == this.mScaleX && transforms.mScaleY == this.mScaleY && transforms.mRotationX == this.mRotationX && transforms.mRotationY == this.mRotationY && transforms.mRotationZ == this.mRotationZ;
        }

        public int hashCode() {
            int iFloatToIntBits = this.mTranslationX != 0.0f ? Float.floatToIntBits(this.mTranslationX) : 0;
            int iFloatToIntBits2 = this.mTranslationY != 0.0f ? Float.floatToIntBits(this.mTranslationY) : 0;
            int iFloatToIntBits3 = this.mTranslationZ != 0.0f ? Float.floatToIntBits(this.mTranslationZ) : 0;
            int iFloatToIntBits4 = this.mScaleX != 0.0f ? Float.floatToIntBits(this.mScaleX) : 0;
            int iFloatToIntBits5 = this.mScaleY != 0.0f ? Float.floatToIntBits(this.mScaleY) : 0;
            int iFloatToIntBits6 = this.mRotationX != 0.0f ? Float.floatToIntBits(this.mRotationX) : 0;
            return (((((((((((((iFloatToIntBits * 31) + iFloatToIntBits2) * 31) + iFloatToIntBits3) * 31) + iFloatToIntBits4) * 31) + iFloatToIntBits5) * 31) + iFloatToIntBits6) * 31) + (this.mRotationY != 0.0f ? Float.floatToIntBits(this.mRotationY) : 0)) * 31) + (this.mRotationZ != 0.0f ? Float.floatToIntBits(this.mRotationZ) : 0);
        }

        public void restore(View view) {
            ChangeTransform.setTransforms(view, this.mTranslationX, this.mTranslationY, this.mTranslationZ, this.mScaleX, this.mScaleY, this.mRotationX, this.mRotationY, this.mRotationZ);
        }
    }

    static {
        SUPPORTS_VIEW_REMOVAL_SUPPRESSION = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeTransform(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_TRANSFORM);
        this.mUseOverlay = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, NPStringFog.decode(new byte[]{65, 85, 70, 85, 69, 3, 93, 68, 97, 93, 67, 14, 124, 70, 83, 70, 91, 7, 74}, "30647f", true), 1, true);
        this.mReparent = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, NPStringFog.decode(new byte[]{74, 7, 72, 85, 69, 86, 86, 22}, "8b8473", true, true), 0, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        transitionValues.values.put(PROPNAME_PARENT, view.getParent());
        transitionValues.values.put(PROPNAME_TRANSFORMS, new Transforms(view));
        Matrix matrix = view.getMatrix();
        transitionValues.values.put(PROPNAME_MATRIX, (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.mReparent) {
            Matrix matrix2 = new Matrix();
            ViewUtils.transformMatrixToGlobal((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r0.getScrollX(), -r0.getScrollY());
            transitionValues.values.put(PROPNAME_PARENT_MATRIX, matrix2);
            transitionValues.values.put(PROPNAME_INTERMEDIATE_MATRIX, view.getTag(R.id.transition_transform));
            transitionValues.values.put(PROPNAME_INTERMEDIATE_PARENT_MATRIX, view.getTag(R.id.parent_matrix));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.transition.Transition] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    private void createGhostView(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view = transitionValues2.view;
        Matrix matrix = new Matrix((Matrix) transitionValues2.values.get(PROPNAME_PARENT_MATRIX));
        ViewUtils.transformMatrixToLocal(viewGroup, matrix);
        GhostView ghostViewAddGhost = GhostViewUtils.addGhost(view, viewGroup, matrix);
        if (ghostViewAddGhost == null) {
            return;
        }
        ghostViewAddGhost.reserveEndViewTransition((ViewGroup) transitionValues.values.get(PROPNAME_PARENT), transitionValues.view);
        ?? r4 = this;
        while (r4.mParent != null) {
            r4 = r4.mParent;
        }
        r4.addListener(new GhostListener(view, ghostViewAddGhost));
        if (SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            if (transitionValues.view != transitionValues2.view) {
                ViewUtils.setTransitionAlpha(transitionValues.view, 0.0f);
            }
            ViewUtils.setTransitionAlpha(view, 1.0f);
        }
    }

    private ObjectAnimator createTransformAnimator(TransitionValues transitionValues, TransitionValues transitionValues2, boolean z) {
        Matrix matrix = (Matrix) transitionValues.values.get(PROPNAME_MATRIX);
        Matrix matrix2 = (Matrix) transitionValues2.values.get(PROPNAME_MATRIX);
        if (matrix == null) {
            matrix = MatrixUtils.IDENTITY_MATRIX;
        }
        Matrix matrix3 = matrix2 == null ? MatrixUtils.IDENTITY_MATRIX : matrix2;
        if (matrix.equals(matrix3)) {
            return null;
        }
        Transforms transforms = (Transforms) transitionValues2.values.get(PROPNAME_TRANSFORMS);
        View view = transitionValues2.view;
        setIdentityTransforms(view);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix3.getValues(fArr2);
        PathAnimatorMatrix pathAnimatorMatrix = new PathAnimatorMatrix(view, fArr);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(pathAnimatorMatrix, PropertyValuesHolder.ofObject(NON_TRANSLATIONS_PROPERTY, new FloatArrayEvaluator(new float[9]), fArr, fArr2), PropertyValuesHolderUtils.ofPointF(TRANSLATIONS_PROPERTY, getPathMotion().getPath(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter(this, z, matrix3, view, transforms, pathAnimatorMatrix) { // from class: androidx.transition.ChangeTransform.3
            private boolean mIsCanceled;
            private Matrix mTempMatrix = new Matrix();
            final ChangeTransform this$0;
            final Matrix val$finalEndMatrix;
            final boolean val$handleParentChange;
            final PathAnimatorMatrix val$pathAnimatorMatrix;
            final Transforms val$transforms;
            final View val$view;

            {
                this.this$0 = this;
                this.val$handleParentChange = z;
                this.val$finalEndMatrix = matrix3;
                this.val$view = view;
                this.val$transforms = transforms;
                this.val$pathAnimatorMatrix = pathAnimatorMatrix;
            }

            private void setCurrentMatrix(Matrix matrix4) {
                this.mTempMatrix.set(matrix4);
                this.val$view.setTag(R.id.transition_transform, this.mTempMatrix);
                this.val$transforms.restore(this.val$view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.mIsCanceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.mIsCanceled) {
                    if (this.val$handleParentChange && this.this$0.mUseOverlay) {
                        setCurrentMatrix(this.val$finalEndMatrix);
                    } else {
                        this.val$view.setTag(R.id.transition_transform, null);
                        this.val$view.setTag(R.id.parent_matrix, null);
                    }
                }
                ViewUtils.setAnimationMatrix(this.val$view, null);
                this.val$transforms.restore(this.val$view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                setCurrentMatrix(this.val$pathAnimatorMatrix.getMatrix());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                ChangeTransform.setIdentityTransforms(this.val$view);
            }
        };
        objectAnimatorOfPropertyValuesHolder.addListener(animatorListenerAdapter);
        AnimatorUtils.addPauseListener(objectAnimatorOfPropertyValuesHolder, animatorListenerAdapter);
        return objectAnimatorOfPropertyValuesHolder;
    }

    private boolean parentsMatch(ViewGroup viewGroup, ViewGroup viewGroup2) {
        if (!isValidTarget(viewGroup) || !isValidTarget(viewGroup2)) {
            return viewGroup == viewGroup2;
        }
        TransitionValues matchedTransitionValues = getMatchedTransitionValues(viewGroup, true);
        return matchedTransitionValues != null && viewGroup2 == matchedTransitionValues.view;
    }

    static void setIdentityTransforms(View view) {
        setTransforms(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    private void setMatricesForParent(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Matrix matrix;
        Matrix matrix2 = (Matrix) transitionValues2.values.get(PROPNAME_PARENT_MATRIX);
        transitionValues2.view.setTag(R.id.parent_matrix, matrix2);
        Matrix matrix3 = this.mTempMatrix;
        matrix3.reset();
        matrix2.invert(matrix3);
        Matrix matrix4 = (Matrix) transitionValues.values.get(PROPNAME_MATRIX);
        if (matrix4 == null) {
            Matrix matrix5 = new Matrix();
            transitionValues.values.put(PROPNAME_MATRIX, matrix5);
            matrix = matrix5;
        } else {
            matrix = matrix4;
        }
        matrix.postConcat((Matrix) transitionValues.values.get(PROPNAME_PARENT_MATRIX));
        matrix.postConcat(matrix3);
    }

    static void setTransforms(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        ViewCompat.setTranslationZ(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
        if (SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            return;
        }
        ((ViewGroup) transitionValues.view.getParent()).startViewTransition(transitionValues.view);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey(PROPNAME_PARENT) || !transitionValues2.values.containsKey(PROPNAME_PARENT)) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) transitionValues.values.get(PROPNAME_PARENT);
        boolean z = this.mReparent && !parentsMatch(viewGroup2, (ViewGroup) transitionValues2.values.get(PROPNAME_PARENT));
        Matrix matrix = (Matrix) transitionValues.values.get(PROPNAME_INTERMEDIATE_MATRIX);
        if (matrix != null) {
            transitionValues.values.put(PROPNAME_MATRIX, matrix);
        }
        Matrix matrix2 = (Matrix) transitionValues.values.get(PROPNAME_INTERMEDIATE_PARENT_MATRIX);
        if (matrix2 != null) {
            transitionValues.values.put(PROPNAME_PARENT_MATRIX, matrix2);
        }
        if (z) {
            setMatricesForParent(transitionValues, transitionValues2);
        }
        ObjectAnimator objectAnimatorCreateTransformAnimator = createTransformAnimator(transitionValues, transitionValues2, z);
        if (z && objectAnimatorCreateTransformAnimator != null && this.mUseOverlay) {
            createGhostView(viewGroup, transitionValues, transitionValues2);
            return objectAnimatorCreateTransformAnimator;
        }
        if (SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            return objectAnimatorCreateTransformAnimator;
        }
        viewGroup2.endViewTransition(transitionValues.view);
        return objectAnimatorCreateTransformAnimator;
    }

    public boolean getReparent() {
        return this.mReparent;
    }

    public boolean getReparentWithOverlay() {
        return this.mUseOverlay;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setReparent(boolean z) {
        this.mReparent = z;
    }

    public void setReparentWithOverlay(boolean z) {
        this.mUseOverlay = z;
    }
}
