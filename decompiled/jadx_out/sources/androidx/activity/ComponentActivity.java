package androidx.activity;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.contextaware.ContextAware;
import androidx.activity.contextaware.ContextAwareHelper;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import androidx.tracing.Trace;
import java.util.concurrent.atomic.AtomicInteger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes3.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements ContextAware, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, OnBackPressedDispatcherOwner, ActivityResultRegistryOwner, ActivityResultCaller {
    private static final String ACTIVITY_RESULT_TAG = NPStringFog.decode(new byte[]{3, 95, 87, 16, 94, 80, 6, 11, 64, 23, 65, 73, 13, 67, 71, 88, 80, 90, 22, 88, 69, 11, 69, 64, 79, 67, 86, 17, 68, 85, 22}, "b13b19", 19760);
    private final ActivityResultRegistry mActivityResultRegistry;
    private int mContentLayoutId;
    final ContextAwareHelper mContextAwareHelper;
    private ViewModelProvider.Factory mDefaultFactory;
    private final LifecycleRegistry mLifecycleRegistry;
    private final AtomicInteger mNextLocalRequestCode;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    final SavedStateRegistryController mSavedStateRegistryController;
    private ViewModelStore mViewModelStore;

    static class Api19Impl {
        private Api19Impl() {
        }

        static void cancelPendingInputEvents(View view) {
            view.cancelPendingInputEvents();
        }
    }

    static final class NonConfigurationInstances {
        Object custom;
        ViewModelStore viewModelStore;

        NonConfigurationInstances() {
        }
    }

    public ComponentActivity() {
        this.mContextAwareHelper = new ContextAwareHelper();
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        this.mSavedStateRegistryController = SavedStateRegistryController.create(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable(this) { // from class: androidx.activity.ComponentActivity.1
            final ComponentActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    ComponentActivity.super.onBackPressed();
                } catch (IllegalStateException e) {
                    if (!TextUtils.equals(e.getMessage(), NPStringFog.decode(new byte[]{123, 88, 93, 20, 10, 89, 76, 25, 67, 81, 22, 80, 87, 75, 94, 20, 16, 94, 81, 74, 19, 85, 7, 66, 81, 86, 93, 20, 5, 80, 76, 92, 65, 20, 11, 88, 107, 88, 69, 81, 45, 88, 75, 77, 82, 90, 7, 83, 107, 77, 82, 64, 1}, "8934d6", 6.65025132E8d))) {
                        throw e;
                    }
                }
            }
        });
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new ActivityResultRegistry(this) { // from class: androidx.activity.ComponentActivity.2
            final ComponentActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultRegistry
            public <I, O> void onLaunch(int i, ActivityResultContract<I, O> activityResultContract, I i2, ActivityOptionsCompat activityOptionsCompat) {
                Bundle bundle;
                ComponentActivity componentActivity = this.this$0;
                ActivityResultContract.SynchronousResult<O> synchronousResult = activityResultContract.getSynchronousResult(componentActivity, i2);
                if (synchronousResult != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable(this, i, synchronousResult) { // from class: androidx.activity.ComponentActivity.2.1
                        final AnonymousClass2 this$1;
                        final int val$requestCode;
                        final ActivityResultContract.SynchronousResult val$synchronousResult;

                        {
                            this.this$1 = this;
                            this.val$requestCode = i;
                            this.val$synchronousResult = synchronousResult;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            dispatchResult(this.val$requestCode, this.val$synchronousResult.getValue());
                        }
                    });
                    return;
                }
                Intent intentCreateIntent = activityResultContract.createIntent(componentActivity, i2);
                if (intentCreateIntent.getExtras() != null && intentCreateIntent.getExtras().getClassLoader() == null) {
                    intentCreateIntent.setExtrasClassLoader(componentActivity.getClassLoader());
                }
                if (intentCreateIntent.hasExtra(NPStringFog.decode(new byte[]{87, 92, 1, 66, 10, 15, 82, 74, 75, 81, 6, 18, 95, 68, 12, 68, 28, 72, 68, 87, 22, 69, 9, 18, 24, 81, 10, 94, 17, 20, 87, 81, 17, 30, 0, 30, 66, 64, 4, 30, 36, 37, 98, 123, 51, 121, 49, 63, 105, 125, 53, 100, 44, 41, 120, 97, 58, 114, 48, 40, 114, 126, 32}, "62e0ef", false))) {
                    bundle = intentCreateIntent.getBundleExtra(NPStringFog.decode(new byte[]{86, 11, 86, 69, 12, 81, 83, 29, 28, 86, 0, 76, 94, 19, 91, 67, 26, 22, 69, 0, 65, 66, 15, 76, 25, 6, 93, 89, 23, 74, 86, 6, 70, 25, 6, 64, 67, 23, 83, 25, 34, 123, 99, 44, 100, 126, 55, 97, 104, 42, 98, 99, 42, 119, 121, 54, 109, 117, 54, 118, 115, 41, 119}, "7e27c8", -29039));
                    intentCreateIntent.removeExtra(NPStringFog.decode(new byte[]{3, 86, 2, 17, 11, 11, 6, 64, 72, 2, 7, 22, 11, 78, 15, 23, 29, 76, 16, 93, 21, 22, 8, 22, 76, 91, 9, 13, 16, 16, 3, 91, 18, 77, 1, 26, 22, 74, 7, 77, 37, 33, 54, 113, 48, 42, 48, 59, 61, 119, 54, 55, 45, 45, 44, 107, 57, 33, 49, 44, 38, 116, 35}, "b8fcdb", -8.132812E8f));
                } else {
                    bundle = activityOptionsCompat != null ? activityOptionsCompat.toBundle() : null;
                }
                if (NPStringFog.decode(new byte[]{83, 95, 5, 74, 93, 89, 86, 73, 79, 89, 81, 68, 91, 71, 8, 76, 75, 30, 64, 84, 18, 77, 94, 68, 28, 82, 14, 86, 70, 66, 83, 82, 21, 22, 83, 83, 70, 88, 14, 86, 28, 98, 119, 96, 52, 125, 97, 100, 109, 97, 36, 106, 127, 121, 97, 98, 40, 119, 124, 99}, "21a820", -31117).equals(intentCreateIntent.getAction())) {
                    String[] stringArrayExtra = intentCreateIntent.getStringArrayExtra(NPStringFog.decode(new byte[]{2, 12, 86, 22, 92, 12, 7, 26, 28, 5, 80, 17, 10, 20, 91, 16, 74, 75, 17, 7, 65, 17, 95, 17, 77, 1, 93, 10, 71, 23, 2, 1, 70, 74, 86, 29, 23, 16, 83, 74, 99, 32, 49, 47, 123, 55, 96, 44, 44, 44, 97}, "cb2d3e", 4.1007576E7f));
                    if (stringArrayExtra == null) {
                        stringArrayExtra = new String[0];
                    }
                    ActivityCompat.requestPermissions(componentActivity, stringArrayExtra, i);
                    return;
                }
                if (!NPStringFog.decode(new byte[]{4, 91, 7, 67, 14, 80, 1, 77, 77, 80, 2, 77, 12, 67, 10, 69, 24, 23, 23, 80, 16, 68, 13, 77, 75, 86, 12, 95, 21, 75, 4, 86, 23, 31, 0, 90, 17, 92, 12, 95, 79, 112, 43, 97, 38, 127, 53, 102, 54, 112, 45, 117, 36, 107, 58, 103, 38, 96, 52, 124, 54, 97}, "e5c1a9", 13558).equals(intentCreateIntent.getAction())) {
                    ActivityCompat.startActivityForResult(componentActivity, intentCreateIntent, i, bundle);
                    return;
                }
                IntentSenderRequest intentSenderRequest = (IntentSenderRequest) intentCreateIntent.getParcelableExtra(NPStringFog.decode(new byte[]{89, 89, 80, 19, 13, 94, 92, 79, 26, 0, 1, 67, 81, 65, 93, 21, 27, 25, 74, 82, 71, 20, 14, 67, 22, 84, 91, 15, 22, 69, 89, 84, 64, 79, 7, 79, 76, 69, 85, 79, 43, 121, 108, 114, 122, 53, 61, 100, 125, 121, 112, 36, 48, 104, 106, 114, 101, 52, 39, 100, 108}, "874ab7", false, false));
                try {
                } catch (IntentSender.SendIntentException e) {
                    e = e;
                }
                try {
                    ActivityCompat.startIntentSenderForResult(componentActivity, intentSenderRequest.getIntentSender(), i, intentSenderRequest.getFillInIntent(), intentSenderRequest.getFlagsMask(), intentSenderRequest.getFlagsValues(), 0, bundle);
                } catch (IntentSender.SendIntentException e2) {
                    e = e2;
                    new Handler(Looper.getMainLooper()).post(new Runnable(this, i, e) { // from class: androidx.activity.ComponentActivity.2.2
                        final AnonymousClass2 this$1;
                        final IntentSender.SendIntentException val$e;
                        final int val$requestCode;

                        {
                            this.this$1 = this;
                            this.val$requestCode = i;
                            this.val$e = e;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            dispatchResult(this.val$requestCode, 0, new Intent().setAction(NPStringFog.decode(new byte[]{88, 93, 81, 22, 9, 94, 93, 75, 27, 5, 5, 67, 80, 69, 92, 16, 31, 25, 75, 86, 70, 17, 10, 67, 23, 80, 90, 10, 18, 69, 88, 80, 65, 74, 7, 84, 77, 90, 90, 10, 72, 126, 119, 103, 112, 42, 50, 104, 106, 118, 123, 32, 35, 101, 102, 97, 112, 53, 51, 114, 106, 103}, "935df7", -6.3928755E8f)).putExtra(NPStringFog.decode(new byte[]{83, 89, 1, 17, 86, 90, 86, 79, 75, 2, 90, 71, 91, 65, 12, 23, 64, 29, 64, 82, 22, 22, 85, 71, 28, 84, 10, 13, 77, 65, 83, 84, 17, 77, 92, 75, 70, 69, 4, 77, 106, 118, 124, 115, 58, 42, 119, 103, 119, 121, 49, 60, 124, 107, 113, 114, 53, 55, 112, 124, 124}, "27ec93", -3.0832693E8d), this.val$e));
                        }
                    });
                }
            }
        };
        if (getLifecycle() == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 93, 23, 122, 94, 7, 81, 91, 26, 85, 91, 4, 28, 17, 67, 68, 82, 21, 65, 74, 13, 83, 83, 65, 90, 77, 15, 90, 23, 8, 90, 24, 32, 89, 90, 17, 91, 86, 6, 88, 67, 32, 87, 76, 10, 64, 94, 21, 77, 31, 16, 22, 84, 14, 90, 75, 23, 68, 66, 2, 64, 87, 17, 24, 23, 49, 88, 93, 2, 69, 82, 65, 89, 89, 8, 83, 23, 18, 65, 74, 6, 22, 78, 14, 65, 24, 2, 68, 82, 65, 88, 89, 25, 95, 91, 24, 20, 91, 12, 88, 68, 21, 70, 77, 0, 66, 94, 15, 83, 24, 26, 89, 66, 19, 20, 116, 10, 80, 82, 2, 77, 91, 15, 83, 23, 8, 90, 24, 23, 94, 82, 65, 82, 81, 17, 69, 67, 65, 87, 89, 15, 90, 23, 21, 91, 24, 4, 83, 67, 45, 93, 94, 6, 85, 78, 2, 88, 93, 75, 31, 23, 19, 85, 76, 11, 83, 69, 65, 64, 80, 2, 88, 23, 19, 81, 84, 26, 95, 89, 6, 20, 87, 13, 22, 81, 8, 81, 84, 7, 22, 94, 15, 93, 76, 10, 87, 91, 8, 78, 89, 23, 95, 88, 15, 26}, "48c67a", -1441));
        }
        if (Build.VERSION.SDK_INT >= 19) {
            getLifecycle().addObserver(new LifecycleEventObserver(this) { // from class: androidx.activity.ComponentActivity.3
                final ComponentActivity this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_STOP) {
                        Window window = this.this$0.getWindow();
                        View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                        if (viewPeekDecorView != null) {
                            Api19Impl.cancelPendingInputEvents(viewPeekDecorView);
                        }
                    }
                }
            });
        }
        getLifecycle().addObserver(new LifecycleEventObserver(this) { // from class: androidx.activity.ComponentActivity.4
            final ComponentActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    this.this$0.mContextAwareHelper.clearAvailableContext();
                    if (this.this$0.isChangingConfigurations()) {
                        return;
                    }
                    this.this$0.getViewModelStore().clear();
                }
            }
        });
        getLifecycle().addObserver(new LifecycleEventObserver(this) { // from class: androidx.activity.ComponentActivity.5
            final ComponentActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                this.this$0.ensureViewModelStore();
                this.this$0.getLifecycle().removeObserver(this);
            }
        });
        if (19 <= Build.VERSION.SDK_INT && Build.VERSION.SDK_INT <= 23) {
            getLifecycle().addObserver(new ImmLeaksCleaner(this));
        }
        getSavedStateRegistry().registerSavedStateProvider(NPStringFog.decode(new byte[]{89, 11, 2, 74, 92, 88, 92, 95, 21, 77, 67, 65, 87, 23, 18, 2, 82, 82, 76, 12, 16, 81, 71, 72, 21, 23, 3, 75, 70, 93, 76}, "8ef831", 1.4016095E9f), new SavedStateRegistry.SavedStateProvider(this) { // from class: androidx.activity.ComponentActivity$$ExternalSyntheticLambda1
            public final ComponentActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                return this.f$0.lambda$new$0$ComponentActivity();
            }
        });
        addOnContextAvailableListener(new OnContextAvailableListener(this) { // from class: androidx.activity.ComponentActivity$$ExternalSyntheticLambda0
            public final ComponentActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public final void onContextAvailable(Context context) {
                this.f$0.lambda$new$1$ComponentActivity(context);
            }
        });
    }

    public ComponentActivity(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private void initViewTreeOwners() {
        ViewTreeLifecycleOwner.set(getWindow().getDecorView(), this);
        ViewTreeViewModelStoreOwner.set(getWindow().getDecorView(), this);
        ViewTreeSavedStateRegistryOwner.set(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.activity.contextaware.ContextAware
    public final void addOnContextAvailableListener(OnContextAvailableListener onContextAvailableListener) {
        this.mContextAwareHelper.addOnContextAvailableListener(onContextAvailableListener);
    }

    void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
            if (nonConfigurationInstances != null) {
                this.mViewModelStore = nonConfigurationInstances.viewModelStore;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new ViewModelStore();
            }
        }
    }

    @Override // androidx.activity.result.ActivityResultRegistryOwner
    public final ActivityResultRegistry getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        if (getApplication() == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{107, 90, 77, 17, 24, 5, 81, 65, 81, 21, 81, 16, 75, 21, 81, 16, 24, 10, 93, 65, 24, 26, 93, 16, 18, 84, 76, 23, 89, 7, 90, 80, 92, 67, 76, 11, 18, 65, 80, 6, 24, 37, 66, 69, 84, 10, 91, 5, 70, 92, 87, 13, 24, 13, 92, 70, 76, 2, 86, 7, 87, 27, 24, 58, 87, 17, 18, 86, 89, 13, 31, 16, 18, 71, 93, 18, 77, 1, 65, 65, 24, 53, 81, 1, 69, 120, 87, 7, 93, 8, 18, 87, 93, 5, 87, 22, 87, 21, 87, 13, 123, 22, 87, 84, 76, 6, 24, 7, 83, 89, 84, 77}, "258c8d", -1830837484L));
        }
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new SavedStateViewModelFactory(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.custom;
        }
        return null;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{63, 89, 68, 66, 70, 3, 5, 66, 88, 70, 15, 22, 31, 22, 88, 67, 70, 12, 9, 66, 17, 73, 3, 22, 70, 87, 69, 68, 7, 1, 14, 83, 85, 16, 18, 13, 70, 66, 89, 85, 70, 35, 22, 70, 93, 89, 5, 3, 18, 95, 94, 94, 70, 11, 8, 69, 69, 81, 8, 1, 3, 24, 17, 105, 9, 23, 70, 85, 80, 94, 65, 22, 70, 68, 84, 65, 19, 7, 21, 66, 17, 102, 15, 7, 17, 123, 94, 84, 3, 14, 70, 84, 84, 86, 9, 16, 3, 22, 94, 94, 37, 16, 3, 87, 69, 85, 70, 1, 7, 90, 93, 30}, "f610fb", 13265));
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    public /* synthetic */ Bundle lambda$new$0$ComponentActivity() {
        Bundle bundle = new Bundle();
        this.mActivityResultRegistry.onSaveInstanceState(bundle);
        return bundle;
    }

    public /* synthetic */ void lambda$new$1$ComponentActivity(Context context) {
        Bundle bundleConsumeRestoredStateForKey = getSavedStateRegistry().consumeRestoredStateForKey(ACTIVITY_RESULT_TAG);
        if (bundleConsumeRestoredStateForKey != null) {
            this.mActivityResultRegistry.onRestoreInstanceState(bundleConsumeRestoredStateForKey);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.mActivityResultRegistry.dispatchResult(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.onBackPressed();
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.performRestore(bundle);
        this.mContextAwareHelper.dispatchOnContextAvailable(this);
        super.onCreate(bundle);
        ReportFragment.injectIfNeededIn(this);
        int i = this.mContentLayoutId;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.dispatchResult(i, -1, new Intent().putExtra(NPStringFog.decode(new byte[]{80, 11, 83, 75, 9, 81, 85, 29, 25, 88, 5, 76, 88, 19, 94, 77, 31, 22, 67, 0, 68, 76, 10, 76, 31, 6, 88, 87, 18, 74, 80, 6, 67, 23, 3, 64, 69, 23, 86, 23, 54, 125, 99, 40, 126, 106, 53, 113, 126, 43, 100}, "1e79f8", true), strArr).putExtra(NPStringFog.decode(new byte[]{84, 89, 5, 23, 89, 88, 81, 79, 79, 4, 85, 69, 92, 65, 8, 17, 79, 31, 71, 82, 18, 16, 90, 69, 27, 84, 14, 11, 66, 67, 84, 84, 21, 75, 83, 73, 65, 69, 0, 75, 102, 116, 103, 122, 40, 54, 101, 120, 122, 121, 62, 34, 100, 112, 123, 99, 62, 55, 115, 98, 96, 123, 53, 54}, "57ae61", 1441941946L), iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        ViewModelStore viewModelStore = this.mViewModelStore;
        if (viewModelStore == null && (nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance()) != null) {
            viewModelStore = nonConfigurationInstances.viewModelStore;
        }
        if (viewModelStore == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances2 = new NonConfigurationInstances();
        nonConfigurationInstances2.custom = objOnRetainCustomNonConfigurationInstance;
        nonConfigurationInstances2.viewModelStore = viewModelStore;
        return nonConfigurationInstances2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Lifecycle lifecycle = getLifecycle();
        if (lifecycle instanceof LifecycleRegistry) {
            ((LifecycleRegistry) lifecycle).setCurrentState(Lifecycle.State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.performSave(bundle);
    }

    @Override // androidx.activity.contextaware.ContextAware
    public Context peekAvailableContext() {
        return this.mContextAwareHelper.peekAvailableContext();
    }

    @Override // androidx.activity.result.ActivityResultCaller
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> activityResultContract, ActivityResultCallback<O> activityResultCallback) {
        return registerForActivityResult(activityResultContract, this.mActivityResultRegistry, activityResultCallback);
    }

    @Override // androidx.activity.result.ActivityResultCaller
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> activityResultContract, ActivityResultRegistry activityResultRegistry, ActivityResultCallback<O> activityResultCallback) {
        return activityResultRegistry.register(NPStringFog.decode(new byte[]{89, 0, 70, 10, 16, 80, 76, 26, 109, 17, 23, 26}, "8c2cf9", true) + this.mNextLocalRequestCode.getAndIncrement(), this, activityResultContract, activityResultCallback);
    }

    @Override // androidx.activity.contextaware.ContextAware
    public final void removeOnContextAvailableListener(OnContextAvailableListener onContextAvailableListener) {
        this.mContextAwareHelper.removeOnContextAvailableListener(onContextAvailableListener);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (Trace.isEnabled()) {
                Trace.beginSection(NPStringFog.decode(new byte[]{67, 84, 71, 88, 68, 68, 119, 68, 91, 91, 79, 116, 67, 80, 64, 89, 30, 25, 17, 87, 88, 69, 22, 115, 94, 92, 71, 88, 88, 85, 95, 69, 118, 84, 66, 89, 71, 88, 67, 78}, "117760", false));
            }
            if (Build.VERSION.SDK_INT > 19) {
                super.reportFullyDrawn();
            } else if (Build.VERSION.SDK_INT == 19 && ContextCompat.checkSelfPermission(this, NPStringFog.decode(new byte[]{82, 11, 93, 64, 92, 80, 87, 75, 73, 87, 65, 84, 90, 22, 74, 91, 92, 87, 29, 48, 105, 118, 114, 109, 118, 58, 125, 119, 101, 112, 112, 32, 102, 97, 103, 120, 103, 54}, "3e9239", false, false)) == 0) {
                super.reportFullyDrawn();
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
