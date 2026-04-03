package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class ChangeBounds extends Transition {
    private boolean mReparent;
    private boolean mResizeClip;
    private int[] mTempLocation;
    private static final String PROPNAME_BOUNDS = NPStringFog.decode(new byte[]{3, 10, 5, 66, 90, 95, 6, 94, 2, 88, 84, 88, 5, 1, 35, 95, 64, 88, 6, 23, 91, 82, 90, 67, 12, 0, 18}, "bda056", 1.18344184E8f);
    private static final String PROPNAME_CLIP = NPStringFog.decode(new byte[]{81, 95, 5, 64, 91, 91, 84, 11, 2, 90, 85, 92, 87, 84, 35, 93, 65, 92, 84, 66, 91, 81, 88, 91, 64}, "01a242", 2.21136881E8d);
    private static final String PROPNAME_PARENT = NPStringFog.decode(new byte[]{2, 88, 87, 16, 88, 11, 7, 12, 80, 10, 86, 12, 4, 83, 113, 13, 66, 12, 7, 69, 9, 18, 86, 16, 6, 88, 71}, "c63b7b", false);
    private static final String PROPNAME_WINDOW_X = NPStringFog.decode(new byte[]{4, 94, 1, 74, 92, 91, 1, 10, 6, 80, 82, 92, 2, 85, 39, 87, 70, 92, 1, 67, 95, 79, 90, 92, 1, 95, 18, 96}, "e0e832", false);
    private static final String PROPNAME_WINDOW_Y = NPStringFog.decode(new byte[]{7, 13, 80, 69, 12, 11, 2, 89, 87, 95, 2, 12, 1, 6, 118, 88, 22, 12, 2, 16, 14, 64, 10, 12, 2, 12, 67, 110}, "fc47cb", false, true);
    private static final String[] sTransitionProperties = {NPStringFog.decode(new byte[]{2, 11, 85, 20, 95, 8, 7, 95, 82, 14, 81, 15, 4, 0, 115, 9, 69, 15, 7, 22, 11, 4, 95, 20, 13, 1, 66}, "ce1f0a", -1.829055903E9d), NPStringFog.decode(new byte[]{81, 11, 81, 64, 91, 15, 84, 95, 86, 90, 85, 8, 87, 0, 119, 93, 65, 8, 84, 22, 15, 81, 88, 15, 64}, "0e524f", -23565), NPStringFog.decode(new byte[]{7, 11, 86, 65, 91, 90, 2, 95, 81, 91, 85, 93, 1, 0, 112, 92, 65, 93, 2, 22, 8, 67, 85, 65, 3, 11, 70}, "fe2343", 937651839L), NPStringFog.decode(new byte[]{4, 87, 93, 66, 87, 94, 1, 3, 90, 88, 89, 89, 2, 92, 123, 95, 77, 89, 1, 74, 3, 71, 81, 89, 1, 86, 78, 104}, "e99087", true), NPStringFog.decode(new byte[]{87, 88, 93, 70, 13, 95, 82, 12, 90, 92, 3, 88, 81, 83, 123, 91, 23, 88, 82, 69, 3, 67, 11, 88, 82, 89, 78, 109}, "6694b6", false)};
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(PointF.class, NPStringFog.decode(new byte[]{86, 89, 68, 86, 93, 74, 123, 68, 88, 95, 80, 87}, "461899", 1452268396L)) { // from class: androidx.transition.ChangeBounds.1
        private Rect mBounds = new Rect();

        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.mBounds);
            return new PointF(this.mBounds.left, this.mBounds.top);
        }

        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.mBounds);
            this.mBounds.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.mBounds);
        }
    };
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, NPStringFog.decode(new byte[]{64, 94, 65, 120, 80, 80, 64}, "411456", 1975475176L)) { // from class: androidx.transition.ChangeBounds.2
        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.setTopLeft(pointF);
        }
    };
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, NPStringFog.decode(new byte[]{1, 90, 17, 65, 94, 91, 49, 92, 2, 93, 69}, "c5e516", true)) { // from class: androidx.transition.ChangeBounds.3
        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.setBottomRight(pointF);
        }
    };
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, NPStringFog.decode(new byte[]{83, 10, 65, 23, 90, 9, 99, 12, 82, 11, 65}, "1e5c5d", -1328504295L)) { // from class: androidx.transition.ChangeBounds.4
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, NPStringFog.decode(new byte[]{70, 93, 20, 116, 4, 87, 70}, "22d8a1", 5.870899E8f)) { // from class: androidx.transition.ChangeBounds.5
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            ViewUtils.setLeftTopRightBottom(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };
    private static final Property<View, PointF> POSITION_PROPERTY = new Property<View, PointF>(PointF.class, NPStringFog.decode(new byte[]{22, 94, 70, 11, 21, 88, 9, 95}, "f15ba1", false)) { // from class: androidx.transition.ChangeBounds.6
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            ViewUtils.setLeftTopRightBottom(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    };
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    private static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        ViewBounds(View view) {
            this.mView = view;
        }

        private void setLeftTopRightBottom() {
            ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        void setBottomRight(PointF pointF) {
            this.mRight = Math.round(pointF.x);
            this.mBottom = Math.round(pointF.y);
            this.mBottomRightCalls++;
            if (this.mTopLeftCalls == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }

        void setTopLeft(PointF pointF) {
            this.mLeft = Math.round(pointF.x);
            this.mTop = Math.round(pointF.y);
            this.mTopLeftCalls++;
            if (this.mTopLeftCalls == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }
    }

    public ChangeBounds() {
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, NPStringFog.decode(new byte[]{70, 92, 67, 92, 31, 83, 119, 85, 89, 69}, "4905e6", false, false), 0, false);
        typedArrayObtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!ViewCompat.isLaidOut(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        if (this.mReparent) {
            transitionValues.view.getLocationInWindow(this.mTempLocation);
            transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.mTempLocation[0]));
            transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.mTempLocation[1]));
        }
        if (this.mResizeClip) {
            transitionValues.values.put(PROPNAME_CLIP, ViewCompat.getClipBounds(view));
        }
    }

    private boolean parentMatches(View view, View view2) {
        if (!this.mReparent) {
            return true;
        }
        TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
        return matchedTransitionValues == null ? view == view2 : view2 == matchedTransitionValues.view;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator;
        Animator animatorMergeAnimators;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = transitionValues2.view;
        if (parentMatches(viewGroup2, viewGroup3)) {
            Rect rect = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
            Rect rect2 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
            int i = rect.left;
            int i2 = rect2.left;
            int i3 = rect.top;
            int i4 = rect2.top;
            int i5 = rect.right;
            int i6 = rect2.right;
            int i7 = rect.bottom;
            int i8 = rect2.bottom;
            int i9 = i5 - i;
            int i10 = i7 - i3;
            int i11 = i6 - i2;
            int i12 = i8 - i4;
            Rect rect3 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
            Rect rect4 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
            int i13 = 0;
            if ((i9 != 0 && i10 != 0) || (i11 != 0 && i12 != 0)) {
                i13 = (i == i2 && i3 == i4) ? 0 : 1;
                if (i5 != i6 || i7 != i8) {
                    i13++;
                }
            }
            if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                i13++;
            }
            if (i13 > 0) {
                if (this.mResizeClip) {
                    ViewUtils.setLeftTopRightBottom(view, i, i3, Math.max(i9, i11) + i, Math.max(i10, i12) + i3);
                    ObjectAnimator objectAnimatorOfPointF = (i == i2 && i3 == i4) ? null : ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i, i3, i2, i4));
                    Rect rect5 = rect3 == null ? new Rect(0, 0, i9, i10) : rect3;
                    Rect rect6 = rect4 == null ? new Rect(0, 0, i11, i12) : rect4;
                    if (rect5.equals(rect6)) {
                        objectAnimator = null;
                    } else {
                        ViewCompat.setClipBounds(view, rect5);
                        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, NPStringFog.decode(new byte[]{7, 15, 12, 19, 38, 11, 17, 13, 1, 16}, "dcecdd", 21964), sRectEvaluator, rect5, rect6);
                        objectAnimatorOfObject.addListener(new AnimatorListenerAdapter(this, view, rect4, i2, i4, i6, i8) { // from class: androidx.transition.ChangeBounds.8
                            private boolean mIsCanceled;
                            final ChangeBounds this$0;
                            final int val$endBottom;
                            final int val$endLeft;
                            final int val$endRight;
                            final int val$endTop;
                            final Rect val$finalClip;
                            final View val$view;

                            {
                                this.this$0 = this;
                                this.val$view = view;
                                this.val$finalClip = rect4;
                                this.val$endLeft = i2;
                                this.val$endTop = i4;
                                this.val$endRight = i6;
                                this.val$endBottom = i8;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                this.mIsCanceled = true;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (this.mIsCanceled) {
                                    return;
                                }
                                ViewCompat.setClipBounds(this.val$view, this.val$finalClip);
                                ViewUtils.setLeftTopRightBottom(this.val$view, this.val$endLeft, this.val$endTop, this.val$endRight, this.val$endBottom);
                            }
                        });
                        objectAnimator = objectAnimatorOfObject;
                    }
                    animatorMergeAnimators = TransitionUtils.mergeAnimators(objectAnimatorOfPointF, objectAnimator);
                } else {
                    ViewUtils.setLeftTopRightBottom(view, i, i3, i5, i7);
                    if (i13 != 2) {
                        animatorMergeAnimators = (i == i2 && i3 == i4) ? ObjectAnimatorUtils.ofPointF(view, BOTTOM_RIGHT_ONLY_PROPERTY, getPathMotion().getPath(i5, i7, i6, i8)) : ObjectAnimatorUtils.ofPointF(view, TOP_LEFT_ONLY_PROPERTY, getPathMotion().getPath(i, i3, i2, i4));
                    } else if (i9 == i11 && i10 == i12) {
                        animatorMergeAnimators = ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i, i3, i2, i4));
                    } else {
                        ViewBounds viewBounds = new ViewBounds(view);
                        ObjectAnimator objectAnimatorOfPointF2 = ObjectAnimatorUtils.ofPointF(viewBounds, TOP_LEFT_PROPERTY, getPathMotion().getPath(i, i3, i2, i4));
                        ObjectAnimator objectAnimatorOfPointF3 = ObjectAnimatorUtils.ofPointF(viewBounds, BOTTOM_RIGHT_PROPERTY, getPathMotion().getPath(i5, i7, i6, i8));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(objectAnimatorOfPointF2, objectAnimatorOfPointF3);
                        animatorSet.addListener(new AnimatorListenerAdapter(this, viewBounds) { // from class: androidx.transition.ChangeBounds.7
                            private ViewBounds mViewBounds;
                            final ChangeBounds this$0;
                            final ViewBounds val$viewBounds;

                            {
                                this.this$0 = this;
                                this.val$viewBounds = viewBounds;
                                this.mViewBounds = this.val$viewBounds;
                            }
                        });
                        animatorMergeAnimators = animatorSet;
                    }
                }
                if (!(view.getParent() instanceof ViewGroup)) {
                    return animatorMergeAnimators;
                }
                ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                ViewGroupUtils.suppressLayout(viewGroup4, true);
                addListener(new TransitionListenerAdapter(this, viewGroup4) { // from class: androidx.transition.ChangeBounds.9
                    boolean mCanceled = false;
                    final ChangeBounds this$0;
                    final ViewGroup val$parent;

                    {
                        this.this$0 = this;
                        this.val$parent = viewGroup4;
                    }

                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionCancel(@NonNull Transition transition) {
                        ViewGroupUtils.suppressLayout(this.val$parent, false);
                        this.mCanceled = true;
                    }

                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionEnd(@NonNull Transition transition) {
                        if (!this.mCanceled) {
                            ViewGroupUtils.suppressLayout(this.val$parent, false);
                        }
                        transition.removeListener(this);
                    }

                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionPause(@NonNull Transition transition) {
                        ViewGroupUtils.suppressLayout(this.val$parent, false);
                    }

                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionResume(@NonNull Transition transition) {
                        ViewGroupUtils.suppressLayout(this.val$parent, true);
                    }
                });
                return animatorMergeAnimators;
            }
        } else {
            int iIntValue = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int iIntValue2 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            int iIntValue3 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_X)).intValue();
            int iIntValue4 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_Y)).intValue();
            if (iIntValue != iIntValue3 || iIntValue2 != iIntValue4) {
                viewGroup.getLocationInWindow(this.mTempLocation);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                view.draw(new Canvas(bitmapCreateBitmap));
                BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                float transitionAlpha = ViewUtils.getTransitionAlpha(view);
                ViewUtils.setTransitionAlpha(view, 0.0f);
                ViewUtils.getOverlay(viewGroup).add(bitmapDrawable);
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, PropertyValuesHolderUtils.ofPointF(DRAWABLE_ORIGIN_PROPERTY, getPathMotion().getPath(iIntValue - this.mTempLocation[0], iIntValue2 - this.mTempLocation[1], iIntValue3 - this.mTempLocation[0], iIntValue4 - this.mTempLocation[1])));
                objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter(this, viewGroup, bitmapDrawable, view, transitionAlpha) { // from class: androidx.transition.ChangeBounds.10
                    final ChangeBounds this$0;
                    final BitmapDrawable val$drawable;
                    final ViewGroup val$sceneRoot;
                    final float val$transitionAlpha;
                    final View val$view;

                    {
                        this.this$0 = this;
                        this.val$sceneRoot = viewGroup;
                        this.val$drawable = bitmapDrawable;
                        this.val$view = view;
                        this.val$transitionAlpha = transitionAlpha;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewUtils.getOverlay(this.val$sceneRoot).remove(this.val$drawable);
                        ViewUtils.setTransitionAlpha(this.val$view, this.val$transitionAlpha);
                    }
                });
                return objectAnimatorOfPropertyValuesHolder;
            }
        }
        return null;
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setResizeClip(boolean z) {
        this.mResizeClip = z;
    }
}
