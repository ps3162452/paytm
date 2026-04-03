package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.arch.core.util.Function;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.app.SharedElementCallback;
import androidx.core.view.LayoutInflaterCompat;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ActivityResultCaller {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    AnimationInfo mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;
    FragmentManager mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    ViewModelProvider.Factory mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManager mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    FragmentHostCallback<?> mHost;
    boolean mInLayout;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    LifecycleRegistry mLifecycleRegistry;
    Lifecycle.State mMaxState;
    boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<OnPreAttachedListener> mOnPreAttachedListeners;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    Runnable mPostponedDurationRunnable;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    SavedStateRegistryController mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;
    FragmentViewLifecycleOwner mViewLifecycleOwner;
    MutableLiveData<LifecycleOwner> mViewLifecycleOwnerLiveData;
    String mWho;

    static class AnimationInfo {
        Boolean mAllowEnterTransitionOverlap;
        Boolean mAllowReturnTransitionOverlap;
        View mAnimatingAway;
        Animator mAnimator;
        int mEnterAnim;
        boolean mEnterTransitionPostponed;
        int mExitAnim;
        boolean mIsHideReplaced;
        boolean mIsPop;
        int mNextTransition;
        int mPopEnterAnim;
        int mPopExitAnim;
        ArrayList<String> mSharedElementSourceNames;
        ArrayList<String> mSharedElementTargetNames;
        OnStartEnterTransitionListener mStartEnterTransitionListener;
        Object mEnterTransition = null;
        Object mReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
        Object mExitTransition = null;
        Object mReenterTransition = Fragment.USE_DEFAULT_TRANSITION;
        Object mSharedElementEnterTransition = null;
        Object mSharedElementReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
        SharedElementCallback mEnterTransitionCallback = null;
        SharedElementCallback mExitTransitionCallback = null;
        float mPostOnViewCreatedAlpha = 1.0f;
        View mFocusedView = null;

        AnimationInfo() {
        }
    }

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    private static abstract class OnPreAttachedListener {
        private OnPreAttachedListener() {
        }

        abstract void onPreAttached();
    }

    interface OnStartEnterTransitionListener {
        void onStartEnterTransition();

        void startListening();
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.fragment.app.Fragment.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final Bundle mState;

        SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle = parcel.readBundle();
            this.mState = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.mState);
        }
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new FragmentManagerImpl();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new Runnable(this) { // from class: androidx.fragment.app.Fragment.1
            final Fragment this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.startPostponedEnterTransition();
            }
        };
        this.mMaxState = Lifecycle.State.RESUMED;
        this.mViewLifecycleOwnerLiveData = new MutableLiveData<>();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        initLifecycle();
    }

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private AnimationInfo ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new AnimationInfo();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        return (this.mMaxState == Lifecycle.State.INITIALIZED || this.mParentFragment == null) ? this.mMaxState.ordinal() : Math.min(this.mMaxState.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        this.mSavedStateRegistryController = SavedStateRegistryController.create(this);
        this.mDefaultFactory = null;
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragmentNewInstance = FragmentFactory.loadFragmentClass(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
                fragmentNewInstance.setArguments(bundle);
            }
            return fragmentNewInstance;
        } catch (IllegalAccessException e) {
            throw new InstantiationException(NPStringFog.decode(new byte[]{97, 86, 5, 80, 93, 93, 20, 76, 11, 18, 88, 86, 71, 76, 5, 92, 69, 81, 85, 76, 1, 18, 87, 74, 85, 95, 9, 87, 95, 76, 20}, "48d218", 11684) + str + NPStringFog.decode(new byte[]{11, 21, 94, 80, 14, 6, 17, 70, 70, 67, 0, 67, 82, 89, 82, 66, 22, 67, 95, 84, 94, 84, 69, 6, 73, 92, 64, 69, 22, 79, 17, 92, 64, 17, 21, 22, 83, 89, 90, 82, 73, 67, 80, 91, 87, 17, 13, 2, 66, 21, 82, 95, 69, 6, 92, 69, 71, 72, 69, 0, 94, 91, 64, 69, 23, 22, 82, 65, 92, 67, 69, 23, 89, 84, 71, 17, 12, 16, 17, 69, 70, 83, 9, 10, 82}, "1531ec", -1.5004352E9f), e);
        } catch (java.lang.InstantiationException e2) {
            throw new InstantiationException(NPStringFog.decode(new byte[]{109, 88, 87, 84, 88, 4, 24, 66, 89, 22, 93, 15, 75, 66, 87, 88, 64, 8, 89, 66, 83, 22, 82, 19, 89, 81, 91, 83, 90, 21, 24}, "86664a", false, true) + str + NPStringFog.decode(new byte[]{10, 67, 95, 4, 9, 6, 16, 16, 71, 23, 7, 67, 83, 15, 83, 22, 17, 67, 94, 2, 95, 0, 66, 6, 72, 10, 65, 17, 17, 79, 16, 10, 65, 69, 18, 22, 82, 15, 91, 6, 78, 67, 81, 13, 86, 69, 10, 2, 67, 67, 83, 11, 66, 6, 93, 19, 70, 28, 66, 0, 95, 13, 65, 17, 16, 22, 83, 23, 93, 23, 66, 23, 88, 2, 70, 69, 11, 16, 16, 19, 71, 7, 14, 10, 83}, "0c2ebc", 1.5626296E9f), e2);
        } catch (NoSuchMethodException e3) {
            throw new InstantiationException(NPStringFog.decode(new byte[]{51, 87, 83, 87, 89, 6, 70, 77, 93, 21, 92, 13, 21, 77, 83, 91, 65, 10, 7, 77, 87, 21, 83, 17, 7, 94, 95, 80, 91, 23, 70}, "f9255c", false, true) + str + NPStringFog.decode(new byte[]{11, 22, 2, 10, 77, 85, 85, 22, 15, 10, 76, 25, 87, 95, 15, 1, 24, 127, 67, 87, 6, 8, 93, 87, 69, 22, 2, 10, 86, 74, 69, 68, 20, 6, 76, 86, 67}, "16ae89", -1.5520184E9f), e3);
        } catch (InvocationTargetException e4) {
            throw new InstantiationException(NPStringFog.decode(new byte[]{48, 95, 87, 83, 10, 81, 69, 69, 89, 17, 15, 90, 22, 69, 87, 95, 18, 93, 4, 69, 83, 17, 0, 70, 4, 86, 91, 84, 8, 64, 69}, "e161f4", true) + str + NPStringFog.decode(new byte[]{13, 19, 82, 5, 89, 92, 94, 93, 86, 68, 115, 66, 86, 84, 92, 1, 91, 68, 23, 80, 94, 10, 70, 68, 69, 70, 82, 16, 90, 66, 23, 80, 80, 17, 70, 85, 83, 19, 80, 10, 21, 85, 79, 80, 84, 20, 65, 89, 88, 93}, "731d50", true), e4);
        }
    }

    private <I, O> ActivityResultLauncher<I> prepareCallInternal(ActivityResultContract<I, O> activityResultContract, Function<Void, ActivityResultRegistry> function, ActivityResultCallback<O> activityResultCallback) {
        if (this.mState <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            registerOnPreAttachListener(new OnPreAttachedListener(this, function, atomicReference, activityResultContract, activityResultCallback) { // from class: androidx.fragment.app.Fragment.8
                final Fragment this$0;
                final ActivityResultCallback val$callback;
                final ActivityResultContract val$contract;
                final AtomicReference val$ref;
                final Function val$registryProvider;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    this.this$0 = this;
                    this.val$registryProvider = function;
                    this.val$ref = atomicReference;
                    this.val$contract = activityResultContract;
                    this.val$callback = activityResultCallback;
                }

                @Override // androidx.fragment.app.Fragment.OnPreAttachedListener
                void onPreAttached() {
                    String strGenerateActivityResultKey = this.this$0.generateActivityResultKey();
                    this.val$ref.set(((ActivityResultRegistry) this.val$registryProvider.apply(null)).register(strGenerateActivityResultKey, this.this$0, this.val$contract, this.val$callback));
                }
            });
            return new ActivityResultLauncher<I>(this, atomicReference, activityResultContract) { // from class: androidx.fragment.app.Fragment.9
                final Fragment this$0;
                final ActivityResultContract val$contract;
                final AtomicReference val$ref;

                {
                    this.this$0 = this;
                    this.val$ref = atomicReference;
                    this.val$contract = activityResultContract;
                }

                @Override // androidx.activity.result.ActivityResultLauncher
                public ActivityResultContract<I, ?> getContract() {
                    return this.val$contract;
                }

                @Override // androidx.activity.result.ActivityResultLauncher
                public void launch(I i, ActivityOptionsCompat activityOptionsCompat) {
                    ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.val$ref.get();
                    if (activityResultLauncher == null) {
                        throw new IllegalStateException(NPStringFog.decode(new byte[]{42, 20, 1, 70, 0, 71, 12, 11, 10, 20, 2, 82, 11, 10, 11, 64, 65, 81, 0, 68, 23, 64, 0, 65, 17, 1, 0, 20, 3, 86, 3, 11, 22, 81, 65, 85, 23, 5, 3, 89, 4, 93, 17, 68, 13, 71, 65, 90, 11, 68, 7, 70, 4, 82, 17, 1, 0, 20, 18, 71, 4, 16, 1}, "edd4a3", 380689527L));
                    }
                    activityResultLauncher.launch(i, activityOptionsCompat);
                }

                @Override // androidx.activity.result.ActivityResultLauncher
                public void unregister() {
                    ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.val$ref.getAndSet(null);
                    if (activityResultLauncher != null) {
                        activityResultLauncher.unregister();
                    }
                }
            };
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 69, 87, 4, 92, 81, 12, 67, 22}, "b76c14", true, true) + this + NPStringFog.decode(new byte[]{69, 81, 16, 66, 2, 17, 17, 93, 14, 18, 23, 12, 11, 95, 67, 22, 12, 69, 23, 93, 4, 11, 16, 17, 0, 74, 37, 13, 17, 36, 6, 76, 10, 20, 10, 17, 28, 106, 6, 17, 22, 9, 17, 24, 2, 4, 23, 0, 23, 24, 1, 7, 10, 11, 2, 24, 0, 16, 6, 4, 17, 93, 7, 76, 67, 35, 23, 89, 4, 15, 6, 11, 17, 75, 67, 15, 22, 22, 17, 24, 0, 3, 15, 9, 69, 74, 6, 5, 10, 22, 17, 93, 17, 36, 12, 23, 36, 91, 23, 11, 21, 12, 17, 65, 49, 7, 16, 16, 9, 76, 75, 75, 67, 7, 0, 94, 12, 16, 6, 69, 17, 80, 6, 27, 67, 4, 23, 93, 67, 1, 17, 0, 4, 76, 6, 6, 67, 77, 12, 22, 6, 76, 67, 12, 11, 81, 23, 11, 2, 9, 12, 66, 2, 22, 10, 10, 11, 20, 67, 13, 13, 36, 17, 76, 2, 1, 11, 77, 76, 20, 67, 13, 17, 69, 10, 86, 32, 16, 6, 4, 17, 93, 75, 75, 74, 75}, "e8cbce", 14411));
    }

    private void registerOnPreAttachListener(OnPreAttachedListener onPreAttachedListener) {
        if (this.mState >= 0) {
            onPreAttachedListener.onPreAttached();
        } else {
            this.mOnPreAttachedListeners.add(onPreAttachedListener);
        }
    }

    private void restoreViewState() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(NPStringFog.decode(new byte[]{34, 66, 7, 80, 88, 3, 10, 68, 43, 86, 91, 7, 3, 85, 20}, "d0f75f", true, true), NPStringFog.decode(new byte[]{85, 92, 23, 80, 66, 93, 24, 97, 36, 102, 98, 125, 106, 118, 62, 99, 127, 119, 111, 108, 50, 97, 119, 102, 125, 9, 65}, "83a562", -17405) + this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }

    void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        OnStartEnterTransitionListener onStartEnterTransitionListener = null;
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo != null) {
            animationInfo.mEnterTransitionPostponed = false;
            OnStartEnterTransitionListener onStartEnterTransitionListener2 = this.mAnimationInfo.mStartEnterTransitionListener;
            this.mAnimationInfo.mStartEnterTransitionListener = null;
            onStartEnterTransitionListener = onStartEnterTransitionListener2;
        }
        if (onStartEnterTransitionListener != null) {
            onStartEnterTransitionListener.onStartEnterTransition();
            return;
        }
        if (!FragmentManager.USE_STATE_MANAGER || this.mView == null || (viewGroup = this.mContainer) == null || (fragmentManager = this.mFragmentManager) == null) {
            return;
        }
        SpecialEffectsController orCreateController = SpecialEffectsController.getOrCreateController(viewGroup, fragmentManager);
        orCreateController.markPostponedState();
        if (z) {
            this.mHost.getHandler().post(new Runnable(this, orCreateController) { // from class: androidx.fragment.app.Fragment.3
                final Fragment this$0;
                final SpecialEffectsController val$controller;

                {
                    this.this$0 = this;
                    this.val$controller = orCreateController;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.val$controller.executePendingOperations();
                }
            });
        } else {
            orCreateController.executePendingOperations();
        }
    }

    FragmentContainer createFragmentContainer() {
        return new FragmentContainer(this) { // from class: androidx.fragment.app.Fragment.4
            final Fragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.fragment.app.FragmentContainer
            public View onFindViewById(int i) {
                if (this.this$0.mView != null) {
                    return this.this$0.mView.findViewById(i);
                }
                throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 19, 84, 6, 91, 84, 93, 21, 21}, "3a5a61", 4.36541655E8d) + this.this$0 + NPStringFog.decode(new byte[]{19, 87, 88, 7, 17, 66, 93, 92, 67, 66, 10, 3, 69, 86, 23, 3, 66, 20, 90, 86, 64}, "337bbb", false, false));
            }

            @Override // androidx.fragment.app.FragmentContainer
            public boolean onHasView() {
                return this.this$0.mView != null;
            }
        };
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{88, 115, 17, 3, 3, 94, 80, 91, 23, 43, 0, 14, 22}, "55cbd3", 1.1744698E9f));
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(NPStringFog.decode(new byte[]{67, 89, 117, 10, 87, 21, 2, 93, 88, 0, 75, 40, 7, 9, 21}, "c46e9a", -1460584570L));
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(NPStringFog.decode(new byte[]{20, 12, 98, 3, 1, 14}, "4a6bf3", 1611560061L));
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{8, 96, 18, 4, 71, 86, 88}, "e3fe33", 1.339186705E9d));
        printWriter.print(this.mState);
        printWriter.print(NPStringFog.decode(new byte[]{17, 11, 111, 94, 87, 94}, "1f868c", false, true));
        printWriter.print(this.mWho);
        printWriter.print(NPStringFog.decode(new byte[]{21, 92, 114, 87, 2, 82, 102, 69, 81, 85, 10, 119, 80, 66, 68, 95, 15, 94, 8}, "5106a9", 1.1762812E9f));
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{11, 37, 80, 93, 86, 7, 91}, "fd493c", 1.2898529E9f));
        printWriter.print(this.mAdded);
        printWriter.print(NPStringFog.decode(new byte[]{67, 14, 106, 86, 90, 88, 21, 10, 86, 84, 10}, "cc8377", 24009));
        printWriter.print(this.mRemoving);
        printWriter.print(NPStringFog.decode(new byte[]{18, 15, 112, 65, 92, 94, 126, 3, 79, 92, 70, 71, 15}, "2b6333", -166236001L));
        printWriter.print(this.mFromLayout);
        printWriter.print(NPStringFog.decode(new byte[]{17, 88, 112, 90, 120, 4, 72, 90, 76, 64, 9}, "15944e", true, true));
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{95, 121, 11, 0, 80, 80, 92, 12}, "21bd45", 18766));
        printWriter.print(this.mHidden);
        printWriter.print(NPStringFog.decode(new byte[]{18, 91, 119, 1, 65, 85, 81, 94, 86, 0, 8}, "263d54", -1138188630L));
        printWriter.print(this.mDetached);
        printWriter.print(NPStringFog.decode(new byte[]{19, 11, 125, 81, 11, 16, 101, 15, 67, 93, 7, 9, 86, 91}, "3f04ee", -1.440531484E9d));
        printWriter.print(this.mMenuVisible);
        printWriter.print(NPStringFog.decode(new byte[]{66, 89, 122, 88, 66, 47, 7, 90, 71, 4}, "b4291b", true, true));
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{12, 52, 83, 21, 89, 8, 15, 47, 88, 18, 76, 0, 15, 5, 83, 92}, "af6a8a", 1060723154L));
        printWriter.print(this.mRetainInstance);
        printWriter.print(NPStringFog.decode(new byte[]{68, 89, 49, 23, 82, 20, 50, 93, 23, 13, 85, 10, 1, 124, 13, 10, 67, 91}, "d4dd7f", true, true));
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{84, 116, 17, 86, 2, 88, 92, 92, 23, 122, 4, 91, 88, 85, 6, 69, 88}, "92c7e5", false));
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{12, 127, 87, 66, 21, 91}, "a781af", false));
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{94, 100, 81, 69, 0, 95, 71, 114, 66, 86, 2, 92, 86, 90, 68, 10}, "3407e1", 3.1216637E8f));
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{90, 118, 69, 82, 67, 90, 82, 89, 67, 70, 11}, "777567", false));
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{11, 49, 5, 71, 3, 81, 32, 16, 5, 86, 11, 80, 8, 22, 55, 69, 7, 65, 3, 95}, "fbd1f5", 177572531L));
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{90, 49, 7, 21, 0, 85, 97, 11, 3, 20, 54, 69, 86, 22, 3, 94}, "7bfce1", 1.3327761E9f));
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{89, 100, 4, 69, 3, 5, 98, 94, 0, 68, 52, 4, 83, 94, 22, 71, 20, 24, 103, 67, 4, 71, 3, 92}, "47e3fa", -2.058932939E9d));
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{14, 96, 86, 67, 84, 93, 23, 9}, "c47138", -2.3348226E8f));
            printWriter.print(targetFragment);
            printWriter.print(NPStringFog.decode(new byte[]{68, 15, 48, 5, 16, 4, 1, 22, 54, 1, 19, 22, 1, 17, 16, 39, 13, 7, 1, 95}, "dbddbc", -867581810L));
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{85, 96, 13, 17, 38, 81, 74, 85, 1, 21, 11, 87, 86, 13}, "80bab8", -1966992544L));
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{94, 86, 65, 125, 92, 22, 92, 65, 116, 86, 91, 15, 4}, "93582b", -1221529077L));
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{4, 84, 21, 35, 26, 92, 23, 112, 15, 15, 15, 8}, "c1afb5", -1.20907003E9d));
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{83, 84, 76, 101, 86, 64, 113, 95, 76, 80, 75, 113, 90, 88, 85, 8}, "418590", 1.866981134E9d));
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{84, 7, 21, 98, 95, 20, 118, 26, 8, 70, 113, 10, 90, 15, 92}, "3ba20d", -8.51065E8f));
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{88, 114, 12, 93, 68, 80, 92, 95, 6, 65, 13}, "51c301", 14147301L));
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{93, 48, 91, 82, 67, 12}, "0f2741", false, false));
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{8, 113, 87, 89, 95, 80, 17, 89, 87, 87, 115, 70, 4, 73, 4}, "e09021", false, true));
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            LoaderManager.getInstance(this).dump(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println(NPStringFog.decode(new byte[]{115, 88, 11, 91, 2, 21}, "00b7f5", false) + this.mChildFragmentManager + NPStringFog.decode(new byte[]{95}, "edc377", -853611297L));
        this.mChildFragmentManager.dump(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.findFragmentByWho(str);
    }

    String generateActivityResultKey() {
        return NPStringFog.decode(new byte[]{87, 75, 86, 94, 85, 87, 95, 77, 104}, "197982", false, true) + this.mWho + NPStringFog.decode(new byte[]{111, 74, 19, 26}, "08b9b8", -19801) + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final FragmentActivity getActivity() {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback == null) {
            return null;
        }
        return (FragmentActivity) fragmentHostCallback.getActivity();
    }

    public boolean getAllowEnterTransitionOverlap() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null || animationInfo.mAllowEnterTransitionOverlap == null) {
            return true;
        }
        return this.mAnimationInfo.mAllowEnterTransitionOverlap.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null || animationInfo.mAllowReturnTransitionOverlap == null) {
            return true;
        }
        return this.mAnimationInfo.mAllowReturnTransitionOverlap.booleanValue();
    }

    View getAnimatingAway() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mAnimatingAway;
    }

    Animator getAnimator() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mAnimator;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 23, 81, 85, 95, 92, 10, 17, 16}, "de0229", -22889) + this + NPStringFog.decode(new byte[]{25, 11, 84, 74, 19, 86, 86, 23, 21, 91, 86, 93, 87, 67, 84, 77, 71, 89, 90, 11, 80, 93, 19, 65, 92, 23, 27}, "9c5938", 9814));
    }

    public Context getContext() {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback == null) {
            return null;
        }
        return fragmentHostCallback.getContext();
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 81, 90, 17, 16, 22, 87, 83, 87, 83, 23, 69, 22, 102, 93, 83, 19, 123, 89, 84, 81, 90, 23, 22, 80, 66, 91, 91, 68, 82, 83, 68, 85, 85, 12, 83, 82, 16, 82, 68, 5, 81, 91, 85, 90, 66}, "6046d6", true));
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && FragmentManager.isLoggingEnabled(3)) {
                Log.d(NPStringFog.decode(new byte[]{119, 16, 80, 4, 85, 86, 95, 22, 124, 2, 86, 82, 86, 7, 67}, "1b1c83", 7.1720453E8d), NPStringFog.decode(new byte[]{34, 89, 77, 91, 85, 66, 15, 89, 76, 23, 87, 11, 15, 82, 24, 118, 65, 18, 13, 95, 91, 86, 69, 11, 14, 88, 24, 94, 95, 17, 21, 87, 86, 84, 84, 66, 7, 68, 87, 90, 17, 33, 14, 88, 76, 82, 73, 22, 65}, "a6871b", true, false) + requireContext().getApplicationContext() + NPStringFog.decode(new byte[]{72, 70, 72, 89, 70, 69, 19, 15, 93, 90, 19, 11, 11, 18, 17, 84, 86, 69, 5, 4, 93, 83, 19, 17, 11, 70, 68, 69, 86, 69, 37, 8, 85, 68, 92, 12, 0, 48, 88, 83, 68, 40, 11, 2, 84, 90, 19, 18, 13, 18, 89, 22, 71, 13, 1, 70, 85, 83, 85, 4, 17, 10, 69, 22, 101, 12, 1, 17, 124, 89, 87, 0, 8, 54, 67, 89, 69, 12, 0, 3, 67, 24, 117, 4, 7, 18, 94, 68, 74}, "df163e", false, true));
            }
            this.mDefaultFactory = new SavedStateViewModelFactory(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    int getEnterAnim() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return 0;
        }
        return animationInfo.mEnterAnim;
    }

    public Object getEnterTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mEnterTransition;
    }

    SharedElementCallback getEnterTransitionCallback() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mEnterTransitionCallback;
    }

    int getExitAnim() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return 0;
        }
        return animationInfo.mExitAnim;
    }

    public Object getExitTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mExitTransition;
    }

    SharedElementCallback getExitTransitionCallback() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mExitTransitionCallback;
    }

    View getFocusedView() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mFocusedView;
    }

    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback == null) {
            return null;
        }
        return fragmentHostCallback.onGetHost();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{91, 12, 33, 84, 66, 122, 85, 27, 9, 68, 66, 127, 90, 4, 10, 80, 66, 83, 70, 74, 79, 17, 85, 87, 90, 12, 9, 69, 22, 84, 81, 66, 3, 73, 83, 85, 65, 22, 3, 85, 22, 67, 90, 22, 15, 93, 22, 66, 92, 7, 70, 119, 68, 87, 83, 15, 3, 95, 66, 22, 93, 17, 70, 80, 66, 66, 85, 1, 14, 84, 82, 22, 64, 13, 70, 69, 94, 83, 20, 36, 20, 80, 81, 91, 81, 12, 18, 124, 87, 88, 85, 5, 3, 67, 24}, "4bf166", 1.191135502E9d));
        }
        LayoutInflater layoutInflaterOnGetLayoutInflater = fragmentHostCallback.onGetLayoutInflater();
        LayoutInflaterCompat.setFactory2(layoutInflaterOnGetLayoutInflater, this.mChildFragmentManager.getLayoutInflaterFactory());
        return layoutInflaterOnGetLayoutInflater;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public LoaderManager getLoaderManager() {
        return LoaderManager.getInstance(this);
    }

    int getNextTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return 0;
        }
        return animationInfo.mNextTransition;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 16, 86, 82, 88, 7, 92, 22, 23}, "2b755b", -7.110321E7f) + this + NPStringFog.decode(new byte[]{22, 15, 12, 69, 68, 81, 69, 18, 12, 82, 13, 81, 66, 4, 7, 17, 19, 89, 66, 9, 67, 80, 68, 86, 68, 0, 4, 92, 1, 94, 66, 65, 14, 80, 10, 81, 81, 4, 17, 31}, "6ac1d0", -1.1747519E9f));
    }

    boolean getPopDirection() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return false;
        }
        return animationInfo.mIsPop;
    }

    int getPopEnterAnim() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return 0;
        }
        return animationInfo.mPopEnterAnim;
    }

    int getPopExitAnim() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return 0;
        }
        return animationInfo.mPopExitAnim;
    }

    float getPostOnViewCreatedAlpha() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return 1.0f;
        }
        return animationInfo.mPostOnViewCreatedAlpha;
    }

    public Object getReenterTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mReenterTransition == USE_DEFAULT_TRANSITION ? getExitTransition() : this.mAnimationInfo.mReenterTransition;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mReturnTransition == USE_DEFAULT_TRANSITION ? getEnterTransition() : this.mAnimationInfo.mReturnTransition;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.getSavedStateRegistry();
    }

    public Object getSharedElementEnterTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mSharedElementEnterTransition;
    }

    public Object getSharedElementReturnTransition() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return null;
        }
        return animationInfo.mSharedElementReturnTransition == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : this.mAnimationInfo.mSharedElementReturnTransition;
    }

    ArrayList<String> getSharedElementSourceNames() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        return (animationInfo == null || animationInfo.mSharedElementSourceNames == null) ? new ArrayList<>() : this.mAnimationInfo.mSharedElementSourceNames;
    }

    ArrayList<String> getSharedElementTargetNames() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        return (animationInfo == null || animationInfo.mSharedElementTargetNames == null) ? new ArrayList<>() : this.mAnimationInfo.mSharedElementTargetNames;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManager.findActiveFragment(str);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public LifecycleOwner getViewLifecycleOwner() {
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner = this.mViewLifecycleOwner;
        if (fragmentViewLifecycleOwner != null) {
            return fragmentViewLifecycleOwner;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 5, 11, 66, 22, 25, 86, 7, 6, 0, 17, 74, 23, 16, 13, 0, 66, 127, 69, 5, 2, 8, 7, 87, 67, 68, 51, 12, 7, 78, 16, 23, 69, 41, 11, 95, 82, 7, 28, 6, 14, 92, 120, 19, 11, 0, 16, 25, 64, 12, 0, 11, 66, 94, 82, 16, 51, 12, 7, 78, 31, 77, 69, 12, 17, 25, 89, 17, 9, 9, 66, 80, 25, 1, 75, 73, 66, 91, 82, 2, 10, 23, 7, 25, 88, 10, 38, 23, 7, 88, 67, 1, 51, 12, 7, 78, 31, 77, 69, 10, 16, 25, 86, 2, 17, 0, 16, 25, 88, 10, 33, 0, 17, 77, 69, 11, 28, 51, 11, 92, 64, 76, 76}, "7deeb9", -1.3293992E9f));
    }

    public LiveData<LifecycleOwner> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 4, 11, 21, 18, 25, 86, 6, 6, 87, 21, 74, 23, 51, 12, 87, 17, 116, 88, 1, 0, 94, 21, 25, 81, 23, 10, 95, 70, 93, 82, 17, 4, 81, 14, 92, 83, 69, 3, 64, 7, 94, 90, 0, 11, 70}, "7ee2f9", -1374657236L));
        }
        if (getMinimumMaxLifecycleState() != Lifecycle.State.INITIALIZED.ordinal()) {
            return this.mFragmentManager.getViewModelStore(this);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{119, 82, 92, 15, 89, 15, 83, 19, 87, 6, 68, 55, 93, 86, 71, 46, 95, 5, 81, 95, 99, 23, 95, 19, 81, 27, 25, 67, 82, 4, 82, 92, 66, 6, 16, 0, 20, 117, 66, 2, 87, 12, 81, 93, 68, 67, 66, 4, 85, 80, 88, 6, 67, 65, 91, 93, 115, 17, 85, 0, 64, 86, 24, 74, 16, 22, 92, 86, 94, 67, 69, 18, 93, 93, 87, 67, 67, 4, 64, 126, 81, 27, 124, 8, 82, 86, 83, 26, 83, 13, 81, 27, 121, 45, 121, 53, 125, 114, 124, 42, 106, 36, 112, 26, 16, 10, 67, 65, 90, 92, 68, 67, 67, 20, 68, 67, 95, 17, 68, 4, 80}, "430c0a", true));
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void initState() {
        initLifecycle();
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new FragmentManagerImpl();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    boolean isHideReplaced() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return false;
        }
        return animationInfo.mIsHideReplaced;
    }

    final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        FragmentManager fragmentManager;
        return this.mMenuVisible && ((fragmentManager = this.mFragmentManager) == null || fragmentManager.isParentMenuVisible(this.mParentFragment));
    }

    boolean isPostponed() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo == null) {
            return false;
        }
        return animationInfo.mEnterTransitionPostponed;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    final boolean isRemovingParent() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null && (parentFragment.isRemoving() || parentFragment.isRemovingParent());
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.isStateSaved();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    void noteStateNotSaved() {
        this.mChildFragmentManager.noteStateNotSaved();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{114, 64, 4, 3, 92, 84, 90, 70, 40, 5, 95, 80, 83, 87, 23}, "42ed11", false), NPStringFog.decode(new byte[]{116, 67, 86, 82, 94, 6, 92, 69, 23}, "21753c", -7441) + this + NPStringFog.decode(new byte[]{25, 75, 87, 82, 7, 81, 79, 92, 86, 17, 22, 80, 92, 25, 84, 94, 14, 84, 86, 78, 91, 95, 5, 24, 80, 87, 18, 94, 12, 121, 90, 77, 91, 71, 11, 76, 64, 107, 87, 66, 23, 84, 77, 17, 27, 11, 66, 74, 92, 72, 71, 84, 17, 76, 122, 86, 86, 84, 88, 24}, "9921b8", -447944010L) + i + NPStringFog.decode(new byte[]{17, 23, 6, 66, 16, 92, 69, 38, 12, 85, 0, 10, 17}, "1ec1e0", -1.794851043E9d) + i2 + NPStringFog.decode(new byte[]{19, 84, 80, 68, 89, 91, 19}, "30108a", false, false) + intent);
        }
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        Activity activity = fragmentHostCallback == null ? null : fragmentHostCallback.getActivity();
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.isStateAtLeast(1)) {
            return;
        }
        this.mChildFragmentManager.dispatchCreate();
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.mContentLayoutId;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        Activity activity = fragmentHostCallback == null ? null : fragmentHostCallback.getActivity();
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.noteStateNotSaved();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            restoreViewState();
            this.mChildFragmentManager.dispatchActivityCreated();
        } else {
            throw new SuperNotCalledException(NPStringFog.decode(new byte[]{119, 69, 82, 86, 89, 3, 95, 67, 19}, "17314f", -1.0203163E9f) + this + NPStringFog.decode(new byte[]{66, 5, 81, 86, 20, 90, 13, 21, 24, 81, 85, 88, 14, 65, 76, 90, 70, 91, 23, 6, 80, 18, 64, 91, 66, 18, 77, 66, 81, 70, 76, 14, 86, 115, 87, 64, 11, 23, 81, 70, 77, 119, 16, 4, 89, 70, 81, 80, 74, 72}, "ba8244", true, true));
        }
    }

    void performAttach() {
        Iterator<OnPreAttachedListener> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().onPreAttached();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.attachController(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.getContext());
        if (this.mCalled) {
            this.mFragmentManager.dispatchOnAttachFragment(this);
            this.mChildFragmentManager.dispatchAttach();
        } else {
            throw new SuperNotCalledException(NPStringFog.decode(new byte[]{112, 23, 4, 2, 9, 80, 88, 17, 69}, "6eeed5", 1.846002688E9d) + this + NPStringFog.decode(new byte[]{70, 2, 91, 1, 67, 93, 9, 18, 18, 6, 2, 95, 10, 70, 70, 13, 17, 92, 19, 1, 90, 69, 23, 92, 70, 21, 71, 21, 6, 65, 72, 9, 92, 36, 23, 71, 7, 5, 90, 77, 74}, "ff2ec3", true));
        }
    }

    void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.dispatchConfigurationChanged(configuration);
    }

    boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.dispatchContextItemSelected(menuItem);
    }

    void performCreate(Bundle bundle) {
        this.mChildFragmentManager.noteStateNotSaved();
        this.mState = 1;
        this.mCalled = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.addObserver(new LifecycleEventObserver(this) { // from class: androidx.fragment.app.Fragment.5
                final Fragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event != Lifecycle.Event.ON_STOP || this.this$0.mView == null) {
                        return;
                    }
                    this.this$0.mView.cancelPendingInputEvents();
                }
            });
        }
        this.mSavedStateRegistryController.performRestore(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{32, 74, 3, 83, 91, 87, 8, 76, 66}, "f8b462", -2111277464L) + this + NPStringFog.decode(new byte[]{25, 7, 90, 86, 65, 88, 86, 23, 19, 81, 0, 90, 85, 67, 71, 90, 19, 89, 76, 4, 91, 18, 21, 89, 25, 16, 70, 66, 4, 68, 23, 12, 93, 113, 19, 83, 88, 23, 86, 26, 72}, "9c32a6", -1.02450963E9f));
    }

    boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.mChildFragmentManager.dispatchCreateOptionsMenu(menu, menuInflater);
    }

    void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.noteStateNotSaved();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new FragmentViewLifecycleOwner(this, getViewModelStore());
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.isInitialized()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 80, 92, 92, 92, 7, 18, 86, 85, 68, 111, 10, 87, 70, 124, 89, 95, 6, 81, 72, 83, 92, 92, 44, 69, 95, 85, 66, 17, 74, 18, 83, 69, 68, 25, 12, 92, 114, 66, 85, 88, 23, 87, 103, 89, 85, 78, 75, 27, 17, 66, 85, 77, 22, 64, 95, 85, 84, 25, 13, 71, 93, 92}, "21009c", 26903));
            }
            this.mViewLifecycleOwner = null;
        } else {
            this.mViewLifecycleOwner.initialize();
            ViewTreeLifecycleOwner.set(this.mView, this.mViewLifecycleOwner);
            ViewTreeViewModelStoreOwner.set(this.mView, this.mViewLifecycleOwner);
            ViewTreeSavedStateRegistryOwner.set(this.mView, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.setValue(this.mViewLifecycleOwner);
        }
    }

    void performDestroy() {
        this.mChildFragmentManager.dispatchDestroy();
        this.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{39, 67, 84, 80, 88, 86, 15, 69, 21}, "a15753", 29782) + this + NPStringFog.decode(new byte[]{23, 93, 90, 82, 67, 15, 88, 77, 19, 85, 2, 13, 91, 25, 71, 94, 17, 14, 66, 94, 91, 22, 23, 14, 23, 74, 70, 70, 6, 19, 25, 86, 93, 114, 6, 18, 67, 75, 92, 79, 75, 72}, "7936ca", 1.731945088E9d));
    }

    void performDestroyView() {
        this.mChildFragmentManager.dispatchDestroyView();
        if (this.mView != null && this.mViewLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
            this.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            LoaderManager.getInstance(this).markForRedelivery();
            this.mPerformedCreateView = false;
        } else {
            throw new SuperNotCalledException(NPStringFog.decode(new byte[]{117, 20, 83, 86, 91, 80, 93, 18, 18}, "3f2165", -3.70028945E8d) + this + NPStringFog.decode(new byte[]{70, 2, 92, 1, 17, 95, 9, 18, 21, 6, 80, 93, 10, 70, 65, 13, 67, 94, 19, 1, 93, 69, 69, 94, 70, 21, 64, 21, 84, 67, 72, 9, 91, 33, 84, 66, 18, 20, 90, 28, 103, 88, 3, 17, 29, 76}, "ff5e11", -4.2736387E8f));
        }
    }

    void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.mChildFragmentManager.isDestroyed()) {
                return;
            }
            this.mChildFragmentManager.dispatchDestroy();
            this.mChildFragmentManager = new FragmentManagerImpl();
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{126, 74, 89, 1, 8, 81, 86, 76, 24}, "888fe4", -1967942531L) + this + NPStringFog.decode(new byte[]{25, 0, 15, 7, 19, 13, 86, 16, 70, 0, 82, 15, 85, 68, 18, 11, 65, 12, 76, 3, 14, 67, 71, 12, 25, 23, 19, 19, 86, 17, 23, 11, 8, 39, 86, 23, 88, 7, 14, 75, 26}, "9dfc3c", -1.2275041E9f));
    }

    LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.dispatchLowMemory();
    }

    void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.dispatchMultiWindowModeChanged(z);
    }

    boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.dispatchOptionsItemSelected(menuItem);
    }

    void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.dispatchOptionsMenuClosed(menu);
    }

    void performPause() {
        this.mChildFragmentManager.dispatchPause();
        if (this.mView != null) {
            this.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
        this.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{114, 22, 2, 81, 90, 87, 90, 16, 67}, "4dc672", 1175165623L) + this + NPStringFog.decode(new byte[]{17, 84, 80, 0, 18, 86, 94, 68, 25, 7, 83, 84, 93, 16, 77, 12, 64, 87, 68, 87, 81, 68, 70, 87, 17, 67, 76, 20, 87, 74, 31, 95, 87, 52, 83, 77, 66, 85, 17, 77}, "109d28", -1.159286781E9d));
    }

    void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.dispatchPictureInPictureModeChanged(z);
    }

    boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.mChildFragmentManager.dispatchPrepareOptionsMenu(menu);
    }

    void performPrimaryNavigationFragmentChanged() {
        boolean zIsPrimaryNavigation = this.mFragmentManager.isPrimaryNavigation(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zIsPrimaryNavigation) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zIsPrimaryNavigation);
            onPrimaryNavigationFragmentChanged(zIsPrimaryNavigation);
            this.mChildFragmentManager.dispatchPrimaryNavigationFragmentChanged();
        }
    }

    void performResume() {
        this.mChildFragmentManager.noteStateNotSaved();
        this.mChildFragmentManager.execPendingActions(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
            if (this.mView != null) {
                this.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
            }
            this.mChildFragmentManager.dispatchResume();
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{39, 17, 85, 4, 15, 4, 15, 23, 20}, "ac4cba", true) + this + NPStringFog.decode(new byte[]{20, 87, 91, 5, 21, 90, 91, 71, 18, 2, 84, 88, 88, 19, 70, 9, 71, 91, 65, 84, 90, 65, 65, 91, 20, 64, 71, 17, 80, 70, 26, 92, 92, 51, 80, 71, 65, 94, 87, 73, 28}, "432a54", -5.499842E8f));
    }

    void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.performSave(bundle);
        Parcelable parcelableSaveAllState = this.mChildFragmentManager.saveAllState();
        if (parcelableSaveAllState != null) {
            bundle.putParcelable(NPStringFog.decode(new byte[]{89, 91, 84, 19, 93, 94, 92, 15, 67, 20, 66, 71, 87, 71, 68, 91, 84, 69, 89, 82, 93, 4, 92, 67, 75}, "850a27", -3861), parcelableSaveAllState);
        }
    }

    void performStart() {
        this.mChildFragmentManager.noteStateNotSaved();
        this.mChildFragmentManager.execPendingActions(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
            if (this.mView != null) {
                this.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_START);
            }
            this.mChildFragmentManager.dispatchStart();
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{34, 19, 3, 86, 94, 7, 10, 21, 66}, "dab13b", -1205877823L) + this + NPStringFog.decode(new byte[]{18, 84, 11, 86, 23, 13, 93, 68, 66, 81, 86, 15, 94, 16, 22, 90, 69, 12, 71, 87, 10, 18, 67, 12, 18, 67, 23, 66, 82, 17, 28, 95, 12, 97, 67, 2, 64, 68, 74, 27}, "20b27c", 2.85282789E8d));
    }

    void performStop() {
        this.mChildFragmentManager.dispatchStop();
        if (this.mView != null) {
            this.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        }
        this.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException(NPStringFog.decode(new byte[]{119, 20, 85, 2, 12, 82, 95, 18, 20}, "1f4ea7", 1.23152234E8d) + this + NPStringFog.decode(new byte[]{20, 87, 90, 93, 66, 87, 91, 71, 19, 90, 3, 85, 88, 19, 71, 81, 16, 86, 65, 84, 91, 25, 22, 86, 20, 64, 70, 73, 7, 75, 26, 92, 93, 106, 22, 86, 68, 27, 26}, "4339b9", 5.20551527E8d));
    }

    void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.dispatchViewCreated();
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().mEnterTransitionPostponed = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().mEnterTransitionPostponed = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        Handler handler = fragmentManager != null ? fragmentManager.getHost().getHandler() : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    @Override // androidx.activity.result.ActivityResultCaller
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> activityResultContract, ActivityResultCallback<O> activityResultCallback) {
        return prepareCallInternal(activityResultContract, new Function<Void, ActivityResultRegistry>(this) { // from class: androidx.fragment.app.Fragment.6
            final Fragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.arch.core.util.Function
            public ActivityResultRegistry apply(Void r2) {
                return this.this$0.mHost instanceof ActivityResultRegistryOwner ? ((ActivityResultRegistryOwner) this.this$0.mHost).getActivityResultRegistry() : this.this$0.requireActivity().getActivityResultRegistry();
            }
        }, activityResultCallback);
    }

    @Override // androidx.activity.result.ActivityResultCaller
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> activityResultContract, ActivityResultRegistry activityResultRegistry, ActivityResultCallback<O> activityResultCallback) {
        return prepareCallInternal(activityResultContract, new Function<Void, ActivityResultRegistry>(this, activityResultRegistry) { // from class: androidx.fragment.app.Fragment.7
            final Fragment this$0;
            final ActivityResultRegistry val$registry;

            {
                this.this$0 = this;
                this.val$registry = activityResultRegistry;
            }

            @Override // androidx.arch.core.util.Function
            public ActivityResultRegistry apply(Void r2) {
                return this.val$registry;
            }
        }, activityResultCallback);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost != null) {
            getParentFragmentManager().launchRequestPermissions(this, strArr, i);
            return;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{127, 67, 80, 86, 85, 4, 87, 69, 17}, "91118a", 1.313814297E9d) + this + NPStringFog.decode(new byte[]{68, 88, 90, 64, 20, 3, 16, 66, 84, 87, 92, 7, 0, 22, 65, 91, 20, 35, 7, 66, 92, 66, 93, 22, 29}, "d6544b", 4.1558672E8f));
    }

    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 19, 82, 87, 93, 93, 12, 21, 19}, "ba3008", -1.035518005E9d) + this + NPStringFog.decode(new byte[]{17, 88, 94, 65, 68, 7, 69, 66, 80, 86, 12, 3, 85, 22, 69, 90, 68, 7, 95, 22, 80, 86, 16, 15, 71, 95, 69, 76, 74}, "1615df", 7.8701754E8f));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 75, 7, 84, 84, 81, 89, 77, 70}, "79f394", true, false) + this + NPStringFog.decode(new byte[]{20, 7, 91, 1, 18, 68, 90, 12, 64, 68, 9, 5, 66, 6, 20, 5, 15, 29, 20, 2, 70, 3, 20, 9, 81, 13, 64, 23, 79}, "4c4dad", 30625));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 67, 85, 94, 85, 4, 12, 69, 20}, "b1498a", -27705) + this + NPStringFog.decode(new byte[]{20, 88, 12, 23, 17, 82, 64, 66, 2, 0, 89, 86, 80, 22, 23, 12, 17, 82, 20, 85, 12, 13, 69, 86, 76, 66, 77}, "46cc13", 1.629927E9f));
    }

    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 20, 3, 95, 94, 87, 15, 18, 66}, "afb832", false, false) + this + NPStringFog.decode(new byte[]{19, 93, 12, 67, 17, 5, 71, 71, 2, 84, 89, 1, 87, 19, 23, 88, 17, 5, 19, 91, 12, 68, 69, 74}, "33c71d", -356981879L));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 71, 2, 80, 92, 92, 15, 65, 67}, "a5c719", true) + this + NPStringFog.decode(new byte[]{24, 15, 74, 17, 93, 13, 76, 70, 88, 69, 71, 3, 91, 14, 92, 85, 19, 22, 87, 70, 88, 95, 74, 66, 126, 20, 88, 86, 94, 7, 86, 18, 25, 94, 65, 66, 80, 9, 74, 69}, "8f913b", 1298756341L));
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 68, 3, 1, 89, 85, 13, 66, 66}, "c6bf40", -6.81593296E8d) + this + NPStringFog.decode(new byte[]{66, 93, 22, 25, 89, 93, 22, 20, 4, 25, 84, 90, 11, 88, 1, 25, 113, 64, 3, 83, 8, 92, 89, 70, 78, 20, 12, 77, 23, 91, 17, 20, 1, 80, 69, 87, 1, 64, 9, 64, 23, 83, 22, 64, 4, 90, 95, 87, 6, 20, 17, 86, 23}, "b4e972", 9.0789543E8d) + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 19, 84, 83, 91, 87, 15, 21, 21}, "aa5462", 1.1709437E9f) + this + NPStringFog.decode(new byte[]{70, 80, 92, 5, 18, 10, 9, 64, 21, 19, 87, 16, 19, 70, 91, 65, 83, 68, 48, 93, 80, 22, 18, 2, 20, 91, 88, 65, 93, 10, 37, 70, 80, 0, 70, 1, 48, 93, 80, 22, 26, 77, 70, 91, 71, 65, 70, 12, 15, 71, 21, 22, 83, 23, 70, 87, 84, 13, 94, 1, 2, 20, 87, 4, 84, 11, 20, 81, 21, 14, 92, 39, 20, 81, 84, 21, 87, 50, 15, 81, 66, 73, 27, 74}, "f45a2d", -7.19078262E8d));
    }

    void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable(NPStringFog.decode(new byte[]{2, 89, 84, 16, 86, 89, 7, 13, 67, 23, 73, 64, 12, 69, 68, 88, 95, 66, 2, 80, 93, 7, 87, 68, 16}, "c70b90", -2.18829177E8d))) == null) {
            return;
        }
        this.mChildFragmentManager.restoreSaveState(parcelable);
        this.mChildFragmentManager.dispatchCreate();
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.performRestore(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            }
        } else {
            throw new SuperNotCalledException(NPStringFog.decode(new byte[]{114, 19, 84, 85, 94, 80, 90, 21, 21}, "4a5235", false) + this + NPStringFog.decode(new byte[]{70, 81, 8, 93, 20, 90, 9, 65, 65, 90, 85, 88, 10, 21, 21, 81, 70, 91, 19, 82, 9, 25, 64, 91, 70, 70, 20, 73, 81, 70, 72, 90, 15, 111, 93, 81, 17, 102, 21, 88, 64, 81, 52, 80, 18, 77, 91, 70, 3, 81, 73, 16}, "f5a944", false, false));
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().mAllowEnterTransitionOverlap = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().mAllowReturnTransitionOverlap = Boolean.valueOf(z);
    }

    void setAnimatingAway(View view) {
        ensureAnimationInfo().mAnimatingAway = view;
    }

    void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        ensureAnimationInfo().mEnterAnim = i;
        ensureAnimationInfo().mExitAnim = i2;
        ensureAnimationInfo().mPopEnterAnim = i3;
        ensureAnimationInfo().mPopExitAnim = i4;
    }

    void setAnimator(Animator animator) {
        ensureAnimationInfo().mAnimator = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 68, 81, 86, 91, 92, 90, 66, 16, 80, 90, 75, 81, 87, 84, 72, 22, 88, 80, 82, 85, 85, 22, 88, 90, 82, 16, 66, 66, 88, 64, 83, 16, 89, 87, 74, 20, 84, 85, 84, 88, 25, 71, 87, 70, 84, 82}, "460169", -190389011L));
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ensureAnimationInfo().mEnterTransitionCallback = sharedElementCallback;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().mEnterTransition = obj;
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ensureAnimationInfo().mExitTransitionCallback = sharedElementCallback;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().mExitTransition = obj;
    }

    void setFocusedView(View view) {
        ensureAnimationInfo().mFocusedView = view;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.onSupportInvalidateOptionsMenu();
        }
    }

    void setHideReplaced(boolean z) {
        ensureAnimationInfo().mIsHideReplaced = z;
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.mFragmentManager != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 64, 86, 95, 8, 84, 90, 70, 23, 89, 9, 67, 81, 83, 83, 65, 69, 80, 80, 86, 82, 92}, "4278e1", -5.16670856E8d));
        }
        this.mSavedFragmentState = (savedState == null || savedState.mState == null) ? null : savedState.mState;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.onSupportInvalidateOptionsMenu();
            }
        }
    }

    void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.mNextTransition = i;
    }

    void setOnStartEnterTransitionListener(OnStartEnterTransitionListener onStartEnterTransitionListener) {
        ensureAnimationInfo();
        if (onStartEnterTransitionListener == this.mAnimationInfo.mStartEnterTransitionListener) {
            return;
        }
        if (onStartEnterTransitionListener != null && this.mAnimationInfo.mStartEnterTransitionListener != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{98, 22, 77, 94, 87, 5, 22, 16, 91, 23, 74, 7, 66, 68, 85, 23, 75, 7, 70, 8, 85, 84, 92, 15, 83, 10, 64, 23, 74, 22, 87, 22, 64, 103, 86, 17, 66, 20, 91, 89, 92, 6, 115, 10, 64, 82, 75, 54, 68, 5, 90, 68, 80, 22, 95, 11, 90, 23, 86, 12, 22}, "6d479b", -1055019976L) + this);
        }
        if (this.mAnimationInfo.mEnterTransitionPostponed) {
            this.mAnimationInfo.mStartEnterTransitionListener = onStartEnterTransitionListener;
        }
        if (onStartEnterTransitionListener != null) {
            onStartEnterTransitionListener.startListening();
        }
    }

    void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        ensureAnimationInfo().mIsPop = z;
    }

    void setPostOnViewCreatedAlpha(float f) {
        ensureAnimationInfo().mPostOnViewCreatedAlpha = f;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().mReenterTransition = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            fragmentManager.addRetainedFragment(this);
        } else {
            fragmentManager.removeRetainedFragment(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().mReturnTransition = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().mSharedElementEnterTransition = obj;
    }

    void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        ensureAnimationInfo();
        this.mAnimationInfo.mSharedElementSourceNames = arrayList;
        this.mAnimationInfo.mSharedElementTargetNames = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().mSharedElementReturnTransition = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i) {
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{112, 22, 88, 6, 11, 81, 88, 16, 25}, "6d9af4", false) + fragment + NPStringFog.decode(new byte[]{19, 90, 76, 66, 77, 25, 64, 95, 88, 67, 92, 25, 71, 95, 92, 17, 74, 88, 94, 82, 25, 119, 75, 88, 84, 90, 92, 95, 77, 116, 82, 89, 88, 86, 92, 75, 19, 67, 86, 17, 91, 92, 19, 68, 92, 69, 25, 88, 64, 23, 88, 17, 77, 88, 65, 80, 92, 69, 25, 95, 65, 86, 94, 92, 92, 87, 71}, "379199", true));
        }
        for (Fragment targetFragment = fragment; targetFragment != null; targetFragment = targetFragment.getTargetFragment()) {
            if (targetFragment.equals(this)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 81, 16, 17, 93, 89, 5, 20}, "b4de47", 6.871191E7f) + fragment + NPStringFog.decode(new byte[]{23, 89, 70, 70, 22, 14, 82, 24, 65, 7, 16, 1, 82, 76, 21, 9, 4, 70}, "785fbf", false, false) + this + NPStringFog.decode(new byte[]{69, 71, 89, 20, 90, 86, 69, 83, 68, 4, 87, 70, 0, 16, 87, 65, 66, 83, 23, 87, 83, 21, 22, 81, 28, 83, 90, 4}, "e06a62", -1.5567113E9f));
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            FragmentManager fragmentManager = this.mFragmentManager;
            fragmentManager.performPendingDeferredStart(fragmentManager.createOrGetFragmentStateManager(this));
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback != null) {
            return fragmentHostCallback.onShouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.onStartActivityFromFragment(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 68, 83, 94, 9, 6, 10, 66, 18}, "d629dc", -1324481732L) + this + NPStringFog.decode(new byte[]{19, 91, 90, 68, 23, 84, 71, 65, 84, 83, 95, 80, 87, 21, 65, 95, 23, 116, 80, 65, 92, 70, 94, 65, 74}, "355075", 1.6841392E8f));
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (this.mHost != null) {
            getParentFragmentManager().launchStartActivityForResult(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 23, 86, 95, 11, 7, 13, 17, 23}, "ce78fb", false) + this + NPStringFog.decode(new byte[]{65, 88, 13, 67, 18, 89, 21, 66, 3, 84, 90, 93, 5, 22, 22, 88, 18, 121, 2, 66, 11, 65, 91, 76, 24}, "a6b728", 9.39201154E8d));
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 74, 7, 6, 94, 83, 15, 76, 70}, "a8fa36", 18600) + this + NPStringFog.decode(new byte[]{68, 91, 13, 66, 69, 0, 16, 65, 3, 85, 13, 4, 0, 21, 22, 89, 69, 32, 7, 65, 11, 64, 12, 21, 29}, "d5b6ea", true, true));
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{34, 70, 84, 84, 92, 86, 10, 64, 120, 82, 95, 82, 3, 81, 71}, "d45313", 1497604925L), NPStringFog.decode(new byte[]{36, 65, 88, 95, 91, 87, 12, 71, 25}, "b39862", -1.099135515E9d) + this + NPStringFog.decode(new byte[]{21, 67, 85, 82, 80, 8, 67, 84, 84, 17, 65, 9, 80, 17, 86, 94, 89, 13, 90, 70, 89, 95, 82, 65, 92, 95, 16, 66, 65, 0, 71, 69, 121, 95, 65, 4, 91, 69, 99, 84, 91, 5, 80, 67, 118, 94, 71, 51, 80, 66, 69, 93, 65, 73, 28, 17, 66, 84, 68, 20, 80, 66, 68, 114, 90, 5, 80, 11, 16}, "51015a", -10246) + i + NPStringFog.decode(new byte[]{23, 43, 88, 67, 0, 91, 67, 49, 83, 89, 1, 80, 69, 88, 22}, "7b67e5", true, false) + intentSender + NPStringFog.decode(new byte[]{67, 83, 12, 9, 94, 43, 13, 124, 11, 17, 87, 12, 23, 15, 69}, "c5ee2b", -2.048900153E9d) + intent + NPStringFog.decode(new byte[]{25, 9, 68, 23, 8, 91, 87, 21, 14, 67}, "9f4ca4", -17277) + bundle);
        }
        getParentFragmentManager().launchStartIntentSenderForResult(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().mEnterTransitionPostponed) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().mEnterTransitionPostponed = false;
        } else if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            this.mHost.getHandler().postAtFrontOfQueue(new Runnable(this) { // from class: androidx.fragment.app.Fragment.2
                final Fragment this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.callStartTransitionListener(false);
                }
            });
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append(NPStringFog.decode(new byte[]{75}, "08b618", 1808024176L));
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(NPStringFog.decode(new byte[]{72}, "53c802", true));
        sb.append(NPStringFog.decode(new byte[]{70, 26}, "f2b073", -2460));
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(NPStringFog.decode(new byte[]{18, 10, 87, 9, 9, 75}, "2c3493", false, false));
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(NPStringFog.decode(new byte[]{19, 66, 87, 6, 4}, "366a90", true));
            sb.append(this.mTag);
        }
        sb.append(NPStringFog.decode(new byte[]{76}, "e634d0", true));
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
