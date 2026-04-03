package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.collection.ArraySet;
import androidx.core.os.CancellationSignal;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentTransition;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    public static final int POP_BACK_STACK_INCLUSIVE = 1;
    ArrayList<BackStackRecord> mBackStack;
    private ArrayList<OnBackStackChangedListener> mBackStackChangeListeners;
    private FragmentContainer mContainer;
    private ArrayList<Fragment> mCreatedMenus;
    private boolean mDestroyed;
    private boolean mExecutingActions;
    private boolean mHavePendingDeferredStart;
    private FragmentHostCallback<?> mHost;
    private boolean mNeedMenuInvalidate;
    private FragmentManagerViewModel mNonConfig;
    private OnBackPressedDispatcher mOnBackPressedDispatcher;
    private Fragment mParent;
    private ArrayList<StartEnterTransitionListener> mPostponedTransactions;
    Fragment mPrimaryNav;
    private ActivityResultLauncher<String[]> mRequestPermissions;
    private ActivityResultLauncher<Intent> mStartActivityForResult;
    private ActivityResultLauncher<IntentSenderRequest> mStartIntentSenderForResult;
    private boolean mStateSaved;
    private boolean mStopped;
    private ArrayList<Fragment> mTmpAddedFragments;
    private ArrayList<Boolean> mTmpIsPop;
    private ArrayList<BackStackRecord> mTmpRecords;
    private static final String EXTRA_CREATED_FILLIN_INTENT = NPStringFog.decode(new byte[]{89, 94, 82, 23, 14, 90, 92, 72, 24, 3, 19, 82, 95, 93, 83, 11, 21, 29, 93, 72, 66, 23, 0, 29, 121, 115, 98, 44, 55, 122, 108, 105, 105, 42, 49, 103, 113, 127, 120, 54, 62, 113, 109, 126, 114, 41, 36}, "806ea3", -701945855L);
    static final String TAG = NPStringFog.decode(new byte[]{119, 69, 7, 87, 9, 0, 95, 67, 43, 81, 10, 4, 86, 82, 20}, "17f0de", -1.419684901E9d);
    private static boolean DEBUG = false;
    static boolean USE_STATE_MANAGER = true;
    private final ArrayList<OpGenerator> mPendingActions = new ArrayList<>();
    private final FragmentStore mFragmentStore = new FragmentStore();
    private final FragmentLayoutInflaterFactory mLayoutInflaterFactory = new FragmentLayoutInflaterFactory(this);
    private final OnBackPressedCallback mOnBackPressedCallback = new OnBackPressedCallback(this, false) { // from class: androidx.fragment.app.FragmentManager.1
        final FragmentManager this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            this.this$0.handleOnBackPressed();
        }
    };
    private final AtomicInteger mBackStackIndex = new AtomicInteger();
    private final Map<String, Bundle> mResults = Collections.synchronizedMap(new HashMap());
    private final Map<String, LifecycleAwareResultListener> mResultListeners = Collections.synchronizedMap(new HashMap());
    private Map<Fragment, HashSet<CancellationSignal>> mExitAnimationCancellationSignals = Collections.synchronizedMap(new HashMap());
    private final FragmentTransition.Callback mFragmentTransitionCallback = new FragmentTransition.Callback(this) { // from class: androidx.fragment.app.FragmentManager.2
        final FragmentManager this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.fragment.app.FragmentTransition.Callback
        public void onComplete(Fragment fragment, CancellationSignal cancellationSignal) {
            if (cancellationSignal.isCanceled()) {
                return;
            }
            this.this$0.removeCancellationSignal(fragment, cancellationSignal);
        }

        @Override // androidx.fragment.app.FragmentTransition.Callback
        public void onStart(Fragment fragment, CancellationSignal cancellationSignal) {
            this.this$0.addCancellationSignal(fragment, cancellationSignal);
        }
    };
    private final FragmentLifecycleCallbacksDispatcher mLifecycleCallbacksDispatcher = new FragmentLifecycleCallbacksDispatcher(this);
    private final CopyOnWriteArrayList<FragmentOnAttachListener> mOnAttachListeners = new CopyOnWriteArrayList<>();
    int mCurState = -1;
    private FragmentFactory mFragmentFactory = null;
    private FragmentFactory mHostFragmentFactory = new FragmentFactory(this) { // from class: androidx.fragment.app.FragmentManager.3
        final FragmentManager this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.fragment.app.FragmentFactory
        public Fragment instantiate(ClassLoader classLoader, String str) {
            return this.this$0.getHost().instantiate(this.this$0.getHost().getContext(), str, null);
        }
    };
    private SpecialEffectsControllerFactory mSpecialEffectsControllerFactory = null;
    private SpecialEffectsControllerFactory mDefaultSpecialEffectsControllerFactory = new SpecialEffectsControllerFactory(this) { // from class: androidx.fragment.app.FragmentManager.4
        final FragmentManager this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.fragment.app.SpecialEffectsControllerFactory
        public SpecialEffectsController createController(ViewGroup viewGroup) {
            return new DefaultSpecialEffectsController(viewGroup);
        }
    };
    ArrayDeque<LaunchedFragmentInfo> mLaunchedFragments = new ArrayDeque<>();
    private Runnable mExecCommit = new Runnable(this) { // from class: androidx.fragment.app.FragmentManager.5
        final FragmentManager this$0;

        {
            this.this$0 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.execPendingActions(true);
        }
    };

    public interface BackStackEntry {
        @Deprecated
        CharSequence getBreadCrumbShortTitle();

        @Deprecated
        int getBreadCrumbShortTitleRes();

        @Deprecated
        CharSequence getBreadCrumbTitle();

        @Deprecated
        int getBreadCrumbTitleRes();

        int getId();

        String getName();
    }

    static class FragmentIntentSenderContract extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        FragmentIntentSenderContract() {
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent(NPStringFog.decode(new byte[]{4, 92, 6, 16, 95, 93, 1, 74, 76, 3, 83, 64, 12, 68, 11, 22, 73, 26, 23, 87, 17, 23, 92, 64, 75, 81, 13, 12, 68, 70, 4, 81, 22, 76, 81, 87, 17, 91, 13, 12, 30, 125, 43, 102, 39, 44, 100, 107, 54, 119, 44, 38, 117, 102, 58, 96, 39, 51, 101, 113, 54, 102}, "e2bb04", -8.19590343E8d));
            Intent fillInIntent = intentSenderRequest.getFillInIntent();
            if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra(NPStringFog.decode(new byte[]{85, 91, 7, 71, 11, 12, 80, 77, 77, 84, 7, 17, 93, 67, 10, 65, 29, 75, 70, 80, 16, 64, 8, 17, 26, 86, 12, 91, 16, 23, 85, 86, 23, 27, 1, 29, 64, 71, 2, 27, 37, 38, 96, 124, 53, 124, 48, 60, 107, 122, 51, 97, 45, 42, 122, 102, 60, 119, 49, 43, 112, 121, 38}, "45c5de", -1.64780042E9d))) != null) {
                intent.putExtra(NPStringFog.decode(new byte[]{87, 13, 6, 67, 94, 93, 82, 27, 76, 80, 82, 64, 95, 21, 11, 69, 72, 26, 68, 6, 17, 68, 93, 64, 24, 0, 13, 95, 69, 70, 87, 0, 22, 31, 84, 76, 66, 17, 3, 31, 112, 119, 98, 42, 52, 120, 101, 109, 105, 44, 50, 101, 120, 123, 120, 48, 61, 115, 100, 122, 114, 47, 39}, "6cb114", 30370), bundleExtra);
                fillInIntent.removeExtra(NPStringFog.decode(new byte[]{80, 11, 6, 16, 93, 92, 85, 29, 76, 3, 81, 65, 88, 19, 11, 22, 75, 27, 67, 0, 17, 23, 94, 65, 31, 6, 13, 12, 70, 71, 80, 6, 22, 76, 87, 77, 69, 23, 3, 76, 115, 118, 101, 44, 52, 43, 102, 108, 110, 42, 50, 54, 123, 122, 127, 54, 61, 32, 103, 123, 117, 41, 39}, "1ebb25", -1326669823L));
                if (fillInIntent.getBooleanExtra(NPStringFog.decode(new byte[]{7, 88, 86, 64, 95, 90, 2, 78, 28, 84, 66, 82, 1, 91, 87, 92, 68, 29, 3, 78, 70, 64, 81, 29, 39, 117, 102, 123, 102, 122, 50, 111, 109, 125, 96, 103, 47, 121, 124, 97, 111, 113, 51, 120, 118, 126, 117}, "f62203", -2.108346826E9d), false)) {
                    intentSenderRequest = new IntentSenderRequest.Builder(intentSenderRequest.getIntentSender()).setFillInIntent(null).setFlags(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).build();
                }
            }
            intent.putExtra(NPStringFog.decode(new byte[]{84, 87, 85, 71, 95, 94, 81, 65, 31, 84, 83, 67, 92, 79, 88, 65, 73, 25, 71, 92, 66, 64, 92, 67, 27, 90, 94, 91, 68, 69, 84, 90, 69, 27, 85, 79, 65, 75, 80, 27, 121, 121, 97, 124, 127, 97, 111, 100, 112, 119, 117, 112, 98, 104, 103, 124, 96, 96, 117, 100, 97}, "591507", 1.7563579E9f), intentSenderRequest);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(NPStringFog.decode(new byte[]{35, 68, 3, 83, 85, 7, 11, 66, 47, 85, 86, 3, 2, 83, 16}, "e6b48b", 1.437022173E9d), NPStringFog.decode(new byte[]{37, 65, 0, 7, 18, 93, 47, 93, 17, 3, 8, 76, 70, 80, 23, 3, 7, 76, 3, 87, 69, 18, 14, 93, 70, 85, 10, 10, 10, 87, 17, 90, 11, 1, 70, 81, 8, 71, 0, 8, 18, 2, 70}, "f3eff8", 1.7064E9f) + intent);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    public static abstract class FragmentLifecycleCallbacks {
        @Deprecated
        public void onFragmentActivityCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        }

        public void onFragmentCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentDetached(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentPreAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        }

        public void onFragmentPreCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentStopped(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle) {
        }

        public void onFragmentViewDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        }
    }

    static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Parcelable.Creator<LaunchedFragmentInfo>() { // from class: androidx.fragment.app.FragmentManager.LaunchedFragmentInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        };
        int mRequestCode;
        String mWho;

        LaunchedFragmentInfo(Parcel parcel) {
            this.mWho = parcel.readString();
            this.mRequestCode = parcel.readInt();
        }

        LaunchedFragmentInfo(String str, int i) {
            this.mWho = str;
            this.mRequestCode = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }
    }

    private static class LifecycleAwareResultListener implements FragmentResultListener {
        private final Lifecycle mLifecycle;
        private final FragmentResultListener mListener;
        private final LifecycleEventObserver mObserver;

        LifecycleAwareResultListener(Lifecycle lifecycle, FragmentResultListener fragmentResultListener, LifecycleEventObserver lifecycleEventObserver) {
            this.mLifecycle = lifecycle;
            this.mListener = fragmentResultListener;
            this.mObserver = lifecycleEventObserver;
        }

        public boolean isAtLeast(Lifecycle.State state) {
            return this.mLifecycle.getCurrentState().isAtLeast(state);
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(String str, Bundle bundle) {
            this.mListener.onFragmentResult(str, bundle);
        }

        public void removeObserver() {
            this.mLifecycle.removeObserver(this.mObserver);
        }
    }

    public interface OnBackStackChangedListener {
        void onBackStackChanged();
    }

    interface OpGenerator {
        boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2);
    }

    private class PopBackStackState implements OpGenerator {
        final int mFlags;
        final int mId;
        final String mName;
        final FragmentManager this$0;

        PopBackStackState(FragmentManager fragmentManager, String str, int i, int i2) {
            this.this$0 = fragmentManager;
            this.mName = str;
            this.mId = i;
            this.mFlags = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
            if (this.this$0.mPrimaryNav == null || this.mId >= 0 || this.mName != null || !this.this$0.mPrimaryNav.getChildFragmentManager().popBackStackImmediate()) {
                return this.this$0.popBackStackState(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
            }
            return false;
        }
    }

    static class StartEnterTransitionListener implements Fragment.OnStartEnterTransitionListener {
        final boolean mIsBack;
        private int mNumPostponed;
        final BackStackRecord mRecord;

        StartEnterTransitionListener(BackStackRecord backStackRecord, boolean z) {
            this.mIsBack = z;
            this.mRecord = backStackRecord;
        }

        void cancelTransaction() {
            this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, false, false);
        }

        void completeTransaction() {
            boolean z = this.mNumPostponed > 0;
            for (Fragment fragment : this.mRecord.mManager.getFragments()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, z ? false : true, true);
        }

        public boolean isReady() {
            return this.mNumPostponed == 0;
        }

        @Override // androidx.fragment.app.Fragment.OnStartEnterTransitionListener
        public void onStartEnterTransition() {
            int i = this.mNumPostponed - 1;
            this.mNumPostponed = i;
            if (i != 0) {
                return;
            }
            this.mRecord.mManager.scheduleCommit();
        }

        @Override // androidx.fragment.app.Fragment.OnStartEnterTransitionListener
        public void startListening() {
            this.mNumPostponed++;
        }
    }

    private void addAddedFragments(ArraySet<Fragment> arraySet) {
        int i = this.mCurState;
        if (i < 1) {
            return;
        }
        int iMin = Math.min(i, 5);
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment.mState < iMin) {
                moveToState(fragment, iMin);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    arraySet.add(fragment);
                }
            }
        }
    }

    private void cancelExitAnimation(Fragment fragment) {
        HashSet<CancellationSignal> hashSet = this.mExitAnimationCancellationSignals.get(fragment);
        if (hashSet != null) {
            Iterator<CancellationSignal> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            hashSet.clear();
            destroyFragmentView(fragment);
            this.mExitAnimationCancellationSignals.remove(fragment);
        }
    }

    private void checkStateLoss() {
        if (isStateSaved()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 7, 88, 65, 91, 88, 76, 70, 70, 4, 71, 81, 87, 20, 91, 65, 65, 95, 81, 21, 22, 0, 86, 67, 81, 9, 88, 65, 84, 81, 76, 3, 68, 65, 90, 89, 107, 7, 64, 4, 124, 89, 75, 18, 87, 15, 86, 82, 107, 18, 87, 21, 80}, "8f6a57", 1.316849463E9d));
        }
    }

    private void cleanupExec() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    private Set<SpecialEffectsController> collectAllSpecialEffectsController() {
        HashSet hashSet = new HashSet();
        Iterator<FragmentStateManager> it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = it.next().getFragment().mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, getSpecialEffectsControllerFactory()));
            }
        }
        return hashSet;
    }

    private Set<SpecialEffectsController> collectChangedControllers(ArrayList<BackStackRecord> arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator<FragmentTransaction.Op> it = arrayList.get(i).mOps.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().mFragment;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    private void completeShowHideFragment(Fragment fragment) {
        if (fragment.mView != null) {
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(this.mHost.getContext(), fragment, !fragment.mHidden, fragment.getPopDirection());
            if (animationOrAnimatorLoadAnimation == null || animationOrAnimatorLoadAnimation.animator == null) {
                if (animationOrAnimatorLoadAnimation != null) {
                    fragment.mView.startAnimation(animationOrAnimatorLoadAnimation.animation);
                    animationOrAnimatorLoadAnimation.animation.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                animationOrAnimatorLoadAnimation.animator.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    ViewGroup viewGroup = fragment.mContainer;
                    View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    animationOrAnimatorLoadAnimation.animator.addListener(new AnimatorListenerAdapter(this, viewGroup, view, fragment) { // from class: androidx.fragment.app.FragmentManager.7
                        final FragmentManager this$0;
                        final View val$animatingView;
                        final ViewGroup val$container;
                        final Fragment val$fragment;

                        {
                            this.this$0 = this;
                            this.val$container = viewGroup;
                            this.val$animatingView = view;
                            this.val$fragment = fragment;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            this.val$container.endViewTransition(this.val$animatingView);
                            animator.removeListener(this);
                            if (this.val$fragment.mView == null || !this.val$fragment.mHidden) {
                                return;
                            }
                            this.val$fragment.mView.setVisibility(8);
                        }
                    });
                }
                animationOrAnimatorLoadAnimation.animator.start();
            }
        }
        invalidateMenuForFragment(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    private void destroyFragmentView(Fragment fragment) {
        fragment.performDestroyView();
        this.mLifecycleCallbacksDispatcher.dispatchOnFragmentViewDestroyed(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.setValue(null);
        fragment.mInLayout = false;
    }

    private void dispatchParentPrimaryNavigationFragmentChanged(Fragment fragment) {
        if (fragment == null || !fragment.equals(findActiveFragment(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    private void dispatchStateChange(int i) {
        try {
            this.mExecutingActions = true;
            this.mFragmentStore.dispatchStateChange(i);
            moveToState(i, false);
            if (USE_STATE_MANAGER) {
                Iterator<SpecialEffectsController> it = collectAllSpecialEffectsController().iterator();
                while (it.hasNext()) {
                    it.next().forceCompleteAllOperations();
                }
            }
            this.mExecutingActions = false;
            execPendingActions(true);
        } catch (Throwable th) {
            this.mExecutingActions = false;
            throw th;
        }
    }

    private void doPendingDeferredStart() {
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
    }

    @Deprecated
    public static void enableDebugLogging(boolean z) {
        DEBUG = z;
    }

    public static void enableNewStateManager(boolean z) {
        USE_STATE_MANAGER = z;
    }

    private void endAnimatingAwayFragments() {
        if (USE_STATE_MANAGER) {
            Iterator<SpecialEffectsController> it = collectAllSpecialEffectsController().iterator();
            while (it.hasNext()) {
                it.next().forceCompleteAllOperations();
            }
        } else {
            if (this.mExitAnimationCancellationSignals.isEmpty()) {
                return;
            }
            for (Fragment fragment : this.mExitAnimationCancellationSignals.keySet()) {
                cancelExitAnimation(fragment);
                moveToState(fragment);
            }
        }
    }

    private void ensureExecReady(boolean z) {
        if (this.mExecutingActions) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 66, 84, 95, 85, 92, 94, 68, 120, 89, 86, 88, 87, 85, 71, 24, 81, 74, 16, 81, 89, 74, 93, 88, 84, 73, 21, 93, 64, 92, 83, 69, 65, 81, 86, 94, 16, 68, 71, 89, 86, 74, 81, 83, 65, 81, 87, 87, 67}, "005889", 1333317254L));
        }
        if (this.mHost == null) {
            if (!this.mDestroyed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 64, 84, 95, 88, 86, 91, 70, 120, 89, 91, 82, 82, 87, 71, 24, 93, 82, 70, 18, 91, 87, 65, 19, 87, 87, 80, 86, 21, 82, 65, 70, 84, 91, 93, 86, 81, 18, 65, 87, 21, 82, 21, 90, 90, 75, 65, 29}, "525853", false, true));
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{32, 71, 88, 94, 89, 7, 8, 65, 116, 88, 90, 3, 1, 80, 75, 25, 92, 3, 21, 21, 91, 92, 81, 12, 70, 81, 92, 74, 64, 16, 9, 76, 92, 93}, "f5994b", true));
        }
        if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{40, 66, 64, 65, 70, 85, 0, 23, 80, 84, 10, 91, 0, 83, 19, 83, 20, 88, 8, 23, 94, 84, 15, 89, 69, 67, 91, 71, 3, 86, 1, 23, 92, 83, 70, 81, 23, 86, 84, 88, 3, 89, 17, 23, 91, 90, 21, 67}, "e735f7", -1.416296128E9d));
        }
        if (!z) {
            checkStateLoss();
        }
        if (this.mTmpRecords == null) {
            this.mTmpRecords = new ArrayList<>();
            this.mTmpIsPop = new ArrayList<>();
        }
        this.mExecutingActions = true;
        try {
            executePostponedTransaction(null, null);
        } finally {
            this.mExecutingActions = false;
        }
    }

    private static void executeOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            BackStackRecord backStackRecord = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                backStackRecord.bumpBackStackNesting(-1);
                backStackRecord.executePopOps(i == i2 + (-1));
            } else {
                backStackRecord.bumpBackStackNesting(1);
                backStackRecord.executeOps();
            }
            i++;
        }
    }

    private void executeOpsTogether(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).mReorderingAllowed;
        ArrayList<Fragment> arrayList3 = this.mTmpAddedFragments;
        if (arrayList3 == null) {
            this.mTmpAddedFragments = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.mTmpAddedFragments.addAll(this.mFragmentStore.getFragments());
        boolean z2 = false;
        int i4 = i;
        Fragment primaryNavigationFragment = getPrimaryNavigationFragment();
        while (i4 < i2) {
            BackStackRecord backStackRecord = arrayList.get(i4);
            Fragment fragmentExpandOps = !arrayList2.get(i4).booleanValue() ? backStackRecord.expandOps(this.mTmpAddedFragments, primaryNavigationFragment) : backStackRecord.trackAddedFragmentsInPop(this.mTmpAddedFragments, primaryNavigationFragment);
            i4++;
            z2 = !z2 ? backStackRecord.mAddToBackStack : true;
            primaryNavigationFragment = fragmentExpandOps;
        }
        this.mTmpAddedFragments.clear();
        if (!z && this.mCurState >= 1) {
            if (USE_STATE_MANAGER) {
                for (int i5 = i; i5 < i2; i5++) {
                    Iterator<FragmentTransaction.Op> it = arrayList.get(i5).mOps.iterator();
                    while (it.hasNext()) {
                        Fragment fragment = it.next().mFragment;
                        if (fragment != null && fragment.mFragmentManager != null) {
                            this.mFragmentStore.makeActive(createOrGetFragmentStateManager(fragment));
                        }
                    }
                }
            } else {
                FragmentTransition.startTransitions(this.mHost.getContext(), this.mContainer, arrayList, arrayList2, i, i2, false, this.mFragmentTransitionCallback);
            }
        }
        executeOps(arrayList, arrayList2, i, i2);
        if (USE_STATE_MANAGER) {
            boolean zBooleanValue = arrayList2.get(i2 - 1).booleanValue();
            for (int i6 = i; i6 < i2; i6++) {
                BackStackRecord backStackRecord2 = arrayList.get(i6);
                if (zBooleanValue) {
                    for (int size = backStackRecord2.mOps.size() - 1; size >= 0; size--) {
                        Fragment fragment2 = backStackRecord2.mOps.get(size).mFragment;
                        if (fragment2 != null) {
                            createOrGetFragmentStateManager(fragment2).moveToExpectedState();
                        }
                    }
                } else {
                    Iterator<FragmentTransaction.Op> it2 = backStackRecord2.mOps.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().mFragment;
                        if (fragment3 != null) {
                            createOrGetFragmentStateManager(fragment3).moveToExpectedState();
                        }
                    }
                }
            }
            moveToState(this.mCurState, true);
            for (SpecialEffectsController specialEffectsController : collectChangedControllers(arrayList, i, i2)) {
                specialEffectsController.updateOperationDirection(zBooleanValue);
                specialEffectsController.markPostponedState();
                specialEffectsController.executePendingOperations();
            }
        } else {
            if (z) {
                ArraySet<Fragment> arraySet = new ArraySet<>();
                addAddedFragments(arraySet);
                int iPostponePostponableTransactions = postponePostponableTransactions(arrayList, arrayList2, i, i2, arraySet);
                makeRemovedFragmentsInvisible(arraySet);
                i3 = iPostponePostponableTransactions;
            } else {
                i3 = i2;
            }
            if (i3 != i && z) {
                if (this.mCurState >= 1) {
                    FragmentTransition.startTransitions(this.mHost.getContext(), this.mContainer, arrayList, arrayList2, i, i3, true, this.mFragmentTransitionCallback);
                }
                moveToState(this.mCurState, true);
            }
        }
        while (i < i2) {
            BackStackRecord backStackRecord3 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && backStackRecord3.mIndex >= 0) {
                backStackRecord3.mIndex = -1;
            }
            backStackRecord3.runOnCommitRunnables();
            i++;
        }
        if (z2) {
            reportBackStackChanged();
        }
    }

    private void executePostponedTransaction(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int i;
        int i2;
        int iIndexOf2;
        ArrayList<StartEnterTransitionListener> arrayList3 = this.mPostponedTransactions;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i3 = 0;
        while (i3 < size) {
            StartEnterTransitionListener startEnterTransitionListener = this.mPostponedTransactions.get(i3);
            if (arrayList != null && !startEnterTransitionListener.mIsBack && (iIndexOf2 = arrayList.indexOf(startEnterTransitionListener.mRecord)) != -1 && arrayList2 != null && arrayList2.get(iIndexOf2).booleanValue()) {
                this.mPostponedTransactions.remove(i3);
                i = i3 - 1;
                startEnterTransitionListener.cancelTransaction();
                i2 = size - 1;
            } else if (startEnterTransitionListener.isReady() || (arrayList != null && startEnterTransitionListener.mRecord.interactsWith(arrayList, 0, arrayList.size()))) {
                this.mPostponedTransactions.remove(i3);
                i3--;
                size--;
                if (arrayList == null || startEnterTransitionListener.mIsBack || (iIndexOf = arrayList.indexOf(startEnterTransitionListener.mRecord)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf).booleanValue()) {
                    startEnterTransitionListener.completeTransaction();
                    i = i3;
                    i2 = size;
                } else {
                    startEnterTransitionListener.cancelTransaction();
                    i = i3;
                    i2 = size;
                }
            } else {
                i = i3;
                i2 = size;
            }
            i3 = i + 1;
            size = i2;
        }
    }

    public static <F extends Fragment> F findFragment(View view) {
        F f = (F) findViewFragment(view);
        if (f != null) {
            return f;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{98, 90, 4, 65, 19}, "43a638", -468876323L) + view + NPStringFog.decode(new byte[]{69, 2, 11, 85, 75, 25, 11, 9, 16, 16, 80, 88, 19, 3, 68, 81, 24, 127, 23, 7, 3, 93, 93, 87, 17, 70, 23, 85, 76}, "efd089", 4758));
    }

    static FragmentManager findFragmentManager(View view) {
        FragmentActivity fragmentActivity;
        Fragment fragmentFindViewFragment = findViewFragment(view);
        if (fragmentFindViewFragment != null) {
            if (fragmentFindViewFragment.isAdded()) {
                return fragmentFindViewFragment.getChildFragmentManager();
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{49, 13, 86, 67, 117, 65, 4, 2, 94, 6, 93, 71, 69}, "ee3c33", false) + fragmentFindViewFragment + NPStringFog.decode(new byte[]{68, 22, 10, 7, 65, 18, 11, 21, 12, 21, 21, 100, 13, 7, 21, 70}, "dbbf52", -1.4319411E9f) + view + NPStringFog.decode(new byte[]{67, 80, 81, 74, 16, 2, 15, 74, 85, 88, 84, 26, 67, 90, 85, 92, 94, 67, 7, 93, 67, 77, 66, 12, 26, 93, 84, 23, 16, 45, 6, 75, 68, 92, 84, 67, 5, 74, 81, 94, 93, 6, 13, 76, 67, 25, 67, 11, 12, 77, 92, 93, 16, 2, 15, 79, 81, 64, 67, 67, 22, 75, 85, 25, 68, 11, 6, 24, 83, 81, 89, 15, 7, 24, 118, 75, 81, 4, 14, 93, 94, 77, 125, 2, 13, 89, 87, 92, 66, 77}, "c8090c", true, false));
        }
        Context context = view.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                fragmentActivity = null;
                break;
            }
            if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{51, 13, 87, 19, 20}, "ed2d4e", false) + view + NPStringFog.decode(new byte[]{70, 80, 69, 70, 8, 10, 18, 25, 65, 15, 18, 13, 15, 87, 22, 7, 70, 22, 19, 91, 85, 10, 7, 22, 21, 25, 89, 0, 70, 35, 20, 88, 81, 11, 3, 11, 18, 120, 85, 18, 15, 19, 15, 77, 79, 72}, "f96ffe", 8.1907136E8f));
    }

    private static Fragment findViewFragment(View view) {
        while (view != null) {
            Fragment viewFragment = getViewFragment(view);
            if (viewFragment != null) {
                return viewFragment;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    private void forcePostponedTransactions() {
        if (USE_STATE_MANAGER) {
            Iterator<SpecialEffectsController> it = collectAllSpecialEffectsController().iterator();
            while (it.hasNext()) {
                it.next().forcePostponedExecutePendingOperations();
            }
        } else if (this.mPostponedTransactions != null) {
            while (!this.mPostponedTransactions.isEmpty()) {
                this.mPostponedTransactions.remove(0).completeTransaction();
            }
        }
    }

    private boolean generateOpsForPendingActions(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.mPendingActions) {
            if (this.mPendingActions.isEmpty()) {
                return false;
            }
            int size = this.mPendingActions.size();
            boolean zGenerateOps = false;
            for (int i = 0; i < size; i++) {
                zGenerateOps |= this.mPendingActions.get(i).generateOps(arrayList, arrayList2);
            }
            this.mPendingActions.clear();
            this.mHost.getHandler().removeCallbacks(this.mExecCommit);
            return zGenerateOps;
        }
    }

    private FragmentManagerViewModel getChildNonConfig(Fragment fragment) {
        return this.mNonConfig.getChildNonConfig(fragment);
    }

    private ViewGroup getFragmentContainer(Fragment fragment) {
        if (fragment.mContainer != null) {
            return fragment.mContainer;
        }
        if (fragment.mContainerId <= 0) {
            return null;
        }
        if (this.mContainer.onHasView()) {
            View viewOnFindViewById = this.mContainer.onFindViewById(fragment.mContainerId);
            if (viewOnFindViewById instanceof ViewGroup) {
                return (ViewGroup) viewOnFindViewById;
            }
        }
        return null;
    }

    static Fragment getViewFragment(View view) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    static boolean isLoggingEnabled(int i) {
        return DEBUG || Log.isLoggable(TAG, i);
    }

    private boolean isMenuAvailable(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.checkForMenus();
    }

    private void makeRemovedFragmentsInvisible(ArraySet<Fragment> arraySet) {
        int size = arraySet.size();
        for (int i = 0; i < size; i++) {
            Fragment fragmentValueAt = arraySet.valueAt(i);
            if (!fragmentValueAt.mAdded) {
                View viewRequireView = fragmentValueAt.requireView();
                fragmentValueAt.mPostponedAlpha = viewRequireView.getAlpha();
                viewRequireView.setAlpha(0.0f);
            }
        }
    }

    private boolean popBackStackImmediate(String str, int i, int i2) {
        execPendingActions(false);
        ensureExecReady(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && i < 0 && str == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean zPopBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, str, i, i2);
        if (zPopBackStackState) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        doPendingDeferredStart();
        this.mFragmentStore.burpActive();
        return zPopBackStackState;
    }

    private int postponePostponableTransactions(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, ArraySet<Fragment> arraySet) {
        int i3;
        int i4 = i2 - 1;
        int i5 = i2;
        while (i4 >= i) {
            BackStackRecord backStackRecord = arrayList.get(i4);
            boolean zBooleanValue = arrayList2.get(i4).booleanValue();
            if (backStackRecord.isPostponed() && !backStackRecord.interactsWith(arrayList, i4 + 1, i2)) {
                if (this.mPostponedTransactions == null) {
                    this.mPostponedTransactions = new ArrayList<>();
                }
                StartEnterTransitionListener startEnterTransitionListener = new StartEnterTransitionListener(backStackRecord, zBooleanValue);
                this.mPostponedTransactions.add(startEnterTransitionListener);
                backStackRecord.setOnStartPostponedListener(startEnterTransitionListener);
                if (zBooleanValue) {
                    backStackRecord.executeOps();
                } else {
                    backStackRecord.executePopOps(false);
                }
                int i6 = i5 - 1;
                if (i4 != i6) {
                    arrayList.remove(i4);
                    arrayList.add(i6, backStackRecord);
                }
                addAddedFragments(arraySet);
                i3 = i6;
            } else {
                i3 = i5;
            }
            i4--;
            i5 = i3;
        }
        return i5;
    }

    private void removeRedundantOperationsAndExecute(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int i2 = 0;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{125, 94, 77, 0, 66, 92, 85, 92, 25, 0, 66, 64, 91, 66, 25, 18, 89, 70, 92, 16, 77, 13, 85, 18, 86, 81, 90, 14, 16, 65, 64, 81, 90, 14, 16, 64, 81, 83, 86, 23, 84, 65}, "409e02", 4.69832972E8d));
        }
        executePostponedTransaction(arrayList, arrayList2);
        int size = arrayList.size();
        int i3 = 0;
        while (i2 < size) {
            if (arrayList.get(i2).mReorderingAllowed) {
                i = i2;
            } else {
                if (i3 != i2) {
                    executeOpsTogether(arrayList, arrayList2, i3, i2);
                }
                int i4 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i4 < size && arrayList2.get(i4).booleanValue() && !arrayList.get(i4).mReorderingAllowed) {
                        i4++;
                    }
                }
                int i5 = i4;
                executeOpsTogether(arrayList, arrayList2, i2, i5);
                i3 = i5;
                i = i5 - 1;
            }
            i2 = i + 1;
        }
        if (i3 != size) {
            executeOpsTogether(arrayList, arrayList2, i3, size);
        }
    }

    private void reportBackStackChanged() {
        if (this.mBackStackChangeListeners == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mBackStackChangeListeners.size()) {
                return;
            }
            this.mBackStackChangeListeners.get(i2).onBackStackChanged();
            i = i2 + 1;
        }
    }

    static int reverseTransit(int i) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                return 8194;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case 8194:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    private void setVisibleRemovingFragment(Fragment fragment) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        if (fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag) == null) {
            fragmentContainer.setTag(R.id.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
    }

    private void startPendingDeferredFragments() {
        Iterator<FragmentStateManager> it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            performPendingDeferredStart(it.next());
        }
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, NPStringFog.decode(new byte[]{36, 2, 67, 12, 68, 8, 17, 24, 23, 22, 70, 0, 17, 4, 13}, "ea7e2a", true, true));
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback != null) {
            try {
                fragmentHostCallback.onDump("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{39, 88, 81, 90, 82, 6, 65, 93, 77, 91, 71, 11, 15, 94, 24, 69, 67, 3, 21, 92}, "a9867b", -159963224L), e);
                throw runtimeException;
            }
        }
        try {
            dump("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{112, 88, 93, 89, 4, 7, 22, 93, 65, 88, 17, 10, 88, 94, 20, 70, 21, 2, 66, 92}, "6945ac", 555234508L), e2);
            throw runtimeException;
        }
    }

    private void updateOnBackPressedCallbackEnabled() {
        synchronized (this.mPendingActions) {
            if (this.mPendingActions.isEmpty()) {
                this.mOnBackPressedCallback.setEnabled(getBackStackEntryCount() > 0 && isPrimaryNavigation(this.mParent));
            } else {
                this.mOnBackPressedCallback.setEnabled(true);
            }
        }
    }

    void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(backStackRecord);
    }

    void addCancellationSignal(Fragment fragment, CancellationSignal cancellationSignal) {
        if (this.mExitAnimationCancellationSignals.get(fragment) == null) {
            this.mExitAnimationCancellationSignals.put(fragment, new HashSet<>());
        }
        this.mExitAnimationCancellationSignals.get(fragment).add(cancellationSignal);
    }

    FragmentStateManager addFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{87, 86, 1, 9, 17}, "62e31c", 1.1029108E9f) + fragment);
        }
        FragmentStateManager fragmentStateManagerCreateOrGetFragmentStateManager = createOrGetFragmentStateManager(fragment);
        fragment.mFragmentManager = this;
        this.mFragmentStore.makeActive(fragmentStateManagerCreateOrGetFragmentStateManager);
        if (!fragment.mDetached) {
            this.mFragmentStore.addFragment(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
        return fragmentStateManagerCreateOrGetFragmentStateManager;
    }

    public void addFragmentOnAttachListener(FragmentOnAttachListener fragmentOnAttachListener) {
        this.mOnAttachListeners.add(fragmentOnAttachListener);
    }

    public void addOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    void addRetainedFragment(Fragment fragment) {
        this.mNonConfig.addRetainedFragment(fragment);
    }

    int allocBackStackIndex() {
        return this.mBackStackIndex.getAndIncrement();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void attachController(FragmentHostCallback<?> fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        String str;
        if (this.mHost != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 10, 19, 7, 4, 7, 31, 70, 0, 22, 17, 2, 5, 14, 4, 6}, "ffabec", false, true));
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
        if (fragment != null) {
            addFragmentOnAttachListener(new FragmentOnAttachListener(this, fragment) { // from class: androidx.fragment.app.FragmentManager.8
                final FragmentManager this$0;
                final Fragment val$parent;

                {
                    this.this$0 = this;
                    this.val$parent = fragment;
                }

                @Override // androidx.fragment.app.FragmentOnAttachListener
                public void onAttachFragment(FragmentManager fragmentManager, Fragment fragment2) {
                    this.val$parent.onAttachFragment(fragment2);
                }
            });
        } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
            addFragmentOnAttachListener((FragmentOnAttachListener) fragmentHostCallback);
        }
        if (this.mParent != null) {
            updateOnBackPressedCallbackEnabled();
        }
        if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
            OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
            this.mOnBackPressedDispatcher = onBackPressedDispatcher;
            LifecycleOwner lifecycleOwner = onBackPressedDispatcherOwner;
            if (fragment != null) {
                lifecycleOwner = fragment;
            }
            onBackPressedDispatcher.addCallback(lifecycleOwner, this.mOnBackPressedCallback);
        }
        if (fragment != null) {
            this.mNonConfig = fragment.mFragmentManager.getChildNonConfig(fragment);
        } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            this.mNonConfig = FragmentManagerViewModel.getInstance(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore());
        } else {
            this.mNonConfig = new FragmentManagerViewModel(false);
        }
        this.mNonConfig.setIsStateSaved(isStateSaved());
        this.mFragmentStore.setNonConfig(this.mNonConfig);
        Object obj = this.mHost;
        if (obj instanceof ActivityResultRegistryOwner) {
            ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) obj).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + NPStringFog.decode(new byte[]{15}, "520412", true);
            } else {
                str = "";
            }
            String str2 = NPStringFog.decode(new byte[]{39, 22, 7, 84, 14, 87, 15, 16, 43, 82, 13, 83, 6, 1, 20, 9}, "adf3c2", false) + str;
            this.mStartActivityForResult = activityResultRegistry.register(str2 + NPStringFog.decode(new byte[]{96, 71, 82, 65, 66, 112, 80, 71, 90, 69, 95, 69, 74, 117, 92, 65, 100, 84, 64, 70, 95, 71}, "333361", true), new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback<ActivityResult>(this) { // from class: androidx.fragment.app.FragmentManager.9
                final FragmentManager this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.activity.result.ActivityResultCallback
                public void onActivityResult(ActivityResult activityResult) {
                    LaunchedFragmentInfo launchedFragmentInfoPollFirst = this.this$0.mLaunchedFragments.pollFirst();
                    if (launchedFragmentInfoPollFirst == null) {
                        Log.w(NPStringFog.decode(new byte[]{119, 16, 7, 94, 88, 85, 95, 22, 43, 88, 91, 81, 86, 7, 20}, "1bf950", false, false), NPStringFog.decode(new byte[]{127, 87, 25, 115, 90, 17, 88, 78, 80, 70, 80, 0, 66, 24, 78, 87, 75, 0, 17, 75, 77, 83, 75, 17, 84, 92, 25, 84, 86, 23, 17, 74, 92, 65, 76, 9, 69, 24, 95, 93, 75, 69}, "18929e", 1.9411846E8d) + this);
                        return;
                    }
                    String str3 = launchedFragmentInfoPollFirst.mWho;
                    int i = launchedFragmentInfoPollFirst.mRequestCode;
                    Fragment fragmentFindFragmentByWho = this.this$0.mFragmentStore.findFragmentByWho(str3);
                    if (fragmentFindFragmentByWho != null) {
                        fragmentFindFragmentByWho.onActivityResult(i, activityResult.getResultCode(), activityResult.getData());
                        return;
                    }
                    Log.w(NPStringFog.decode(new byte[]{34, 23, 89, 95, 93, 81, 10, 17, 117, 89, 94, 85, 3, 0, 74}, "de8804", 1.2936899E9f), NPStringFog.decode(new byte[]{119, 83, 77, 92, 16, 81, 66, 73, 25, 71, 3, 75, 67, 92, 77, 21, 2, 93, 90, 89, 79, 80, 20, 93, 82, 16, 95, 90, 20, 24, 67, 94, 82, 91, 9, 79, 88, 16, 127, 71, 7, 95, 91, 85, 87, 65, 70}, "6095f8", 2.7625078E7f) + str3);
                }
            });
            this.mStartIntentSenderForResult = activityResultRegistry.register(str2 + NPStringFog.decode(new byte[]{50, 68, 7, 67, 70, 40, 15, 68, 3, 95, 70, 50, 4, 94, 2, 84, 64, 39, 14, 66, 52, 84, 65, 20, 13, 68}, "a0f12a", false), new FragmentIntentSenderContract(), new ActivityResultCallback<ActivityResult>(this) { // from class: androidx.fragment.app.FragmentManager.10
                final FragmentManager this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.activity.result.ActivityResultCallback
                public void onActivityResult(ActivityResult activityResult) {
                    LaunchedFragmentInfo launchedFragmentInfoPollFirst = this.this$0.mLaunchedFragments.pollFirst();
                    if (launchedFragmentInfoPollFirst == null) {
                        Log.w(NPStringFog.decode(new byte[]{35, 74, 7, 4, 12, 92, 11, 76, 43, 2, 15, 88, 2, 93, 20}, "e8fca9", -9.1826285E8f), NPStringFog.decode(new byte[]{47, 87, 22, 124, 86, 68, 4, 86, 66, 102, 93, 94, 5, 93, 68, 70, 24, 71, 4, 74, 83, 21, 75, 68, 0, 74, 66, 80, 92, 16, 7, 87, 68, 21}, "a86580", false) + this);
                        return;
                    }
                    String str3 = launchedFragmentInfoPollFirst.mWho;
                    int i = launchedFragmentInfoPollFirst.mRequestCode;
                    Fragment fragmentFindFragmentByWho = this.this$0.mFragmentStore.findFragmentByWho(str3);
                    if (fragmentFindFragmentByWho != null) {
                        fragmentFindFragmentByWho.onActivityResult(i, activityResult.getResultCode(), activityResult.getData());
                        return;
                    }
                    Log.w(NPStringFog.decode(new byte[]{112, 16, 87, 87, 14, 1, 88, 22, 123, 81, 13, 5, 81, 7, 68}, "6b60cd", false, true), NPStringFog.decode(new byte[]{47, 10, 18, 87, 87, 66, 70, 55, 3, 92, 93, 83, 20, 68, 20, 87, 74, 67, 10, 16, 70, 86, 92, 90, 15, 18, 3, 64, 92, 82, 70, 2, 9, 64, 25, 67, 8, 15, 8, 93, 78, 88, 70, 34, 20, 83, 94, 91, 3, 10, 18, 18}, "fdf296", false) + str3);
                }
            });
            this.mRequestPermissions = activityResultRegistry.register(str2 + NPStringFog.decode(new byte[]{107, 93, 16, 66, 85, 68, 77, 104, 4, 69, 93, 94, 74, 75, 8, 88, 94, 68}, "98a707", 1.6440264E9f), new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback<Map<String, Boolean>>(this) { // from class: androidx.fragment.app.FragmentManager.11
                final FragmentManager this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.activity.result.ActivityResultCallback
                public void onActivityResult(Map<String, Boolean> map) {
                    String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                    ArrayList arrayList = new ArrayList(map.values());
                    int[] iArr = new int[arrayList.size()];
                    for (int i = 0; i < arrayList.size(); i++) {
                        iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
                    }
                    LaunchedFragmentInfo launchedFragmentInfoPollFirst = this.this$0.mLaunchedFragments.pollFirst();
                    if (launchedFragmentInfoPollFirst == null) {
                        Log.w(NPStringFog.decode(new byte[]{35, 23, 86, 81, 11, 3, 11, 17, 122, 87, 8, 7, 2, 0, 69}, "ee76ff", 9041), NPStringFog.decode(new byte[]{118, 11, 17, 70, 4, 23, 85, 13, 66, 69, 8, 10, 86, 23, 17, 65, 4, 23, 93, 68, 67, 83, 16, 16, 93, 23, 69, 83, 5, 69, 94, 11, 67, 22}, "8d16ae", false) + this);
                        return;
                    }
                    String str3 = launchedFragmentInfoPollFirst.mWho;
                    int i2 = launchedFragmentInfoPollFirst.mRequestCode;
                    Fragment fragmentFindFragmentByWho = this.this$0.mFragmentStore.findFragmentByWho(str3);
                    if (fragmentFindFragmentByWho != null) {
                        fragmentFindFragmentByWho.onRequestPermissionsResult(i2, strArr, iArr);
                        return;
                    }
                    Log.w(NPStringFog.decode(new byte[]{112, 67, 2, 94, 88, 6, 88, 69, 46, 88, 91, 2, 81, 84, 17}, "61c95c", -17379), NPStringFog.decode(new byte[]{50, 86, 67, 89, 12, 70, 17, 90, 94, 90, 69, 71, 7, 66, 68, 81, 22, 65, 66, 65, 84, 71, 16, 89, 22, 19, 85, 81, 9, 92, 20, 86, 67, 81, 1, 21, 4, 92, 67, 20, 16, 91, 9, 93, 94, 67, 11, 21, 36, 65, 80, 83, 8, 80, 12, 71, 17}, "b314e5", -250387807L) + str3);
                }
            });
        }
    }

    void attachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{86, 22, 77, 7, 84, 88, 13, 66}, "7b9f70", 859935379L) + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.mFragmentStore.addFragment(fragment);
            if (isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{85, 2, 92, 66, 94, 19, 91, 11, 24, 3, 76, 21, 85, 5, 80, 88, 24}, "4f8b8a", 5122) + fragment);
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
    }

    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    boolean checkForMenus() {
        Iterator<Fragment> it = this.mFragmentStore.getActiveFragments().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Fragment next = it.next();
            boolean zIsMenuAvailable = next != null ? isMenuAvailable(next) : z;
            if (zIsMenuAvailable) {
                return true;
            }
            z = zIsMenuAvailable;
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResult(String str) {
        this.mResults.remove(str);
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResultListener(String str) {
        LifecycleAwareResultListener lifecycleAwareResultListenerRemove = this.mResultListeners.remove(str);
        if (lifecycleAwareResultListenerRemove != null) {
            lifecycleAwareResultListenerRemove.removeObserver();
        }
    }

    void completeExecute(BackStackRecord backStackRecord, boolean z, boolean z2, boolean z3) {
        if (z) {
            backStackRecord.executePopOps(z3);
        } else {
            backStackRecord.executeOps();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(backStackRecord);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.mCurState >= 1) {
            FragmentTransition.startTransitions(this.mHost.getContext(), this.mContainer, arrayList, arrayList2, 0, 1, true, this.mFragmentTransitionCallback);
        }
        if (z3) {
            moveToState(this.mCurState, true);
        }
        for (Fragment fragment : this.mFragmentStore.getActiveFragments()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && backStackRecord.interactsWith(fragment.mContainerId)) {
                if (fragment.mPostponedAlpha > 0.0f) {
                    fragment.mView.setAlpha(fragment.mPostponedAlpha);
                }
                if (z3) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    FragmentStateManager createOrGetFragmentStateManager(Fragment fragment) {
        FragmentStateManager fragmentStateManager = this.mFragmentStore.getFragmentStateManager(fragment.mWho);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, fragment);
        fragmentStateManager2.restoreState(this.mHost.getContext().getClassLoader());
        fragmentStateManager2.setFragmentManagerState(this.mCurState);
        return fragmentStateManager2;
    }

    void detachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{92, 92, 66, 89, 7, 80, 2, 25}, "8968d8", 1127199381L) + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{75, 83, 14, 91, 69, 84, 25, 80, 17, 91, 94, 17, 93, 83, 23, 85, 80, 89, 3, 22}, "96c431", -11060) + fragment);
            }
            this.mFragmentStore.removeFragment(fragment);
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            setVisibleRemovingFragment(fragment);
        }
    }

    void dispatchActivityCreated() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.setIsStateSaved(false);
        dispatchStateChange(4);
    }

    void dispatchAttach() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.setIsStateSaved(false);
        dispatchStateChange(0);
    }

    void dispatchConfigurationChanged(Configuration configuration) {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void dispatchCreate() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.setIsStateSaved(false);
        dispatchStateChange(1);
    }

    boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        ArrayList<Fragment> arrayList;
        boolean z;
        if (this.mCurState < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList2 = null;
        boolean z2 = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && isParentMenuVisible(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                arrayList = arrayList2;
                z = true;
            } else {
                arrayList = arrayList2;
                z = z2;
            }
            z2 = z;
            arrayList2 = arrayList;
        }
        if (this.mCreatedMenus != null) {
            for (int i = 0; i < this.mCreatedMenus.size(); i++) {
                Fragment fragment2 = this.mCreatedMenus.get(i);
                if (arrayList2 == null || !arrayList2.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList2;
        return z2;
    }

    void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions(true);
        endAnimatingAwayFragments();
        dispatchStateChange(-1);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
        if (this.mOnBackPressedDispatcher != null) {
            this.mOnBackPressedCallback.remove();
            this.mOnBackPressedDispatcher = null;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = this.mStartActivityForResult;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
            this.mStartIntentSenderForResult.unregister();
            this.mRequestPermissions.unregister();
        }
    }

    void dispatchDestroyView() {
        dispatchStateChange(1);
    }

    void dispatchLowMemory() {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    void dispatchMultiWindowModeChanged(boolean z) {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    void dispatchOnAttachFragment(Fragment fragment) {
        Iterator<FragmentOnAttachListener> it = this.mOnAttachListeners.iterator();
        while (it.hasNext()) {
            it.next().onAttachFragment(this, fragment);
        }
    }

    boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mCurState < 1) {
            return;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    void dispatchPause() {
        dispatchStateChange(5);
    }

    void dispatchPictureInPictureModeChanged(boolean z) {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    boolean dispatchPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mCurState < 1) {
            return false;
        }
        Iterator<Fragment> it = this.mFragmentStore.getFragments().iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            Fragment next = it.next();
            z = (next != null && isParentMenuVisible(next) && next.performPrepareOptionsMenu(menu)) ? true : z2;
        }
    }

    void dispatchPrimaryNavigationFragmentChanged() {
        updateOnBackPressedCallbackEnabled();
        dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
    }

    void dispatchResume() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.setIsStateSaved(false);
        dispatchStateChange(7);
    }

    void dispatchStart() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.setIsStateSaved(false);
        dispatchStateChange(5);
    }

    void dispatchStop() {
        this.mStopped = true;
        this.mNonConfig.setIsStateSaved(true);
        dispatchStateChange(4);
    }

    void dispatchViewCreated() {
        dispatchStateChange(2);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.mFragmentStore.dump(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.mCreatedMenus;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println(NPStringFog.decode(new byte[]{127, 75, 3, 84, 11, 3, 87, 77, 17, 19, 37, 20, 92, 88, 22, 86, 2, 70, 116, 92, 12, 70, 21, 92}, "99b3ff", 8.7667104E8f));
            for (int i = 0; i < size2; i++) {
                Fragment fragment = this.mCreatedMenus.get(i);
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{25, 67, 26}, "9c9c6e", -1.9884417E9f));
                printWriter.print(i);
                printWriter.print(NPStringFog.decode(new byte[]{91, 18}, "a2f48d", -1.552213538E9d));
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<BackStackRecord> arrayList2 = this.mBackStack;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println(NPStringFog.decode(new byte[]{117, 87, 2, 88, 24, 49, 67, 87, 2, 88, 2}, "76a38b", -3.98567539E8d));
            for (int i2 = 0; i2 < size; i2++) {
                BackStackRecord backStackRecord = this.mBackStack.get(i2);
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{23, 16, 16}, "703bc1", true));
                printWriter.print(i2);
                printWriter.print(NPStringFog.decode(new byte[]{91, 24}, "a8817b", false));
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println(NPStringFog.decode(new byte[]{118, 81, 1, 90, 17, 103, 64, 81, 1, 90, 17, 125, 90, 84, 7, 73, 11, 20}, "40b114", 32036) + this.mBackStackIndex.get());
        synchronized (this.mPendingActions) {
            int size3 = this.mPendingActions.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println(NPStringFog.decode(new byte[]{96, 92, 15, 93, 11, 10, 87, 25, 32, 90, 22, 13, 95, 87, 18, 3}, "09a9bd", 27938));
                for (int i3 = 0; i3 < size3; i3++) {
                    OpGenerator opGenerator = this.mPendingActions.get(i3);
                    printWriter.print(str);
                    printWriter.print(NPStringFog.decode(new byte[]{68, 22, 70}, "d6e8a8", false));
                    printWriter.print(i3);
                    printWriter.print(NPStringFog.decode(new byte[]{9, 67}, "3c43ea", 1.24778602E8d));
                    printWriter.println(opGenerator);
                }
            }
        }
        printWriter.print(str);
        printWriter.println(NPStringFog.decode(new byte[]{113, 69, 89, 81, 94, 4, 89, 67, 117, 87, 93, 0, 80, 82, 74, 22, 94, 8, 68, 84, 24, 69, 71, 0, 67, 82, 2}, "77863a", -1552463596L));
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{23, 69, 9, 125, 93, 17, 67, 88}, "7ed52b", -987189527L));
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{23, 19, 11, 112, 12, 13, 67, 82, 15, 93, 6, 17, 10}, "73f3cc", false));
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{70, 17, 9, 97, 88, 74, 3, 95, 16, 12}, "f1d198", false));
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{21, 65, 12, 34, 66, 16, 102, 21, 0, 21, 82, 95}, "5aaa7b", 10368));
        printWriter.print(this.mCurState);
        printWriter.print(NPStringFog.decode(new byte[]{67, 92, 49, 21, 7, 71, 6, 98, 3, 23, 3, 87, 94}, "c1baf3", -1.3433289E9f));
        printWriter.print(this.mStateSaved);
        printWriter.print(NPStringFog.decode(new byte[]{69, 92, 103, 64, 11, 17, 21, 84, 80, 9}, "e144da", -1268874018L));
        printWriter.print(this.mStopped);
        printWriter.print(NPStringFog.decode(new byte[]{66, 12, 124, 1, 21, 18, 16, 14, 65, 1, 2, 91}, "ba8dff", -8.34099638E8d));
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{18, 24, 92, 126, 83, 86, 86, 117, 84, 94, 67, 122, 92, 78, 80, 92, 95, 87, 83, 76, 84, 13}, "281063", false, true));
            printWriter.println(this.mNeedMenuInvalidate);
        }
    }

    void enqueueAction(OpGenerator opGenerator, boolean z) {
        if (!z) {
            if (this.mHost == null) {
                if (!this.mDestroyed) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 69, 4, 85, 88, 92, 88, 67, 40, 83, 91, 88, 81, 82, 23, 18, 93, 88, 69, 23, 11, 93, 65, 25, 84, 82, 0, 92, 21, 88, 66, 67, 4, 81, 93, 92, 82, 23, 17, 93, 21, 88, 22, 95, 10, 65, 65, 23}, "67e259", -2.4850395E8f));
                }
                throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 71, 4, 81, 88, 86, 89, 65, 40, 87, 91, 82, 80, 80, 23, 22, 93, 82, 68, 21, 7, 83, 80, 93, 23, 81, 0, 69, 65, 65, 88, 76, 0, 82}, "75e653", 1.5869998E9f));
            }
            checkStateLoss();
        }
        synchronized (this.mPendingActions) {
            if (this.mHost == null) {
                if (!z) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 82, 71, 88, 79, 11, 67, 72, 19, 89, 88, 17, 23, 83, 86, 84, 87, 66, 83, 84, 64, 69, 75, 13, 78, 84, 87}, "71319b", -32705));
                }
            } else {
                this.mPendingActions.add(opGenerator);
                scheduleCommit();
            }
        }
    }

    boolean execPendingActions(boolean z) {
        ensureExecReady(z);
        boolean z2 = false;
        while (generateOpsForPendingActions(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
                cleanupExec();
                z2 = true;
            } catch (Throwable th) {
                cleanupExec();
                throw th;
            }
        }
        updateOnBackPressedCallbackEnabled();
        doPendingDeferredStart();
        this.mFragmentStore.burpActive();
        return z2;
    }

    void execSingleAction(OpGenerator opGenerator, boolean z) {
        if (z && (this.mHost == null || this.mDestroyed)) {
            return;
        }
        ensureExecReady(z);
        if (opGenerator.generateOps(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        doPendingDeferredStart();
        this.mFragmentStore.burpActive();
    }

    public boolean executePendingTransactions() {
        boolean zExecPendingActions = execPendingActions(true);
        forcePostponedTransactions();
        return zExecPendingActions;
    }

    Fragment findActiveFragment(String str) {
        return this.mFragmentStore.findActiveFragment(str);
    }

    public Fragment findFragmentById(int i) {
        return this.mFragmentStore.findFragmentById(i);
    }

    public Fragment findFragmentByTag(String str) {
        return this.mFragmentStore.findFragmentByTag(str);
    }

    Fragment findFragmentByWho(String str) {
        return this.mFragmentStore.findFragmentByWho(str);
    }

    int getActiveFragmentCount() {
        return this.mFragmentStore.getActiveFragmentCount();
    }

    List<Fragment> getActiveFragments() {
        return this.mFragmentStore.getActiveFragments();
    }

    public BackStackEntry getBackStackEntryAt(int i) {
        return this.mBackStack.get(i);
    }

    public int getBackStackEntryCount() {
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    FragmentContainer getContainer() {
        return this.mContainer;
    }

    public Fragment getFragment(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragmentFindActiveFragment = findActiveFragment(string);
        if (fragmentFindActiveFragment != null) {
            return fragmentFindActiveFragment;
        }
        throwException(new IllegalStateException(NPStringFog.decode(new byte[]{118, 70, 82, 86, 92, 4, 94, 64, 19, 95, 94, 65, 92, 91, 93, 86, 84, 19, 16, 81, 75, 88, 66, 21, 67, 20, 85, 94, 67, 65, 91, 81, 74, 17}, "04311a", false, true) + str + NPStringFog.decode(new byte[]{95, 70, 68, 87, 93, 20, 16, 3, 17, 80, 80, 69}, "ef194e", false) + string));
        return fragmentFindActiveFragment;
    }

    public FragmentFactory getFragmentFactory() {
        FragmentFactory fragmentFactory = this.mFragmentFactory;
        if (fragmentFactory != null) {
            return fragmentFactory;
        }
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getFragmentFactory() : this.mHostFragmentFactory;
    }

    FragmentStore getFragmentStore() {
        return this.mFragmentStore;
    }

    public List<Fragment> getFragments() {
        return this.mFragmentStore.getFragments();
    }

    FragmentHostCallback<?> getHost() {
        return this.mHost;
    }

    LayoutInflater.Factory2 getLayoutInflaterFactory() {
        return this.mLayoutInflaterFactory;
    }

    FragmentLifecycleCallbacksDispatcher getLifecycleCallbacksDispatcher() {
        return this.mLifecycleCallbacksDispatcher;
    }

    Fragment getParent() {
        return this.mParent;
    }

    public Fragment getPrimaryNavigationFragment() {
        return this.mPrimaryNav;
    }

    SpecialEffectsControllerFactory getSpecialEffectsControllerFactory() {
        SpecialEffectsControllerFactory specialEffectsControllerFactory = this.mSpecialEffectsControllerFactory;
        if (specialEffectsControllerFactory != null) {
            return specialEffectsControllerFactory;
        }
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getSpecialEffectsControllerFactory() : this.mDefaultSpecialEffectsControllerFactory;
    }

    ViewModelStore getViewModelStore(Fragment fragment) {
        return this.mNonConfig.getViewModelStore(fragment);
    }

    void handleOnBackPressed() {
        execPendingActions(true);
        if (this.mOnBackPressedCallback.isEnabled()) {
            popBackStackImmediate();
        } else {
            this.mOnBackPressedDispatcher.onBackPressed();
        }
    }

    void hideFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{14, 93, 81, 6, 2, 66}, "f45c8b", 231) + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = !fragment.mHiddenChanged;
        setVisibleRemovingFragment(fragment);
    }

    void invalidateMenuForFragment(Fragment fragment) {
        if (fragment.mAdded && isMenuAvailable(fragment)) {
            this.mNeedMenuInvalidate = true;
        }
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    boolean isParentMenuVisible(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    boolean isPrimaryNavigation(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.getPrimaryNavigationFragment()) && isPrimaryNavigation(fragmentManager.mParent);
    }

    boolean isStateAtLeast(int i) {
        return this.mCurState >= i;
    }

    public boolean isStateSaved() {
        return this.mStateSaved || this.mStopped;
    }

    void launchRequestPermissions(Fragment fragment, String[] strArr, int i) {
        if (this.mRequestPermissions == null) {
            this.mHost.onRequestPermissionsFromFragment(fragment, strArr, i);
            return;
        }
        this.mLaunchedFragments.addLast(new LaunchedFragmentInfo(fragment.mWho, i));
        this.mRequestPermissions.launch(strArr);
    }

    void launchStartActivityForResult(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (this.mStartActivityForResult == null) {
            this.mHost.onStartActivityFromFragment(fragment, intent, i, bundle);
            return;
        }
        this.mLaunchedFragments.addLast(new LaunchedFragmentInfo(fragment.mWho, i));
        if (intent != null && bundle != null) {
            intent.putExtra(NPStringFog.decode(new byte[]{89, 8, 82, 64, 92, 89, 92, 30, 24, 83, 80, 68, 81, 16, 95, 70, 74, 30, 74, 3, 69, 71, 95, 68, 22, 5, 89, 92, 71, 66, 89, 5, 66, 28, 86, 72, 76, 20, 87, 28, 114, 115, 108, 47, 96, 123, 103, 105, 103, 41, 102, 102, 122, 127, 118, 53, 105, 112, 102, 126, 124, 42, 115}, "8f6230", false, true), bundle);
        }
        this.mStartActivityForResult.launch(intent);
    }

    void launchStartIntentSenderForResult(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mStartIntentSenderForResult == null) {
            this.mHost.onStartIntentSenderFromFragment(fragment, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent = new Intent();
                intent.putExtra(EXTRA_CREATED_FILLIN_INTENT, true);
            }
            if (isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{36, 6, 77, 13, 67, 15, 17, 28, 118, 20, 65, 15, 10, 11, 74, 68}, "ee9d5f", true, true) + bundle + NPStringFog.decode(new byte[]{68, 78, 83, 20, 92, 66, 5, 93, 82, 3, 93, 66, 16, 86, 22, 0, 80, 14, 8, 112, 88, 47, 87, 22, 1, 87, 66, 70}, "d96f9b", -1.315366164E9d) + intent + NPStringFog.decode(new byte[]{19, 86, 10, 23, 24, 82, 65, 81, 2, 8, 93, 90, 71, 16}, "30ee84", false, true) + fragment);
            }
            intent.putExtra(NPStringFog.decode(new byte[]{80, 13, 85, 74, 90, 15, 85, 27, 31, 89, 86, 18, 88, 21, 88, 76, 76, 72, 67, 6, 66, 77, 89, 18, 31, 0, 94, 86, 65, 20, 80, 0, 69, 22, 80, 30, 69, 17, 80, 22, 116, 37, 101, 42, 103, 113, 97, 63, 110, 44, 97, 108, 124, 41, 127, 48, 110, 122, 96, 40, 117, 47, 116}, "1c185f", 1.3205617E9f), bundle);
        }
        IntentSenderRequest intentSenderRequestBuild = new IntentSenderRequest.Builder(intentSender).setFillInIntent(intent).setFlags(i3, i2).build();
        this.mLaunchedFragments.addLast(new LaunchedFragmentInfo(fragment.mWho, i));
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{36, 68, 87, 80, 9, 83, 12, 66, 22}, "b667d6", 1.00519155E9f) + fragment + NPStringFog.decode(new byte[]{81, 16, 24, 8, 88, 66, 86, 0, 80, 13, 87, 80, 24, 2, 86, 68, 112, 89, 76, 6, 86, 16, 106, 82, 86, 7, 93, 22, 25, 81, 87, 17, 24, 22, 92, 68, 77, 15, 76, 68}, "8c8d97", 1091041430L));
        }
        this.mStartIntentSenderForResult.launch(intentSenderRequestBuild);
    }

    void moveFragmentToExpectedState(Fragment fragment) {
        if (!this.mFragmentStore.containsActiveFragment(fragment.mWho)) {
            if (isLoggingEnabled(3)) {
                Log.d(TAG, NPStringFog.decode(new byte[]{43, 2, 95, 86, 22, 88, 12, 2, 17, 84, 11, 71, 11, 11, 86, 25}, "be19d1", false, false) + fragment + NPStringFog.decode(new byte[]{69, 68, 93, 16, 16, 76, 4, 68, 87, 16}, "e020c8", -518429258L) + this.mCurState + NPStringFog.decode(new byte[]{17, 12, 11, 86, 84, 69, 11, 17, 69, 92, 66, 69, 12, 10, 17, 21, 80, 1, 6, 0, 1, 21, 69, 10, 66}, "bee51e", false, false) + this);
                return;
            }
            return;
        }
        moveToState(fragment);
        if (fragment.mView != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            if (fragment.mPostponedAlpha > 0.0f) {
                fragment.mView.setAlpha(fragment.mPostponedAlpha);
            }
            fragment.mPostponedAlpha = 0.0f;
            fragment.mIsNewlyAdded = false;
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(this.mHost.getContext(), fragment, true, fragment.getPopDirection());
            if (animationOrAnimatorLoadAnimation != null) {
                if (animationOrAnimatorLoadAnimation.animation != null) {
                    fragment.mView.startAnimation(animationOrAnimatorLoadAnimation.animation);
                } else {
                    animationOrAnimatorLoadAnimation.animator.setTarget(fragment.mView);
                    animationOrAnimatorLoadAnimation.animator.start();
                }
            }
        }
        if (fragment.mHiddenChanged) {
            completeShowHideFragment(fragment);
        }
    }

    void moveToState(int i, boolean z) {
        FragmentHostCallback<?> fragmentHostCallback;
        if (this.mHost == null && i != -1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 93, 19, 87, 90, 65, 12, 68, 90, 66, 64}, "e23695", true));
        }
        if (z || i != this.mCurState) {
            this.mCurState = i;
            if (USE_STATE_MANAGER) {
                this.mFragmentStore.moveToExpectedState();
            } else {
                Iterator<Fragment> it = this.mFragmentStore.getFragments().iterator();
                while (it.hasNext()) {
                    moveFragmentToExpectedState(it.next());
                }
                for (FragmentStateManager fragmentStateManager : this.mFragmentStore.getActiveFragmentStateManagers()) {
                    Fragment fragment = fragmentStateManager.getFragment();
                    if (!fragment.mIsNewlyAdded) {
                        moveFragmentToExpectedState(fragment);
                    }
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        this.mFragmentStore.makeInactive(fragmentStateManager);
                    }
                }
            }
            startPendingDeferredFragments();
            if (this.mNeedMenuInvalidate && (fragmentHostCallback = this.mHost) != null && this.mCurState == 7) {
                fragmentHostCallback.onSupportInvalidateOptionsMenu();
                this.mNeedMenuInvalidate = false;
            }
        }
    }

    void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void moveToState(androidx.fragment.app.Fragment r12, int r13) {
        /*
            Method dump skipped, instruction units count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.moveToState(androidx.fragment.app.Fragment, int):void");
    }

    void noteStateNotSaved() {
        if (this.mHost == null) {
            return;
        }
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.setIsStateSaved(false);
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    void onContainerAvailable(FragmentContainerView fragmentContainerView) {
        for (FragmentStateManager fragmentStateManager : this.mFragmentStore.getActiveFragmentStateManagers()) {
            Fragment fragment = fragmentStateManager.getFragment();
            if (fragment.mContainerId == fragmentContainerView.getId() && fragment.mView != null && fragment.mView.getParent() == null) {
                fragment.mContainer = fragmentContainerView;
                fragmentStateManager.addViewToContainer();
            }
        }
    }

    @Deprecated
    public FragmentTransaction openTransaction() {
        return beginTransaction();
    }

    void performPendingDeferredStart(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.getFragment();
        if (fragment.mDeferStart) {
            if (this.mExecutingActions) {
                this.mHavePendingDeferredStart = true;
                return;
            }
            fragment.mDeferStart = false;
            if (USE_STATE_MANAGER) {
                fragmentStateManager.moveToExpectedState();
            } else {
                moveToState(fragment);
            }
        }
    }

    public void popBackStack() {
        enqueueAction(new PopBackStackState(this, null, -1, 0), false);
    }

    public void popBackStack(int i, int i2) {
        if (i >= 0) {
            enqueueAction(new PopBackStackState(this, null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{119, 83, 83, 20, 15, 87, 15, 18}, "5274f3", false, false) + i);
    }

    public void popBackStack(String str, int i) {
        enqueueAction(new PopBackStackState(this, str, -1, i), false);
    }

    public boolean popBackStackImmediate() {
        return popBackStackImmediate(null, -1, 0);
    }

    public boolean popBackStackImmediate(int i, int i2) {
        if (i >= 0) {
            return popBackStackImmediate(null, i, i2);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{32, 80, 2, 20, 89, 83, 88, 17}, "b1f407", 1.0806163E9f) + i);
    }

    public boolean popBackStackImmediate(String str, int i) {
        return popBackStackImmediate(str, -1, i);
    }

    boolean popBackStackState(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        ArrayList<BackStackRecord> arrayList3 = this.mBackStack;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.mBackStack.remove(size));
            arrayList2.add(true);
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    BackStackRecord backStackRecord = this.mBackStack.get(size2);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i >= 0 && i == backStackRecord.mIndex)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        BackStackRecord backStackRecord2 = this.mBackStack.get(size2);
                        if ((str == null || !str.equals(backStackRecord2.getName())) && (i < 0 || i != backStackRecord2.mIndex)) {
                            break;
                        }
                        size2--;
                    }
                }
                i3 = size2;
            }
            if (i3 == this.mBackStack.size() - 1) {
                return false;
            }
            for (int size3 = this.mBackStack.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.mBackStack.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            throwException(new IllegalStateException(NPStringFog.decode(new byte[]{32, 23, 88, 85, 85, 82, 8, 17, 25}, "fe9287", 1.6013201E9d) + fragment + NPStringFog.decode(new byte[]{68, 15, 17, 65, 89, 90, 16, 70, 1, 20, 69, 71, 1, 8, 22, 13, 78, 21, 13, 8, 66, 21, 95, 80, 68, 32, 16, 0, 80, 88, 1, 8, 22, 44, 86, 91, 5, 1, 7, 19}, "dfba75", false)));
        }
        bundle.putString(str, fragment.mWho);
    }

    public void registerFragmentLifecycleCallbacks(FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        this.mLifecycleCallbacksDispatcher.registerFragmentLifecycleCallbacks(fragmentLifecycleCallbacks, z);
    }

    void removeCancellationSignal(Fragment fragment, CancellationSignal cancellationSignal) {
        HashSet<CancellationSignal> hashSet = this.mExitAnimationCancellationSignals.get(fragment);
        if (hashSet != null && hashSet.remove(cancellationSignal) && hashSet.isEmpty()) {
            this.mExitAnimationCancellationSignals.remove(fragment);
            if (fragment.mState < 5) {
                destroyFragmentView(fragment);
                moveToState(fragment);
            }
        }
    }

    void removeFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{65, 82, 92, 95, 70, 83, 9, 23}, "371006", false) + fragment + NPStringFog.decode(new byte[]{65, 86, 0, 74, 23, 91, 15, 95, 88}, "a8e9c2", -1978693280L) + fragment.mBackStackNesting);
        }
        boolean zIsInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!zIsInBackStack)) {
            this.mFragmentStore.removeFragment(fragment);
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mRemoving = true;
            setVisibleRemovingFragment(fragment);
        }
    }

    public void removeFragmentOnAttachListener(FragmentOnAttachListener fragmentOnAttachListener) {
        this.mOnAttachListeners.remove(fragmentOnAttachListener);
    }

    public void removeOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        ArrayList<OnBackStackChangedListener> arrayList = this.mBackStackChangeListeners;
        if (arrayList != null) {
            arrayList.remove(onBackStackChangedListener);
        }
    }

    void removeRetainedFragment(Fragment fragment) {
        this.mNonConfig.removeRetainedFragment(fragment);
    }

    void restoreAllState(Parcelable parcelable, FragmentManagerNonConfig fragmentManagerNonConfig) {
        if (this.mHost instanceof ViewModelStoreOwner) {
            throwException(new IllegalStateException(NPStringFog.decode(new byte[]{111, 11, 16, 22, 90, 67, 69, 16, 69, 67, 68, 83, 22, 22, 0, 69, 67, 89, 68, 1, 54, 87, 65, 83, 101, 16, 4, 66, 82, 22, 65, 12, 0, 88, 23, 79, 89, 17, 23, 22, 113, 68, 87, 3, 8, 83, 89, 66, 126, 11, 22, 66, 116, 87, 90, 8, 7, 87, 84, 93, 22, 13, 8, 70, 91, 83, 91, 1, 11, 66, 68, 22, 96, 13, 0, 65, 122, 89, 82, 1, 9, 101, 67, 89, 68, 1, 42, 65, 89, 83, 68}, "6de676", true, true)));
        }
        this.mNonConfig.restoreFromSnapshot(fragmentManagerNonConfig);
        restoreSaveState(parcelable);
    }

    void restoreSaveState(Parcelable parcelable) {
        FragmentStateManager fragmentStateManager;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.mActive != null) {
            this.mFragmentStore.resetActiveFragments();
            for (FragmentState fragmentState : fragmentManagerState.mActive) {
                if (fragmentState != null) {
                    Fragment fragmentFindRetainedFragmentByWho = this.mNonConfig.findRetainedFragmentByWho(fragmentState.mWho);
                    if (fragmentFindRetainedFragmentByWho != null) {
                        if (isLoggingEnabled(2)) {
                            Log.v(TAG, NPStringFog.decode(new byte[]{23, 4, 22, 23, 93, 20, 0, 50, 4, 21, 87, 53, 17, 0, 17, 6, 8, 70, 23, 4, 72, 2, 70, 18, 4, 2, 13, 10, 92, 1, 69, 19, 0, 23, 83, 15, 11, 4, 1, 67}, "eaec2f", 8760) + fragmentFindRetainedFragmentByWho);
                        }
                        fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, fragmentFindRetainedFragmentByWho, fragmentState);
                    } else {
                        fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, this.mHost.getContext().getClassLoader(), getFragmentFactory(), fragmentState);
                    }
                    Fragment fragment = fragmentStateManager.getFragment();
                    fragment.mFragmentManager = this;
                    if (isLoggingEnabled(2)) {
                        Log.v(TAG, NPStringFog.decode(new byte[]{69, 84, 21, 71, 95, 16, 82, 98, 7, 69, 85, 49, 67, 80, 18, 86, 10, 66, 86, 82, 18, 90, 70, 7, 23, 25}, "71f30b", 1193059051L) + fragment.mWho + NPStringFog.decode(new byte[]{27, 2, 68}, "28de8a", false, false) + fragment);
                    }
                    fragmentStateManager.restoreState(this.mHost.getContext().getClassLoader());
                    this.mFragmentStore.makeActive(fragmentStateManager);
                    fragmentStateManager.setFragmentManagerState(this.mCurState);
                }
            }
            for (Fragment fragment2 : this.mNonConfig.getRetainedFragments()) {
                if (!this.mFragmentStore.containsActiveFragment(fragment2.mWho)) {
                    if (isLoggingEnabled(2)) {
                        Log.v(TAG, NPStringFog.decode(new byte[]{115, 10, 75, 82, 89, 74, 83, 10, 86, 86, 24, 74, 82, 23, 89, 88, 86, 93, 83, 67, 126, 67, 89, 95, 90, 6, 86, 69, 24}, "7c8188", false) + fragment2 + NPStringFog.decode(new byte[]{18, 71, 91, 7, 23, 24, 69, 82, 64, 70, 13, 87, 70, 19, 85, 9, 22, 86, 86, 19, 90, 8, 67, 76, 90, 86, 19, 21, 6, 76, 18, 92, 85, 70, 2, 91, 70, 90, 69, 3, 67, 126, 64, 82, 84, 11, 6, 86, 70, 64, 19}, "233fc8", -10118857L) + fragmentManagerState.mActive);
                    }
                    this.mNonConfig.removeRetainedFragment(fragment2);
                    fragment2.mFragmentManager = this;
                    FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, fragment2);
                    fragmentStateManager2.setFragmentManagerState(1);
                    fragmentStateManager2.moveToExpectedState();
                    fragment2.mRemoving = true;
                    fragmentStateManager2.moveToExpectedState();
                }
            }
            this.mFragmentStore.restoreAddedFragments(fragmentManagerState.mAdded);
            if (fragmentManagerState.mBackStack != null) {
                this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
                for (int i = 0; i < fragmentManagerState.mBackStack.length; i++) {
                    BackStackRecord backStackRecordInstantiate = fragmentManagerState.mBackStack[i].instantiate(this);
                    if (isLoggingEnabled(2)) {
                        Log.v(TAG, NPStringFog.decode(new byte[]{23, 80, 18, 70, 13, 23, 0, 116, 13, 94, 49, 17, 4, 65, 4, 8, 66, 7, 4, 86, 10, 18, 17, 17, 4, 86, 10, 18, 65}, "e5a2be", 1.8018058E9f) + i + NPStringFog.decode(new byte[]{65, 16, 95, 88, 1, 3, 25, 24}, "a866ef", -5.85187647E8d) + backStackRecordInstantiate.mIndex + NPStringFog.decode(new byte[]{25, 11, 24}, "018e19", -1.337375E8f) + backStackRecordInstantiate);
                        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
                        backStackRecordInstantiate.dump("  ", printWriter, false);
                        printWriter.close();
                    }
                    this.mBackStack.add(backStackRecordInstantiate);
                }
            } else {
                this.mBackStack = null;
            }
            this.mBackStackIndex.set(fragmentManagerState.mBackStackIndex);
            if (fragmentManagerState.mPrimaryNavActiveWho != null) {
                Fragment fragmentFindActiveFragment = findActiveFragment(fragmentManagerState.mPrimaryNavActiveWho);
                this.mPrimaryNav = fragmentFindActiveFragment;
                dispatchParentPrimaryNavigationFragmentChanged(fragmentFindActiveFragment);
            }
            ArrayList<String> arrayList = fragmentManagerState.mResultKeys;
            if (arrayList != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    Bundle bundle = fragmentManagerState.mResults.get(i2);
                    bundle.setClassLoader(this.mHost.getContext().getClassLoader());
                    this.mResults.put(arrayList.get(i2), bundle);
                }
            }
            this.mLaunchedFragments = new ArrayDeque<>(fragmentManagerState.mLaunchedFragments);
        }
    }

    @Deprecated
    FragmentManagerNonConfig retainNonConfig() {
        if (this.mHost instanceof ViewModelStoreOwner) {
            throwException(new IllegalStateException(NPStringFog.decode(new byte[]{110, 94, 23, 70, 84, 86, 89, 95, 13, 18, 23, 66, 68, 84, 66, 20, 82, 67, 86, 88, 12, 40, 88, 89, 116, 94, 12, 0, 94, 80, 23, 70, 10, 3, 89, 23, 78, 94, 23, 20, 23, 113, 69, 80, 5, 11, 82, 89, 67, 121, 13, 21, 67, 116, 86, 93, 14, 4, 86, 84, 92, 17, 11, 11, 71, 91, 82, 92, 7, 8, 67, 68, 23, 103, 11, 3, 64, 122, 88, 85, 7, 10, 100, 67, 88, 67, 7, 41, 64, 89, 82, 67, 76}, "71bf77", 1.805322107E9d)));
        }
        return this.mNonConfig.getSnapshot();
    }

    Parcelable saveAllState() {
        int size;
        BackStackState[] backStackStateArr = null;
        forcePostponedTransactions();
        endAnimatingAwayFragments();
        execPendingActions(true);
        this.mStateSaved = true;
        this.mNonConfig.setIsStateSaved(true);
        ArrayList<FragmentState> arrayListSaveActiveFragments = this.mFragmentStore.saveActiveFragments();
        if (arrayListSaveActiveFragments.isEmpty()) {
            if (!isLoggingEnabled(2)) {
                return null;
            }
            Log.v(TAG, NPStringFog.decode(new byte[]{64, 89, 21, 92, 115, 84, 95, 107, 23, 88, 70, 93, 9, 24, 13, 86, 18, 94, 65, 89, 4, 84, 87, 86, 71, 75, 66}, "38c928", true));
            return null;
        }
        ArrayList<String> arrayListSaveAddedFragments = this.mFragmentStore.saveAddedFragments();
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            BackStackState[] backStackStateArr2 = new BackStackState[size];
            for (int i = 0; i < size; i++) {
                backStackStateArr2[i] = new BackStackState(this.mBackStack.get(i));
                if (isLoggingEnabled(2)) {
                    Log.v(TAG, NPStringFog.decode(new byte[]{75, 2, 68, 3, 35, 8, 84, 48, 70, 7, 22, 1, 2, 67, 83, 2, 6, 13, 86, 4, 18, 4, 3, 7, 83, 67, 65, 18, 3, 7, 83, 67, 17}, "8c2fbd", 5945) + i + NPStringFog.decode(new byte[]{91, 68}, "ad8464", true) + this.mBackStack.get(i));
                }
            }
            backStackStateArr = backStackStateArr2;
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = arrayListSaveActiveFragments;
        fragmentManagerState.mAdded = arrayListSaveAddedFragments;
        fragmentManagerState.mBackStack = backStackStateArr;
        fragmentManagerState.mBackStackIndex = this.mBackStackIndex.get();
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null) {
            fragmentManagerState.mPrimaryNavActiveWho = fragment.mWho;
        }
        fragmentManagerState.mResultKeys.addAll(this.mResults.keySet());
        fragmentManagerState.mResults.addAll(this.mResults.values());
        fragmentManagerState.mLaunchedFragments = new ArrayList<>(this.mLaunchedFragments);
        return fragmentManagerState;
    }

    public Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        FragmentStateManager fragmentStateManager = this.mFragmentStore.getFragmentStateManager(fragment.mWho);
        if (fragmentStateManager == null || !fragmentStateManager.getFragment().equals(fragment)) {
            throwException(new IllegalStateException(NPStringFog.decode(new byte[]{35, 64, 88, 3, 91, 84, 11, 70, 25}, "e29d61", -1078540336L) + fragment + NPStringFog.decode(new byte[]{22, 89, 71, 22, 92, 95, 66, 16, 87, 67, 64, 66, 83, 94, 64, 90, 75, 16, 95, 94, 20, 66, 90, 85, 22, 118, 70, 87, 85, 93, 83, 94, 64, 123, 83, 94, 87, 87, 81, 68}, "604620", false, true)));
        }
        return fragmentStateManager.saveInstanceState();
    }

    void scheduleCommit() {
        synchronized (this.mPendingActions) {
            ArrayList<StartEnterTransitionListener> arrayList = this.mPostponedTransactions;
            boolean z = (arrayList == null || arrayList.isEmpty()) ? false : true;
            boolean z2 = this.mPendingActions.size() == 1;
            if (z || z2) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
                updateOnBackPressedCallbackEnabled();
            }
        }
    }

    void setExitAnimationOrder(Fragment fragment, boolean z) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer == null || !(fragmentContainer instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) fragmentContainer).setDrawDisappearingViewsLast(!z);
    }

    public void setFragmentFactory(FragmentFactory fragmentFactory) {
        this.mFragmentFactory = fragmentFactory;
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void setFragmentResult(String str, Bundle bundle) {
        LifecycleAwareResultListener lifecycleAwareResultListener = this.mResultListeners.get(str);
        if (lifecycleAwareResultListener == null || !lifecycleAwareResultListener.isAtLeast(Lifecycle.State.STARTED)) {
            this.mResults.put(str, bundle);
        } else {
            lifecycleAwareResultListener.onFragmentResult(str, bundle);
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void setFragmentResultListener(String str, LifecycleOwner lifecycleOwner, FragmentResultListener fragmentResultListener) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver(this, str, fragmentResultListener, lifecycle) { // from class: androidx.fragment.app.FragmentManager.6
            final FragmentManager this$0;
            final Lifecycle val$lifecycle;
            final FragmentResultListener val$listener;
            final String val$requestKey;

            {
                this.this$0 = this;
                this.val$requestKey = str;
                this.val$listener = fragmentResultListener;
                this.val$lifecycle = lifecycle;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                Bundle bundle;
                if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) this.this$0.mResults.get(this.val$requestKey)) != null) {
                    this.val$listener.onFragmentResult(this.val$requestKey, bundle);
                    this.this$0.clearFragmentResult(this.val$requestKey);
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    this.val$lifecycle.removeObserver(this);
                    this.this$0.mResultListeners.remove(this.val$requestKey);
                }
            }
        };
        lifecycle.addObserver(lifecycleEventObserver);
        LifecycleAwareResultListener lifecycleAwareResultListenerPut = this.mResultListeners.put(str, new LifecycleAwareResultListener(lifecycle, fragmentResultListener, lifecycleEventObserver));
        if (lifecycleAwareResultListenerPut != null) {
            lifecycleAwareResultListenerPut.removeObserver();
        }
    }

    void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(findActiveFragment(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 68, 80, 1, 88, 93, 90, 66, 17}, "461f58", 29532) + fragment + NPStringFog.decode(new byte[]{19, 88, 75, 20, 89, 93, 71, 17, 89, 90, 23, 83, 80, 69, 81, 66, 82, 18, 85, 67, 89, 83, 90, 87, 93, 69, 24, 91, 81, 18, 117, 67, 89, 83, 90, 87, 93, 69, 117, 85, 89, 83, 84, 84, 74, 20}, "318472", 1.0021261E8f) + this);
    }

    void setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment == null || (fragment.equals(findActiveFragment(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.mPrimaryNav;
            this.mPrimaryNav = fragment;
            dispatchParentPrimaryNavigationFragmentChanged(fragment2);
            dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
            return;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 67, 4, 82, 85, 0, 15, 69, 69}, "a1e58e", 607024356L) + fragment + NPStringFog.decode(new byte[]{69, 94, 17, 24, 94, 88, 17, 23, 3, 86, 16, 86, 6, 67, 11, 78, 85, 23, 3, 69, 3, 95, 93, 82, 11, 67, 66, 87, 86, 23, 35, 69, 3, 95, 93, 82, 11, 67, 47, 89, 94, 86, 2, 82, 16, 24}, "e7b807", true) + this);
    }

    void setSpecialEffectsControllerFactory(SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        this.mSpecialEffectsControllerFactory = specialEffectsControllerFactory;
    }

    void showFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{71, 92, 95, 20, 89, 70}, "440ccf", false, true) + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(NPStringFog.decode(new byte[]{36, 66, 81, 94, 92, 93, 12, 68, 125, 88, 95, 89, 5, 85, 66, 66}, "b00918", true));
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(NPStringFog.decode(new byte[]{70, 10, 10, 18}, "fcd294", 1617));
        Fragment fragment = this.mParent;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append(NPStringFog.decode(new byte[]{31}, "d8e9c9", false, false));
            sb.append(Integer.toHexString(System.identityHashCode(this.mParent)));
            sb.append(NPStringFog.decode(new byte[]{79}, "2df8be", -2.111163697E9d));
        } else {
            FragmentHostCallback<?> fragmentHostCallback = this.mHost;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append(NPStringFog.decode(new byte[]{25}, "be4184", -6.895548E8f));
                sb.append(Integer.toHexString(System.identityHashCode(this.mHost)));
                sb.append(NPStringFog.decode(new byte[]{75}, "6f7c38", 30357));
            } else {
                sb.append(NPStringFog.decode(new byte[]{93, 70, 9, 13}, "33eacf", -1.358174852E9d));
            }
        }
        sb.append(NPStringFog.decode(new byte[]{74, 28}, "7aefc4", -2.2538122E7d));
        return sb.toString();
    }

    public void unregisterFragmentLifecycleCallbacks(FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        this.mLifecycleCallbacksDispatcher.unregisterFragmentLifecycleCallbacks(fragmentLifecycleCallbacks);
    }
}
