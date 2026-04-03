package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.util.Preconditions;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* JADX INFO: renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {
        static final int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.DefaultSpecialEffectsController$4, reason: invalid class name */
    class AnonymousClass4 implements Animation.AnimationListener {
        final DefaultSpecialEffectsController this$0;
        final AnimationInfo val$animationInfo;
        final ViewGroup val$container;
        final View val$viewToAnimate;

        AnonymousClass4(DefaultSpecialEffectsController defaultSpecialEffectsController, ViewGroup viewGroup, View view, AnimationInfo animationInfo) {
            this.this$0 = defaultSpecialEffectsController;
            this.val$container = viewGroup;
            this.val$viewToAnimate = view;
            this.val$animationInfo = animationInfo;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.val$container.post(new Runnable(this) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4.1
                final AnonymousClass4 this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$1.val$container.endViewTransition(this.this$1.val$viewToAnimate);
                    this.this$1.val$animationInfo.completeSpecialEffect();
                }
            });
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    private static class AnimationInfo extends SpecialEffectsInfo {
        private FragmentAnim.AnimationOrAnimator mAnimation;
        private boolean mIsPop;
        private boolean mLoadedAnim;

        AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z) {
            super(operation, cancellationSignal);
            this.mLoadedAnim = false;
            this.mIsPop = z;
        }

        FragmentAnim.AnimationOrAnimator getAnimation(Context context) {
            if (this.mLoadedAnim) {
                return this.mAnimation;
            }
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.mIsPop);
            this.mAnimation = animationOrAnimatorLoadAnimation;
            this.mLoadedAnim = true;
            return animationOrAnimatorLoadAnimation;
        }
    }

    private static class SpecialEffectsInfo {
        private final SpecialEffectsController.Operation mOperation;
        private final CancellationSignal mSignal;

        SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal) {
            this.mOperation = operation;
            this.mSignal = cancellationSignal;
        }

        void completeSpecialEffect() {
            this.mOperation.completeSpecialEffect(this.mSignal);
        }

        SpecialEffectsController.Operation getOperation() {
            return this.mOperation;
        }

        CancellationSignal getSignal() {
            return this.mSignal;
        }

        boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(this.mOperation.getFragment().mView);
            SpecialEffectsController.Operation.State finalState = this.mOperation.getFinalState();
            return stateFrom == finalState || !(stateFrom == SpecialEffectsController.Operation.State.VISIBLE || finalState == SpecialEffectsController.Operation.State.VISIBLE);
        }
    }

    private static class TransitionInfo extends SpecialEffectsInfo {
        private final boolean mOverlapAllowed;
        private final Object mSharedElementTransition;
        private final Object mTransition;

        TransitionInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z, boolean z2) {
            super(operation, cancellationSignal);
            if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                this.mTransition = z ? operation.getFragment().getReenterTransition() : operation.getFragment().getEnterTransition();
                this.mOverlapAllowed = z ? operation.getFragment().getAllowReturnTransitionOverlap() : operation.getFragment().getAllowEnterTransitionOverlap();
            } else {
                this.mTransition = z ? operation.getFragment().getReturnTransition() : operation.getFragment().getExitTransition();
                this.mOverlapAllowed = true;
            }
            if (!z2) {
                this.mSharedElementTransition = null;
            } else if (z) {
                this.mSharedElementTransition = operation.getFragment().getSharedElementReturnTransition();
            } else {
                this.mSharedElementTransition = operation.getFragment().getSharedElementEnterTransition();
            }
        }

        private FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            if (FragmentTransition.PLATFORM_IMPL != null && FragmentTransition.PLATFORM_IMPL.canHandle(obj)) {
                return FragmentTransition.PLATFORM_IMPL;
            }
            if (FragmentTransition.SUPPORT_IMPL != null && FragmentTransition.SUPPORT_IMPL.canHandle(obj)) {
                return FragmentTransition.SUPPORT_IMPL;
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 75, 86, 91, 21, 80, 64, 80, 88, 91, 70}, "4975f9", 797348965L) + obj + NPStringFog.decode(new byte[]{70, 4, 14, 20, 21, 86, 20, 3, 6, 11, 80, 94, 18, 66}, "fbaf50", -4444) + getOperation().getFragment() + NPStringFog.decode(new byte[]{70, 8, 21, 23, 95, 9, 18, 65, 7, 23, 71, 7, 10, 8, 2, 23, 87, 20, 7, 12, 3, 64, 94, 20, 13, 65, 50, 69, 80, 8, 21, 8, 18, 94, 94, 8, 70, 14, 20, 23, 112, 8, 2, 19, 9, 94, 85, 62, 70, 53, 20, 86, 95, 21, 15, 21, 15, 88, 95}, "faf71f", 1.6802409E9f));
        }

        FragmentTransitionImpl getHandlingImpl() {
            FragmentTransitionImpl handlingImpl = getHandlingImpl(this.mTransition);
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.mSharedElementTransition);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl != null ? handlingImpl : handlingImpl2;
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 80, 75, 90, 88, 83, 18, 95, 65, 82, 91, 81, 69, 86, 65, 88, 22, 64, 64, 88, 93, 64, 95, 64, 91, 86, 93, 64, 22, 85, 92, 93, 19, 114, 88, 80, 64, 86, 90, 87, 110, 20, 70, 75, 82, 93, 69, 93, 70, 80, 92, 93, 69, 20, 91, 74, 19, 93, 89, 64, 18, 88, 95, 95, 89, 67, 87, 93, 29, 19, 112, 70, 83, 94, 94, 86, 88, 64, 18}, "293364", false) + getOperation().getFragment() + NPStringFog.decode(new byte[]{65, 66, 86, 16, 64, 16, 15, 85, 87, 68, 97, 16, 0, 94, 64, 13, 65, 11, 14, 94, 19}, "a03d5b", -1.313785709E9d) + this.mTransition + NPStringFog.decode(new byte[]{65, 65, 10, 90, 81, 14, 65, 67, 17, 86, 65, 70, 0, 22, 6, 90, 84, 0, 4, 68, 7, 93, 70, 70, 53, 68, 3, 93, 65, 15, 21, 95, 13, 93, 18, 70, 21, 79, 18, 86, 18, 18, 9, 87, 12, 19, 91, 18, 18, 22, 17, 91, 83, 20, 4, 82, 66, 86, 94, 3, 12, 83, 12, 71, 18, 18, 19, 87, 12, 64, 91, 18, 8, 89, 12, 19}, "a6b32f", -2.27976492E8d) + this.mSharedElementTransition);
        }

        public Object getSharedElementTransition() {
            return this.mSharedElementTransition;
        }

        Object getTransition() {
            return this.mTransition;
        }

        public boolean hasSharedElementTransition() {
            return this.mSharedElementTransition != null;
        }

        boolean isOverlapAllowed() {
            return this.mOverlapAllowed;
        }
    }

    DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void startAnimations(List<AnimationInfo> list, List<SpecialEffectsController.Operation> list2, boolean z, Map<SpecialEffectsController.Operation, Boolean> map) {
        ViewGroup container = getContainer();
        Context context = container.getContext();
        ArrayList<AnimationInfo> arrayList = new ArrayList();
        boolean z2 = false;
        for (AnimationInfo animationInfo : list) {
            if (animationInfo.isVisibilityUnchanged()) {
                animationInfo.completeSpecialEffect();
            } else {
                FragmentAnim.AnimationOrAnimator animation = animationInfo.getAnimation(context);
                if (animation == null) {
                    animationInfo.completeSpecialEffect();
                } else {
                    Animator animator = animation.animator;
                    if (animator == null) {
                        arrayList.add(animationInfo);
                    } else {
                        SpecialEffectsController.Operation operation = animationInfo.getOperation();
                        Fragment fragment = operation.getFragment();
                        if (Boolean.TRUE.equals(map.get(operation))) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(NPStringFog.decode(new byte[]{119, 66, 86, 80, 92, 86, 95, 68, 122, 86, 95, 82, 86, 85, 69}, "107713", -5.914702E8f), NPStringFog.decode(new byte[]{126, 94, 12, 87, 23, 11, 89, 94, 66, 121, 11, 11, 90, 88, 22, 87, 23, 66, 68, 92, 22, 24, 10, 12, 23}, "79b8eb", 1.946656148E9d) + fragment + NPStringFog.decode(new byte[]{68, 87, 17, 24, 69, 13, 13, 69, 66, 126, 67, 4, 3, 91, 7, 86, 69, 69, 19, 87, 17, 24, 88, 11, 18, 89, 14, 78, 84, 1, 68, 95, 12, 24, 80, 69, 48, 68, 3, 86, 66, 12, 16, 95, 13, 86, 31}, "d6b81e", 1.39337728E8d));
                            }
                            animationInfo.completeSpecialEffect();
                        } else {
                            boolean z3 = operation.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                            if (z3) {
                                list2.remove(operation);
                            }
                            View view = fragment.mView;
                            container.startViewTransition(view);
                            animator.addListener(new AnimatorListenerAdapter(this, container, view, z3, operation, animationInfo) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.2
                                final DefaultSpecialEffectsController this$0;
                                final AnimationInfo val$animationInfo;
                                final ViewGroup val$container;
                                final boolean val$isHideOperation;
                                final SpecialEffectsController.Operation val$operation;
                                final View val$viewToAnimate;

                                {
                                    this.this$0 = this;
                                    this.val$container = container;
                                    this.val$viewToAnimate = view;
                                    this.val$isHideOperation = z3;
                                    this.val$operation = operation;
                                    this.val$animationInfo = animationInfo;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator2) {
                                    this.val$container.endViewTransition(this.val$viewToAnimate);
                                    if (this.val$isHideOperation) {
                                        this.val$operation.getFinalState().applyState(this.val$viewToAnimate);
                                    }
                                    this.val$animationInfo.completeSpecialEffect();
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            animationInfo.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener(this, animator) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.3
                                final DefaultSpecialEffectsController this$0;
                                final Animator val$animator;

                                {
                                    this.this$0 = this;
                                    this.val$animator = animator;
                                }

                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public void onCancel() {
                                    this.val$animator.end();
                                }
                            });
                            z2 = true;
                        }
                    }
                }
            }
        }
        for (AnimationInfo animationInfo2 : arrayList) {
            SpecialEffectsController.Operation operation2 = animationInfo2.getOperation();
            Fragment fragment2 = operation2.getFragment();
            if (z) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(NPStringFog.decode(new byte[]{112, 22, 4, 3, 15, 80, 88, 16, 40, 5, 12, 84, 81, 1, 23}, "6dedb5", false, false), NPStringFog.decode(new byte[]{40, 5, 93, 87, 74, 88, 15, 5, 19, 121, 86, 88, 12, 3, 71, 81, 87, 95, 65, 17, 86, 76, 24, 94, 15, 66}, "ab3881", -1.069977481E9d) + fragment2 + NPStringFog.decode(new byte[]{70, 2, 75, 23, 115, 8, 15, 14, 89, 67, 91, 9, 8, 16, 24, 84, 83, 8, 8, 12, 76, 23, 64, 19, 8, 67, 89, 91, 93, 8, 1, 16, 81, 83, 87, 70, 50, 17, 89, 89, 65, 15, 18, 10, 87, 89, 65, 72}, "fc872f", 7750));
                }
                animationInfo2.completeSpecialEffect();
            } else if (z2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(NPStringFog.decode(new byte[]{117, 74, 89, 6, 14, 6, 93, 76, 117, 0, 13, 2, 84, 93, 74}, "388acc", false), NPStringFog.decode(new byte[]{42, 80, 88, 12, 17, 10, 13, 80, 22, 34, 13, 10, 14, 86, 66, 10, 12, 13, 67, 68, 83, 23, 67, 12, 13, 23}, "c76ccc", 2.060940048E9d) + fragment2 + NPStringFog.decode(new byte[]{70, 83, 71, 65, 32, 12, 15, 95, 85, 21, 8, 13, 8, 65, 20, 2, 0, 12, 8, 93, 64, 65, 19, 23, 8, 18, 85, 13, 14, 12, 1, 65, 93, 5, 4, 66, 39, 92, 93, 12, 0, 22, 9, 64, 71, 79}, "f24aab", true));
                }
                animationInfo2.completeSpecialEffect();
            } else {
                View view2 = fragment2.mView;
                Animation animation2 = (Animation) Preconditions.checkNotNull(((FragmentAnim.AnimationOrAnimator) Preconditions.checkNotNull(animationInfo2.getAnimation(context))).animation);
                if (operation2.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation2);
                    animationInfo2.completeSpecialEffect();
                } else {
                    container.startViewTransition(view2);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation2, container, view2);
                    endViewTransitionAnimation.setAnimationListener(new AnonymousClass4(this, container, view2, animationInfo2));
                    view2.startAnimation(endViewTransitionAnimation);
                }
                animationInfo2.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener(this, view2, container, animationInfo2) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.5
                    final DefaultSpecialEffectsController this$0;
                    final AnimationInfo val$animationInfo;
                    final ViewGroup val$container;
                    final View val$viewToAnimate;

                    {
                        this.this$0 = this;
                        this.val$viewToAnimate = view2;
                        this.val$container = container;
                        this.val$animationInfo = animationInfo2;
                    }

                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        this.val$viewToAnimate.clearAnimation();
                        this.val$container.endViewTransition(this.val$viewToAnimate);
                        this.val$animationInfo.completeSpecialEffect();
                    }
                });
            }
        }
    }

    private Map<SpecialEffectsController.Operation, Boolean> startTransitions(List<TransitionInfo> list, List<SpecialEffectsController.Operation> list2, boolean z, SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2) {
        Object objMergeTransitionsTogether;
        Object objMergeTransitionsTogether2;
        Object objWrapTransitionInSet;
        SharedElementCallback exitTransitionCallback;
        SharedElementCallback sharedElementCallback;
        ArrayList<String> arrayList;
        View view;
        boolean z2;
        View view2;
        String strFindKeyForValue;
        HashMap map = new HashMap();
        FragmentTransitionImpl fragmentTransitionImpl = null;
        for (TransitionInfo transitionInfo : list) {
            if (!transitionInfo.isVisibilityUnchanged()) {
                FragmentTransitionImpl handlingImpl = transitionInfo.getHandlingImpl();
                if (fragmentTransitionImpl == null) {
                    fragmentTransitionImpl = handlingImpl;
                } else if (handlingImpl != null && fragmentTransitionImpl != handlingImpl) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{121, 90, 27, 15, 87, 83, 20, 85, 17, 7, 84, 81, 67, 92, 17, 13, 25, 64, 70, 82, 13, 21, 80, 64, 93, 92, 13, 21, 25, 85, 90, 87, 67, 39, 87, 80, 70, 92, 10, 2, 97, 20, 64, 65, 2, 8, 74, 93, 64, 90, 12, 8, 74, 20, 93, 64, 67, 8, 86, 64, 20, 82, 15, 10, 86, 67, 81, 87, 77, 70, 127, 70, 85, 84, 14, 3, 87, 64, 20}, "43cf94", 1.8927619E9f) + transitionInfo.getOperation().getFragment() + NPStringFog.decode(new byte[]{67, 16, 80, 22, 71, 20, 13, 7, 81, 66, 102, 20, 2, 12, 70, 11, 70, 15, 12, 12, 21}, "cb5b2f", -9228064L) + transitionInfo.getTransition() + NPStringFog.decode(new byte[]{66, 65, 95, 11, 1, 95, 66, 67, 68, 7, 17, 23, 3, 22, 83, 11, 4, 81, 7, 68, 82, 12, 22, 23, 54, 68, 86, 12, 17, 94, 22, 95, 88, 12, 66, 23, 22, 79, 71, 7, 66, 67, 10, 87, 89, 66, 13, 67, 10, 83, 69, 66, 36, 69, 3, 81, 90, 7, 12, 67, 17, 24}, "b67bb7", -9.456479E8f));
                }
            }
        }
        if (fragmentTransitionImpl == null) {
            for (TransitionInfo transitionInfo2 : list) {
                map.put(transitionInfo2.getOperation(), false);
                transitionInfo2.completeSpecialEffect();
            }
            return map;
        }
        View view3 = new View(getContainer().getContext());
        Object obj = null;
        Rect rect = new Rect();
        ArrayList<View> arrayList2 = new ArrayList<>();
        ArrayList<View> arrayList3 = new ArrayList<>();
        ArrayMap arrayMap = new ArrayMap();
        View view4 = null;
        boolean z3 = false;
        SpecialEffectsController.Operation operation3 = operation2;
        SpecialEffectsController.Operation operation4 = operation;
        for (TransitionInfo transitionInfo3 : list) {
            if (!transitionInfo3.hasSharedElementTransition() || operation4 == null || operation3 == null) {
                objWrapTransitionInSet = obj;
            } else {
                objWrapTransitionInSet = fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(transitionInfo3.getSharedElementTransition()));
                ArrayList<String> sharedElementSourceNames = operation2.getFragment().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = operation.getFragment().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = operation.getFragment().getSharedElementTargetNames();
                for (int i = 0; i < sharedElementTargetNames.size(); i++) {
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i));
                    }
                }
                ArrayList<String> sharedElementTargetNames2 = operation2.getFragment().getSharedElementTargetNames();
                if (z) {
                    SharedElementCallback enterTransitionCallback = operation.getFragment().getEnterTransitionCallback();
                    exitTransitionCallback = operation2.getFragment().getExitTransitionCallback();
                    sharedElementCallback = enterTransitionCallback;
                } else {
                    SharedElementCallback exitTransitionCallback2 = operation.getFragment().getExitTransitionCallback();
                    exitTransitionCallback = operation2.getFragment().getEnterTransitionCallback();
                    sharedElementCallback = exitTransitionCallback2;
                }
                int size = sharedElementSourceNames.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayMap.put(sharedElementSourceNames.get(i2), sharedElementTargetNames2.get(i2));
                }
                ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
                findNamedViews(arrayMap2, operation.getFragment().mView);
                arrayMap2.retainAll(sharedElementSourceNames);
                if (sharedElementCallback != null) {
                    sharedElementCallback.onMapSharedElements(sharedElementSourceNames, arrayMap2);
                    for (int size2 = sharedElementSourceNames.size() - 1; size2 >= 0; size2--) {
                        String str = sharedElementSourceNames.get(size2);
                        View view5 = arrayMap2.get(str);
                        if (view5 == null) {
                            arrayMap.remove(str);
                        } else if (!str.equals(ViewCompat.getTransitionName(view5))) {
                            arrayMap.put(ViewCompat.getTransitionName(view5), (String) arrayMap.remove(str));
                        }
                    }
                    arrayList = sharedElementSourceNames;
                } else {
                    arrayMap.retainAll(arrayMap2.keySet());
                    arrayList = sharedElementSourceNames;
                }
                ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                findNamedViews(arrayMap3, operation2.getFragment().mView);
                arrayMap3.retainAll(sharedElementTargetNames2);
                arrayMap3.retainAll(arrayMap.values());
                if (exitTransitionCallback != null) {
                    exitTransitionCallback.onMapSharedElements(sharedElementTargetNames2, arrayMap3);
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str2 = sharedElementTargetNames2.get(size3);
                        View view6 = arrayMap3.get(str2);
                        if (view6 == null) {
                            String strFindKeyForValue2 = FragmentTransition.findKeyForValue(arrayMap, str2);
                            if (strFindKeyForValue2 != null) {
                                arrayMap.remove(strFindKeyForValue2);
                            }
                        } else if (!str2.equals(ViewCompat.getTransitionName(view6)) && (strFindKeyForValue = FragmentTransition.findKeyForValue(arrayMap, str2)) != null) {
                            arrayMap.put(strFindKeyForValue, ViewCompat.getTransitionName(view6));
                        }
                    }
                } else {
                    FragmentTransition.retainValues(arrayMap, arrayMap3);
                }
                retainMatchingViews(arrayMap2, arrayMap.keySet());
                retainMatchingViews(arrayMap3, arrayMap.values());
                if (arrayMap.isEmpty()) {
                    objWrapTransitionInSet = null;
                    arrayList2.clear();
                    arrayList3.clear();
                    operation4 = operation;
                    operation3 = operation2;
                } else {
                    FragmentTransition.callSharedElementStartEnd(operation2.getFragment(), operation.getFragment(), z, arrayMap2, true);
                    OneShotPreDrawListener.add(getContainer(), new Runnable(this, operation2, operation, z, arrayMap3) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.6
                        final DefaultSpecialEffectsController this$0;
                        final SpecialEffectsController.Operation val$firstOut;
                        final boolean val$isPop;
                        final SpecialEffectsController.Operation val$lastIn;
                        final ArrayMap val$lastInViews;

                        {
                            this.this$0 = this;
                            this.val$lastIn = operation2;
                            this.val$firstOut = operation;
                            this.val$isPop = z;
                            this.val$lastInViews = arrayMap3;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentTransition.callSharedElementStartEnd(this.val$lastIn.getFragment(), this.val$firstOut.getFragment(), this.val$isPop, this.val$lastInViews, false);
                        }
                    });
                    arrayList2.addAll(arrayMap2.values());
                    if (arrayList.isEmpty()) {
                        view = view4;
                    } else {
                        View view7 = arrayMap2.get(arrayList.get(0));
                        fragmentTransitionImpl.setEpicenter(objWrapTransitionInSet, view7);
                        view = view7;
                    }
                    arrayList3.addAll(arrayMap3.values());
                    if (sharedElementTargetNames2.isEmpty() || (view2 = arrayMap3.get(sharedElementTargetNames2.get(0))) == null) {
                        z2 = z3;
                    } else {
                        OneShotPreDrawListener.add(getContainer(), new Runnable(this, fragmentTransitionImpl, view2, rect) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.7
                            final DefaultSpecialEffectsController this$0;
                            final FragmentTransitionImpl val$impl;
                            final Rect val$lastInEpicenterRect;
                            final View val$lastInEpicenterView;

                            {
                                this.this$0 = this;
                                this.val$impl = fragmentTransitionImpl;
                                this.val$lastInEpicenterView = view2;
                                this.val$lastInEpicenterRect = rect;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                this.val$impl.getBoundsOnScreen(this.val$lastInEpicenterView, this.val$lastInEpicenterRect);
                            }
                        });
                        z2 = true;
                    }
                    fragmentTransitionImpl.setSharedElementTargets(objWrapTransitionInSet, view3, arrayList2);
                    fragmentTransitionImpl.scheduleRemoveTargets(objWrapTransitionInSet, null, null, null, null, objWrapTransitionInSet, arrayList3);
                    map.put(operation, true);
                    map.put(operation2, true);
                    z3 = z2;
                    view4 = view;
                    operation4 = operation;
                    operation3 = operation2;
                }
            }
            obj = objWrapTransitionInSet;
        }
        ArrayList arrayList4 = new ArrayList();
        Object obj2 = null;
        SpecialEffectsController.Operation operation5 = operation3;
        Object obj3 = null;
        for (TransitionInfo transitionInfo4 : list) {
            if (transitionInfo4.isVisibilityUnchanged()) {
                map.put(transitionInfo4.getOperation(), false);
                transitionInfo4.completeSpecialEffect();
            } else {
                Object objCloneTransition = fragmentTransitionImpl.cloneTransition(transitionInfo4.getTransition());
                SpecialEffectsController.Operation operation6 = transitionInfo4.getOperation();
                boolean z4 = obj != null && (operation6 == operation4 || operation6 == operation5);
                if (objCloneTransition == null) {
                    if (!z4) {
                        map.put(operation6, false);
                        transitionInfo4.completeSpecialEffect();
                    }
                    objMergeTransitionsTogether2 = obj3;
                    objMergeTransitionsTogether = obj2;
                } else {
                    ArrayList<View> arrayList5 = new ArrayList<>();
                    captureTransitioningViews(arrayList5, operation6.getFragment().mView);
                    if (z4) {
                        if (operation6 == operation4) {
                            arrayList5.removeAll(arrayList2);
                        } else {
                            arrayList5.removeAll(arrayList3);
                        }
                    }
                    if (arrayList5.isEmpty()) {
                        fragmentTransitionImpl.addTarget(objCloneTransition, view3);
                    } else {
                        fragmentTransitionImpl.addTargets(objCloneTransition, arrayList5);
                        fragmentTransitionImpl.scheduleRemoveTargets(objCloneTransition, objCloneTransition, arrayList5, null, null, null, null);
                        if (operation6.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            list2.remove(operation6);
                            ArrayList<View> arrayList6 = new ArrayList<>(arrayList5);
                            arrayList6.remove(operation6.getFragment().mView);
                            fragmentTransitionImpl.scheduleHideFragmentView(objCloneTransition, operation6.getFragment().mView, arrayList6);
                            OneShotPreDrawListener.add(getContainer(), new Runnable(this, arrayList5) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.8
                                final DefaultSpecialEffectsController this$0;
                                final ArrayList val$transitioningViews;

                                {
                                    this.this$0 = this;
                                    this.val$transitioningViews = arrayList5;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    FragmentTransition.setViewVisibility(this.val$transitioningViews, 4);
                                }
                            });
                        }
                    }
                    if (operation6.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList4.addAll(arrayList5);
                        if (z3) {
                            fragmentTransitionImpl.setEpicenter(objCloneTransition, rect);
                        }
                    } else {
                        fragmentTransitionImpl.setEpicenter(objCloneTransition, view4);
                    }
                    map.put(operation6, true);
                    if (transitionInfo4.isOverlapAllowed()) {
                        objMergeTransitionsTogether2 = fragmentTransitionImpl.mergeTransitionsTogether(obj3, objCloneTransition, null);
                        objMergeTransitionsTogether = obj2;
                    } else {
                        Object obj4 = obj3;
                        objMergeTransitionsTogether = fragmentTransitionImpl.mergeTransitionsTogether(obj2, objCloneTransition, null);
                        objMergeTransitionsTogether2 = obj4;
                    }
                }
                operation5 = operation2;
                obj2 = objMergeTransitionsTogether;
                obj3 = objMergeTransitionsTogether2;
            }
        }
        Object objMergeTransitionsInSequence = fragmentTransitionImpl.mergeTransitionsInSequence(obj3, obj2, obj);
        for (TransitionInfo transitionInfo5 : list) {
            if (!transitionInfo5.isVisibilityUnchanged()) {
                Object transition = transitionInfo5.getTransition();
                SpecialEffectsController.Operation operation7 = transitionInfo5.getOperation();
                boolean z5 = obj != null && (operation7 == operation4 || operation7 == operation2);
                if (transition != null || z5) {
                    if (ViewCompat.isLaidOut(getContainer())) {
                        fragmentTransitionImpl.setListenerForTransitionEnd(transitionInfo5.getOperation().getFragment(), objMergeTransitionsInSequence, transitionInfo5.getSignal(), new Runnable(this, transitionInfo5) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.9
                            final DefaultSpecialEffectsController this$0;
                            final TransitionInfo val$transitionInfo;

                            {
                                this.this$0 = this;
                                this.val$transitionInfo = transitionInfo5;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                this.val$transitionInfo.completeSpecialEffect();
                            }
                        });
                    } else {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(NPStringFog.decode(new byte[]{115, 75, 88, 85, 90, 87, 91, 77, 116, 83, 89, 83, 82, 92, 75}, "599272", -1.0524903E9f), NPStringFog.decode(new byte[]{96, 21, 85, 85, 91, 3, 95, 32, 86, 80, 87, 1, 71, 22, 115, 89, 92, 22, 65, 10, 92, 90, 87, 16, 9, 69, 115, 89, 92, 22, 82, 12, 94, 83, 64, 66}, "3e062b", 1.471509775E9d) + getContainer() + NPStringFog.decode(new byte[]{25, 13, 2, 18, 23, 10, 86, 17, 67, 3, 82, 1, 87, 69, 15, 0, 94, 0, 25, 10, 22, 21, 25, 68, 122, 10, 14, 17, 91, 1, 77, 12, 13, 6, 23, 11, 73, 0, 17, 0, 67, 13, 86, 11, 67}, "9eca7d", 28917) + operation7);
                        }
                        transitionInfo5.completeSpecialEffect();
                    }
                }
            }
        }
        if (!ViewCompat.isLaidOut(getContainer())) {
            return map;
        }
        FragmentTransition.setViewVisibility(arrayList4, 4);
        ArrayList<String> arrayListPrepareSetNameOverridesReordered = fragmentTransitionImpl.prepareSetNameOverridesReordered(arrayList3);
        fragmentTransitionImpl.beginDelayedTransition(getContainer(), objMergeTransitionsInSequence);
        fragmentTransitionImpl.setNameOverridesReordered(getContainer(), arrayList2, arrayList3, arrayListPrepareSetNameOverridesReordered, arrayMap);
        FragmentTransition.setViewVisibility(arrayList4, 0);
        fragmentTransitionImpl.swapSharedElementTargets(obj, arrayList2, arrayList3);
        return map;
    }

    void applyContainerChanges(SpecialEffectsController.Operation operation) {
        operation.getFinalState().applyState(operation.getFragment().mView);
    }

    void captureTransitioningViews(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                captureTransitioningViews(arrayList, childAt);
            }
        }
    }

    @Override // androidx.fragment.app.SpecialEffectsController
    void executeOperations(List<SpecialEffectsController.Operation> list, boolean z) {
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        for (SpecialEffectsController.Operation operation3 : list) {
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(operation3.getFragment().mView);
            switch (AnonymousClass10.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[operation3.getFinalState().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    if (stateFrom == SpecialEffectsController.Operation.State.VISIBLE && operation2 == null) {
                        operation2 = operation3;
                    }
                    break;
                case 4:
                    if (stateFrom != SpecialEffectsController.Operation.State.VISIBLE) {
                        operation = operation3;
                    }
                    break;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(list);
        Iterator<SpecialEffectsController.Operation> it = list.iterator();
        while (it.hasNext()) {
            SpecialEffectsController.Operation next = it.next();
            CancellationSignal cancellationSignal = new CancellationSignal();
            next.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new AnimationInfo(next, cancellationSignal, z));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            next.markStartedSpecialEffect(cancellationSignal2);
            arrayList2.add(new TransitionInfo(next, cancellationSignal2, z, !z ? next != operation : next != operation2));
            next.addCompletionListener(new Runnable(this, arrayList3, next) { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                final DefaultSpecialEffectsController this$0;
                final List val$awaitingContainerChanges;
                final SpecialEffectsController.Operation val$operation;

                {
                    this.this$0 = this;
                    this.val$awaitingContainerChanges = arrayList3;
                    this.val$operation = next;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.val$awaitingContainerChanges.contains(this.val$operation)) {
                        this.val$awaitingContainerChanges.remove(this.val$operation);
                        this.this$0.applyContainerChanges(this.val$operation);
                    }
                }
            });
        }
        Map<SpecialEffectsController.Operation, Boolean> mapStartTransitions = startTransitions(arrayList2, arrayList3, z, operation2, operation);
        startAnimations(arrayList, arrayList3, mapStartTransitions.containsValue(true), mapStartTransitions);
        Iterator<SpecialEffectsController.Operation> it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            applyContainerChanges(it2.next());
        }
        arrayList3.clear();
    }

    void findNamedViews(Map<String, View> map, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(map, childAt);
                }
            }
        }
    }

    void retainMatchingViews(ArrayMap<String, View> arrayMap, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = arrayMap.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
