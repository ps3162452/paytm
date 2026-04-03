package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
class FragmentStateManager {
    private static final String TAG = NPStringFog.decode(new byte[]{114, 67, 4, 94, 15, 81, 90, 69, 40, 88, 12, 85, 83, 84, 23}, "41e9b4", 6.55782444E8d);
    private static final String TARGET_REQUEST_CODE_STATE_TAG = NPStringFog.decode(new byte[]{0, 94, 0, 23, 11, 92, 5, 10, 16, 4, 22, 82, 4, 68, 59, 23, 1, 68, 62, 67, 16, 4, 16, 80}, "a0ded5", -15874);
    private static final String TARGET_STATE_TAG = NPStringFog.decode(new byte[]{80, 90, 93, 67, 91, 81, 85, 14, 77, 80, 70, 95, 84, 64, 102, 66, 64, 89, 69, 81}, "149148", 2.7146602E8f);
    private static final String USER_VISIBLE_HINT_TAG = NPStringFog.decode(new byte[]{88, 87, 7, 75, 91, 88, 93, 3, 22, 74, 81, 67, 102, 79, 10, 74, 93, 83, 85, 92, 60, 81, 93, 95, 77}, "99c941", 2113008760L);
    private static final String VIEW_REGISTRY_STATE_TAG = NPStringFog.decode(new byte[]{87, 10, 6, 17, 95, 94, 82, 94, 20, 10, 85, 64, 105, 22, 7, 4, 89, 68, 66, 22, 27, 60, 67, 67, 87, 16, 7}, "6dbc07", -8.7506324E7d);
    private static final String VIEW_STATE_TAG = NPStringFog.decode(new byte[]{87, 11, 92, 69, 94, 13, 82, 95, 78, 94, 84, 19, 105, 22, 76, 86, 69, 1}, "6e871d", true, true);
    private final FragmentLifecycleCallbacksDispatcher mDispatcher;
    private final Fragment mFragment;
    private final FragmentStore mFragmentStore;
    private boolean mMovingToState = false;
    private int mFragmentManagerState = -1;

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
    }

    FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment, FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        fragment.mTargetWho = fragment.mTarget != null ? fragment.mTarget.mWho : null;
        fragment.mTarget = null;
        if (fragmentState.mSavedFragmentState != null) {
            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, ClassLoader classLoader, FragmentFactory fragmentFactory, FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        Fragment fragmentInstantiate = fragmentFactory.instantiate(classLoader, fragmentState.mClassName);
        this.mFragment = fragmentInstantiate;
        if (fragmentState.mArguments != null) {
            fragmentState.mArguments.setClassLoader(classLoader);
        }
        fragmentInstantiate.setArguments(fragmentState.mArguments);
        fragmentInstantiate.mWho = fragmentState.mWho;
        fragmentInstantiate.mFromLayout = fragmentState.mFromLayout;
        fragmentInstantiate.mRestored = true;
        fragmentInstantiate.mFragmentId = fragmentState.mFragmentId;
        fragmentInstantiate.mContainerId = fragmentState.mContainerId;
        fragmentInstantiate.mTag = fragmentState.mTag;
        fragmentInstantiate.mRetainInstance = fragmentState.mRetainInstance;
        fragmentInstantiate.mRemoving = fragmentState.mRemoving;
        fragmentInstantiate.mDetached = fragmentState.mDetached;
        fragmentInstantiate.mHidden = fragmentState.mHidden;
        fragmentInstantiate.mMaxState = Lifecycle.State.values()[fragmentState.mMaxLifecycleState];
        if (fragmentState.mSavedFragmentState != null) {
            fragmentInstantiate.mSavedFragmentState = fragmentState.mSavedFragmentState;
        } else {
            fragmentInstantiate.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{112, 75, 5, 1, 91, 81, 88, 77, 41, 7, 88, 85, 81, 92, 22}, "69df64", 1267365565L), NPStringFog.decode(new byte[]{123, 13, 67, 65, 87, 90, 70, 10, 81, 65, 83, 80, 18, 5, 66, 84, 81, 89, 87, 13, 68, 21}, "2c0564", -299932458L) + fragmentInstantiate);
        }
    }

    private boolean isFragmentViewChild(View view) {
        if (view == this.mFragment.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.mFragment.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle saveBasicState() {
        Bundle bundle = new Bundle();
        this.mFragment.performSaveInstanceState(bundle);
        this.mDispatcher.dispatchOnFragmentSaveInstanceState(this.mFragment, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.mFragment.mView != null) {
            saveViewState();
        }
        if (this.mFragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, this.mFragment.mSavedViewState);
        }
        if (this.mFragment.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle(VIEW_REGISTRY_STATE_TAG, this.mFragment.mSavedViewRegistryState);
        }
        if (!this.mFragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, this.mFragment.mUserVisibleHint);
        }
        return bundle;
    }

    void activityCreated() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{12, 89, 71, 84, 22, 12, 65, 119, 114, 101, 43, 53, 40, 98, 104, 110, 33, 49, 36, 119, 101, 116, 38, 89, 65}, "a611bc", 339831935L) + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment2 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(fragment2, fragment2.mSavedFragmentState, false);
    }

    void addViewToContainer() {
        this.mFragment.mContainer.addView(this.mFragment.mView, this.mFragmentStore.findFragmentIndexInContainer(this.mFragment));
    }

    void attach() {
        FragmentStateManager fragmentStateManager;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{15, 9, 23, 4, 64, 86, 66, 39, 53, 53, 117, 122, 42, 35, 37, 91, 20}, "bfaa49", true, false) + this.mFragment);
        }
        if (this.mFragment.mTarget != null) {
            fragmentStateManager = this.mFragmentStore.getFragmentStateManager(this.mFragment.mTarget.mWho);
            if (fragmentStateManager == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 64, 2, 81, 91, 4, 90, 70, 67}, "42c66a", false, false) + this.mFragment + NPStringFog.decode(new byte[]{23, 93, 6, 86, 92, 88, 69, 92, 7, 21, 68, 88, 69, 94, 6, 65, 16, 95, 69, 88, 4, 88, 85, 87, 67, 25}, "79c509", -1.7780758E9f) + this.mFragment.mTarget + NPStringFog.decode(new byte[]{66, 65, 11, 83, 68, 19, 6, 90, 6, 65, 16, 93, 13, 65, 67, 80, 85, 95, 13, 91, 4, 18, 68, 92, 66, 65, 11, 91, 67, 19, 36, 71, 2, 85, 93, 86, 12, 65, 46, 83, 94, 82, 5, 80, 17, 19}, "b5c203", true));
            }
            Fragment fragment = this.mFragment;
            fragment.mTargetWho = fragment.mTarget.mWho;
            this.mFragment.mTarget = null;
        } else if (this.mFragment.mTargetWho != null) {
            fragmentStateManager = this.mFragmentStore.getFragmentStateManager(this.mFragment.mTargetWho);
            if (fragmentStateManager == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 19, 80, 4, 12, 93, 93, 21, 17}, "3a1ca8", 792930566L) + this.mFragment + NPStringFog.decode(new byte[]{66, 87, 84, 82, 14, 89, 16, 86, 85, 17, 22, 89, 16, 84, 84, 69, 66, 94, 16, 82, 86, 92, 7, 86, 22, 19}, "b311b8", false) + this.mFragment.mTargetWho + NPStringFog.decode(new byte[]{17, 65, 90, 83, 76, 68, 85, 90, 87, 65, 24, 10, 94, 65, 18, 80, 93, 8, 94, 91, 85, 18, 76, 11, 17, 65, 90, 91, 75, 68, 119, 71, 83, 85, 85, 1, 95, 65, 127, 83, 86, 5, 86, 80, 64, 19}, "15228d", 1768632548L));
            }
        } else {
            fragmentStateManager = null;
        }
        if (fragmentStateManager != null && (FragmentManager.USE_STATE_MANAGER || fragmentStateManager.getFragment().mState < 1)) {
            fragmentStateManager.moveToExpectedState();
        }
        Fragment fragment2 = this.mFragment;
        fragment2.mHost = fragment2.mFragmentManager.getHost();
        Fragment fragment3 = this.mFragment;
        fragment3.mParentFragment = fragment3.mFragmentManager.getParent();
        this.mDispatcher.dispatchOnFragmentPreAttached(this.mFragment, false);
        this.mFragment.performAttach();
        this.mDispatcher.dispatchOnFragmentAttached(this.mFragment, false);
    }

    int computeExpectedState() {
        if (this.mFragment.mFragmentManager == null) {
            return this.mFragment.mState;
        }
        int iMin = this.mFragmentManagerState;
        switch (AnonymousClass2.$SwitchMap$androidx$lifecycle$Lifecycle$State[this.mFragment.mMaxState.ordinal()]) {
            case 1:
                break;
            case 2:
                iMin = Math.min(iMin, 5);
                break;
            case 3:
                iMin = Math.min(iMin, 1);
                break;
            case 4:
                iMin = Math.min(iMin, 0);
                break;
            default:
                iMin = Math.min(iMin, -1);
                break;
        }
        if (this.mFragment.mFromLayout) {
            if (this.mFragment.mInLayout) {
                iMin = Math.max(this.mFragmentManagerState, 2);
                if (this.mFragment.mView != null && this.mFragment.mView.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.mFragmentManagerState < 4 ? Math.min(iMin, this.mFragment.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.mFragment.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        SpecialEffectsController.Operation.LifecycleImpact awaitingCompletionLifecycleImpact = null;
        if (FragmentManager.USE_STATE_MANAGER && this.mFragment.mContainer != null) {
            awaitingCompletionLifecycleImpact = SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).getAwaitingCompletionLifecycleImpact(this);
        }
        if (awaitingCompletionLifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (awaitingCompletionLifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else if (this.mFragment.mRemoving) {
            iMin = this.mFragment.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (this.mFragment.mDeferStart && this.mFragment.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (!FragmentManager.isLoggingEnabled(2)) {
            return iMin;
        }
        Log.v(TAG, NPStringFog.decode(new byte[]{7, 10, 14, 17, 17, 21, 1, 32, 27, 17, 1, 2, 16, 0, 7, 50, 16, 0, 16, 0, 75, 72, 68, 14, 2, 69}, "decada", -1.466876733E9d) + iMin + NPStringFog.decode(new byte[]{16, 3, 14, 16, 25}, "0eab96", true, false) + this.mFragment);
        return iMin;
    }

    void create() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{15, 12, 18, 1, 21, 90, 66, 32, 54, 33, 32, 97, 39, 39, 94, 68}, "bcdda5", 2069437216L) + this.mFragment);
        }
        if (this.mFragment.mIsCreated) {
            Fragment fragment = this.mFragment;
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.mFragment.mState = 1;
            return;
        }
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment2 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentPreCreated(fragment2, fragment2.mSavedFragmentState, false);
        Fragment fragment3 = this.mFragment;
        fragment3.performCreate(fragment3.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher2 = this.mDispatcher;
        Fragment fragment4 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher2.dispatchOnFragmentCreated(fragment4, fragment4.mSavedFragmentState, false);
    }

    void createView() {
        String strDecode;
        if (this.mFragment.mFromLayout) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{11, 14, 18, 6, 68, 90, 70, 34, 54, 38, 113, 97, 35, 62, 50, 42, 117, 98, 92, 65}, "fadc05", -2.0858722E8f) + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        if (this.mFragment.mContainer != null) {
            viewGroup = this.mFragment.mContainer;
        } else if (this.mFragment.mContainerId != 0) {
            if (this.mFragment.mContainerId == -1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 80, 92, 8, 11, 23, 70, 82, 64, 3, 5, 23, 3, 17, 84, 20, 5, 4, 11, 84, 92, 18, 68}, "f12fdc", -9.52396537E8d) + this.mFragment + NPStringFog.decode(new byte[]{25, 86, 92, 69, 19, 88, 25, 83, 92, 89, 71, 88, 80, 94, 86, 69, 19, 79, 80, 85, 68, 23, 68, 80, 77, 88, 19, 89, 92, 25, 80, 84}, "903739", -8.63928054E8d));
            }
            viewGroup = (ViewGroup) this.mFragment.mFragmentManager.getContainer().onFindViewById(this.mFragment.mContainerId);
            if (viewGroup == null && !this.mFragment.mRestored) {
                try {
                    strDecode = this.mFragment.getResources().getResourceName(this.mFragment.mContainerId);
                } catch (Resources.NotFoundException e) {
                    strDecode = NPStringFog.decode(new byte[]{20, 86, 93, 94, 9, 67, 15}, "a860f4", false);
                }
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 90, 17, 68, 15, 80, 66, 21, 87, 93, 19, 91, 81, 21, 87, 93, 20, 21, 92, 81, 17, 2, 30}, "5512f5", 24569) + Integer.toHexString(this.mFragment.mContainerId) + NPStringFog.decode(new byte[]{21, 27}, "539ad2", -30957) + strDecode + NPStringFog.decode(new byte[]{29, 21, 80, 88, 71, 69, 82, 71, 87, 80, 88, 0, 90, 65, 22}, "45675e", 1.8860576E9f) + this.mFragment);
            }
        }
        this.mFragment.mContainer = viewGroup;
        Fragment fragment2 = this.mFragment;
        fragment2.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment2.mSavedFragmentState);
        if (this.mFragment.mView != null) {
            this.mFragment.mView.setSaveFromParentEnabled(false);
            this.mFragment.mView.setTag(R.id.fragment_container_view_tag, this.mFragment);
            if (viewGroup != null) {
                addViewToContainer();
            }
            if (this.mFragment.mHidden) {
                this.mFragment.mView.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.mFragment.mView)) {
                ViewCompat.requestApplyInsets(this.mFragment.mView);
            } else {
                View view = this.mFragment.mView;
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(this, view) { // from class: androidx.fragment.app.FragmentStateManager.1
                    final FragmentStateManager this$0;
                    final View val$fragmentView;

                    {
                        this.this$0 = this;
                        this.val$fragmentView = view;
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view2) {
                        this.val$fragmentView.removeOnAttachStateChangeListener(this);
                        ViewCompat.requestApplyInsets(this.val$fragmentView);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view2) {
                    }
                });
            }
            this.mFragment.performViewCreated();
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
            Fragment fragment3 = this.mFragment;
            fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment3, fragment3.mView, this.mFragment.mSavedFragmentState, false);
            int visibility = this.mFragment.mView.getVisibility();
            float alpha = this.mFragment.mView.getAlpha();
            if (FragmentManager.USE_STATE_MANAGER) {
                this.mFragment.setPostOnViewCreatedAlpha(alpha);
                if (this.mFragment.mContainer != null && visibility == 0) {
                    View viewFindFocus = this.mFragment.mView.findFocus();
                    if (viewFindFocus != null) {
                        this.mFragment.setFocusedView(viewFindFocus);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(TAG, NPStringFog.decode(new byte[]{75, 84, 16, 20, 80, 74, 77, 119, 14, 2, 64, 74, 3, 17, 50, 0, 67, 92, 93, 17, 7, 14, 86, 76, 74, 84, 5, 65, 67, 80, 92, 70, 65}, "91aa59", -1.95465321E9d) + viewFindFocus + NPStringFog.decode(new byte[]{25, 7, 12, 64, 69, 118, 75, 0, 4, 95, 0, 94, 77, 65}, "9ac2e0", false) + this.mFragment);
                        }
                    }
                    this.mFragment.mView.setAlpha(0.0f);
                }
            } else {
                Fragment fragment4 = this.mFragment;
                fragment4.mIsNewlyAdded = visibility == 0 && fragment4.mContainer != null;
            }
        }
        this.mFragment.mState = 2;
    }

    void destroy() {
        Fragment fragmentFindActiveFragment;
        boolean zIsCleared = true;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{15, 92, 23, 0, 2, 16, 13, 94, 65, 38, 54, 39, 35, 103, 36, 33, 94, 66}, "b3aedb", false) + this.mFragment);
        }
        boolean z = this.mFragment.mRemoving && !this.mFragment.isInBackStack();
        if (!(z || this.mFragmentStore.getNonConfig().shouldDestroy(this.mFragment))) {
            if (this.mFragment.mTargetWho != null && (fragmentFindActiveFragment = this.mFragmentStore.findActiveFragment(this.mFragment.mTargetWho)) != null && fragmentFindActiveFragment.mRetainInstance) {
                this.mFragment.mTarget = fragmentFindActiveFragment;
            }
            this.mFragment.mState = 0;
            return;
        }
        FragmentHostCallback<?> fragmentHostCallback = this.mFragment.mHost;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            zIsCleared = this.mFragmentStore.getNonConfig().isCleared();
        } else if (fragmentHostCallback.getContext() instanceof Activity) {
            zIsCleared = !((Activity) fragmentHostCallback.getContext()).isChangingConfigurations();
        }
        if (z || zIsCleared) {
            this.mFragmentStore.getNonConfig().clearNonConfigState(this.mFragment);
        }
        this.mFragment.performDestroy();
        this.mDispatcher.dispatchOnFragmentDestroyed(this.mFragment, false);
        for (FragmentStateManager fragmentStateManager : this.mFragmentStore.getActiveFragmentStateManagers()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.getFragment();
                if (this.mFragment.mWho.equals(fragment.mTargetWho)) {
                    fragment.mTarget = this.mFragment;
                    fragment.mTargetWho = null;
                }
            }
        }
        if (this.mFragment.mTargetWho != null) {
            Fragment fragment2 = this.mFragment;
            fragment2.mTarget = this.mFragmentStore.findActiveFragment(fragment2.mTargetWho);
        }
        this.mFragmentStore.makeInactive(this);
    }

    void destroyFragmentView() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{9, 90, 21, 81, 85, 69, 11, 88, 67, 119, 97, 114, 37, 97, 38, 107, 101, 126, 33, 98, 89, 20}, "d5c437", false, false) + this.mFragment);
        }
        if (this.mFragment.mContainer != null && this.mFragment.mView != null) {
            this.mFragment.mContainer.removeView(this.mFragment.mView);
        }
        this.mFragment.performDestroyView();
        this.mDispatcher.dispatchOnFragmentViewDestroyed(this.mFragment, false);
        this.mFragment.mContainer = null;
        this.mFragment.mView = null;
        this.mFragment.mViewLifecycleOwner = null;
        this.mFragment.mViewLifecycleOwnerLiveData.setValue(null);
        this.mFragment.mInLayout = false;
    }

    void detach() {
        boolean z = false;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{8, 90, 18, 83, 87, 19, 10, 88, 68, 119, 101, 53, 36, 118, 44, 115, 117, 91, 69}, "e5d61a", false, false) + this.mFragment);
        }
        this.mFragment.performDetach();
        this.mDispatcher.dispatchOnFragmentDetached(this.mFragment, false);
        this.mFragment.mState = -1;
        this.mFragment.mHost = null;
        this.mFragment.mParentFragment = null;
        this.mFragment.mFragmentManager = null;
        if (this.mFragment.mRemoving && !this.mFragment.isInBackStack()) {
            z = true;
        }
        if (z || this.mFragmentStore.getNonConfig().shouldDestroy(this.mFragment)) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d(TAG, NPStringFog.decode(new byte[]{91, 93, 94, 18, 50, 22, 83, 71, 82, 70, 2, 3, 94, 95, 82, 2, 65, 4, 93, 65, 23, 0, 19, 3, 85, 94, 82, 8, 21, 88, 18}, "237fab", -675366140L) + this.mFragment);
            }
            this.mFragment.initState();
        }
    }

    void ensureInflatedView() {
        if (this.mFragment.mFromLayout && this.mFragment.mInLayout && !this.mFragment.mPerformedCreateView) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d(TAG, NPStringFog.decode(new byte[]{88, 10, 71, 87, 21, 9, 21, 38, 99, 119, 32, 50, 112, 58, 103, 123, 36, 49, 15, 69}, "5e12af", -640171534L) + this.mFragment);
            }
            Fragment fragment = this.mFragment;
            fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, this.mFragment.mSavedFragmentState);
            if (this.mFragment.mView != null) {
                this.mFragment.mView.setSaveFromParentEnabled(false);
                this.mFragment.mView.setTag(R.id.fragment_container_view_tag, this.mFragment);
                if (this.mFragment.mHidden) {
                    this.mFragment.mView.setVisibility(8);
                }
                this.mFragment.performViewCreated();
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
                Fragment fragment2 = this.mFragment;
                fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment2, fragment2.mView, this.mFragment.mSavedFragmentState, false);
                this.mFragment.mState = 2;
            }
        }
    }

    Fragment getFragment() {
        return this.mFragment;
    }

    void moveToExpectedState() {
        if (this.mMovingToState) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{42, 84, 95, 91, 22, 89, 13, 84, 17, 70, 1, 29, 6, 93, 69, 70, 5, 94, 23, 19, 82, 85, 8, 92, 67, 71, 94, 20, 9, 95, 21, 86, 101, 91, 33, 72, 19, 86, 82, 64, 1, 84, 48, 71, 80, 64, 1, 24, 74, 19, 87, 91, 22, 16}, "c314d0", false) + getFragment());
                return;
            }
            return;
        }
        try {
            this.mMovingToState = true;
            while (true) {
                int iComputeExpectedState = computeExpectedState();
                if (iComputeExpectedState == this.mFragment.mState) {
                    if (FragmentManager.USE_STATE_MANAGER && this.mFragment.mHiddenChanged) {
                        if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                            SpecialEffectsController orCreateController = SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager());
                            if (this.mFragment.mHidden) {
                                orCreateController.enqueueHide(this);
                            } else {
                                orCreateController.enqueueShow(this);
                            }
                        }
                        if (this.mFragment.mFragmentManager != null) {
                            this.mFragment.mFragmentManager.invalidateMenuForFragment(this.mFragment);
                        }
                        this.mFragment.mHiddenChanged = false;
                        Fragment fragment = this.mFragment;
                        fragment.onHiddenChanged(fragment.mHidden);
                    }
                    return;
                }
                if (iComputeExpectedState <= this.mFragment.mState) {
                    switch (this.mFragment.mState - 1) {
                        case -1:
                            detach();
                            break;
                        case 0:
                            destroy();
                            break;
                        case 1:
                            destroyFragmentView();
                            this.mFragment.mState = 1;
                            break;
                        case 2:
                            this.mFragment.mInLayout = false;
                            this.mFragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.isLoggingEnabled(3)) {
                                Log.d(TAG, NPStringFog.decode(new byte[]{8, 90, 20, 6, 3, 67, 10, 88, 66, 34, 38, 101, 44, 99, 43, 55, 60, 110, 38, 103, 39, 34, 49, 116, 33, 15, 66}, "e5bce1", false) + this.mFragment);
                            }
                            if (this.mFragment.mView != null && this.mFragment.mSavedViewState == null) {
                                saveViewState();
                            }
                            if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                                SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).enqueueRemove(this);
                            }
                            this.mFragment.mState = 3;
                            break;
                        case 4:
                            stop();
                            break;
                        case 5:
                            this.mFragment.mState = 5;
                            break;
                        case 6:
                            pause();
                            break;
                    }
                } else {
                    switch (this.mFragment.mState + 1) {
                        case 0:
                            attach();
                            break;
                        case 1:
                            create();
                            break;
                        case 2:
                            ensureInflatedView();
                            createView();
                            break;
                        case 3:
                            activityCreated();
                            break;
                        case 4:
                            if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                                SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).enqueueAdd(SpecialEffectsController.Operation.State.from(this.mFragment.mView.getVisibility()), this);
                            }
                            this.mFragment.mState = 4;
                            break;
                        case 5:
                            start();
                            break;
                        case 6:
                            this.mFragment.mState = 6;
                            break;
                        case 7:
                            resume();
                            break;
                    }
                }
            }
        } finally {
            this.mMovingToState = false;
        }
    }

    void pause() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{9, 95, 79, 83, 83, 67, 11, 93, 25, 100, 112, 98, 49, 125, 124, 114, 15, 17}, "d09651", false) + this.mFragment);
        }
        this.mFragment.performPause();
        this.mDispatcher.dispatchOnFragmentPaused(this.mFragment, false);
    }

    void restoreState(ClassLoader classLoader) {
        if (this.mFragment.mSavedFragmentState == null) {
            return;
        }
        this.mFragment.mSavedFragmentState.setClassLoader(classLoader);
        Fragment fragment = this.mFragment;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
        Fragment fragment2 = this.mFragment;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle(VIEW_REGISTRY_STATE_TAG);
        Fragment fragment3 = this.mFragment;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString(TARGET_STATE_TAG);
        if (this.mFragment.mTargetWho != null) {
            Fragment fragment4 = this.mFragment;
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
        }
        if (this.mFragment.mSavedUserVisibleHint != null) {
            Fragment fragment5 = this.mFragment;
            fragment5.mUserVisibleHint = fragment5.mSavedUserVisibleHint.booleanValue();
            this.mFragment.mSavedUserVisibleHint = null;
        } else {
            Fragment fragment6 = this.mFragment;
            fragment6.mUserVisibleHint = fragment6.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
        }
        if (this.mFragment.mUserVisibleHint) {
            return;
        }
        this.mFragment.mDeferStart = true;
    }

    void resume() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{91, 87, 19, 7, 23, 9, 22, 106, 32, 49, 54, 43, 115, 124, 95, 66}, "68ebcf", 7136) + this.mFragment);
        }
        View focusedView = this.mFragment.getFocusedView();
        if (focusedView != null && isFragmentViewChild(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (FragmentManager.isLoggingEnabled(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append(NPStringFog.decode(new byte[]{16, 83, 18, 77, 85, 75, 22, 112, 12, 91, 69, 75, 88, 22, 49, 93, 67, 76, 13, 68, 10, 86, 87, 24, 4, 89, 0, 77, 67, 93, 6, 22, 21, 81, 85, 79, 66}, "b6c808", true, true));
                sb.append(focusedView);
                sb.append(" ");
                sb.append(zRequestFocus ? NPStringFog.decode(new byte[]{71, 20, 86, 82, 85, 81, 80, 4, 81}, "4a5104", true, false) : NPStringFog.decode(new byte[]{87, 84, 94, 88, 80, 81}, "157455", -448224002L));
                sb.append(NPStringFog.decode(new byte[]{69, 13, 86, 24, 36, 66, 4, 5, 85, 93, 12, 68, 69}, "eb88b0", -1.78230044E8d));
                sb.append(this.mFragment);
                sb.append(NPStringFog.decode(new byte[]{18, 74, 7, 23, 68, 85, 70, 81, 12, 3, 17, 80, 92, 24, 4, 11, 82, 76, 65, 93, 6, 68, 71, 80, 87, 79, 66}, "28bd19", -7.67569722E8d));
                sb.append(this.mFragment.mView.findFocus());
                Log.v(TAG, sb.toString());
            }
        }
        this.mFragment.setFocusedView(null);
        this.mFragment.performResume();
        this.mDispatcher.dispatchOnFragmentResumed(this.mFragment, false);
        this.mFragment.mSavedFragmentState = null;
        this.mFragment.mSavedViewState = null;
        this.mFragment.mSavedViewRegistryState = null;
    }

    Fragment.SavedState saveInstanceState() {
        Bundle bundleSaveBasicState;
        if (this.mFragment.mState <= -1 || (bundleSaveBasicState = saveBasicState()) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleSaveBasicState);
    }

    FragmentState saveState() {
        FragmentState fragmentState = new FragmentState(this.mFragment);
        if (this.mFragment.mState <= -1 || fragmentState.mSavedFragmentState != null) {
            fragmentState.mSavedFragmentState = this.mFragment.mSavedFragmentState;
        } else {
            fragmentState.mSavedFragmentState = saveBasicState();
            if (this.mFragment.mTargetWho != null) {
                if (fragmentState.mSavedFragmentState == null) {
                    fragmentState.mSavedFragmentState = new Bundle();
                }
                fragmentState.mSavedFragmentState.putString(TARGET_STATE_TAG, this.mFragment.mTargetWho);
                if (this.mFragment.mTargetRequestCode != 0) {
                    fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, this.mFragment.mTargetRequestCode);
                }
            }
        }
        return fragmentState;
    }

    void saveViewState() {
        if (this.mFragment.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.mFragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.mFragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.mFragment.mViewLifecycleOwner.performSave(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.mFragment.mSavedViewRegistryState = bundle;
    }

    void setFragmentManagerState(int i) {
        this.mFragmentManagerState = i;
    }

    void start() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{85, 92, 64, 4, 71, 9, 24, 96, 98, 32, 97, 50, 125, 119, 12, 65}, "836a3f", true) + this.mFragment);
        }
        this.mFragment.performStart();
        this.mDispatcher.dispatchOnFragmentStarted(this.mFragment, false);
    }

    void stop() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{94, 14, 71, 85, 5, 68, 92, 12, 17, 99, 55, 119, 97, 53, 116, 116, 89, 22}, "3a10c6", -29668) + this.mFragment);
        }
        this.mFragment.performStop();
        this.mDispatcher.dispatchOnFragmentStopped(this.mFragment, false);
    }
}
