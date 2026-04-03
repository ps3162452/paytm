package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;

/* JADX INFO: loaded from: classes28.dex */
public class ProcessLifecycleOwner implements LifecycleOwner {
    static final long TIMEOUT_MS = 700;
    private static final ProcessLifecycleOwner sInstance = new ProcessLifecycleOwner();
    private Handler mHandler;
    private int mStartedCounter = 0;
    private int mResumedCounter = 0;
    private boolean mPauseSent = true;
    private boolean mStopSent = true;
    private final LifecycleRegistry mRegistry = new LifecycleRegistry(this);
    private Runnable mDelayedPauseRunnable = new Runnable(this) { // from class: androidx.lifecycle.ProcessLifecycleOwner.1
        final ProcessLifecycleOwner this$0;

        {
            this.this$0 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.dispatchPauseIfNeeded();
            this.this$0.dispatchStopIfNeeded();
        }
    };
    ReportFragment.ActivityInitializationListener mInitializationListener = new ReportFragment.ActivityInitializationListener(this) { // from class: androidx.lifecycle.ProcessLifecycleOwner.2
        final ProcessLifecycleOwner this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onCreate() {
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onResume() {
            this.this$0.activityResumed();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onStart() {
            this.this$0.activityStarted();
        }
    };

    /* JADX INFO: renamed from: androidx.lifecycle.ProcessLifecycleOwner$3, reason: invalid class name */
    class AnonymousClass3 extends EmptyActivityLifecycleCallbacks {
        final ProcessLifecycleOwner this$0;

        AnonymousClass3(ProcessLifecycleOwner processLifecycleOwner) {
            this.this$0 = processLifecycleOwner;
        }

        @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                ReportFragment.get(activity).setProcessListener(this.this$0.mInitializationListener);
            }
        }

        @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            this.this$0.activityPaused();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks(this) { // from class: androidx.lifecycle.ProcessLifecycleOwner.3.1
                final AnonymousClass3 this$1;

                {
                    this.this$1 = this;
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPostResumed(Activity activity2) {
                    this.this$1.this$0.activityResumed();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPostStarted(Activity activity2) {
                    this.this$1.this$0.activityStarted();
                }
            });
        }

        @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            this.this$0.activityStopped();
        }
    }

    private ProcessLifecycleOwner() {
    }

    public static LifecycleOwner get() {
        return sInstance;
    }

    static void init(Context context) {
        sInstance.attach(context);
    }

    void activityPaused() {
        int i = this.mResumedCounter - 1;
        this.mResumedCounter = i;
        if (i == 0) {
            this.mHandler.postDelayed(this.mDelayedPauseRunnable, TIMEOUT_MS);
        }
    }

    void activityResumed() {
        int i = this.mResumedCounter + 1;
        this.mResumedCounter = i;
        if (i == 1) {
            if (!this.mPauseSent) {
                this.mHandler.removeCallbacks(this.mDelayedPauseRunnable);
            } else {
                this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
                this.mPauseSent = false;
            }
        }
    }

    void activityStarted() {
        int i = this.mStartedCounter + 1;
        this.mStartedCounter = i;
        if (i == 1 && this.mStopSent) {
            this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
            this.mStopSent = false;
        }
    }

    void activityStopped() {
        this.mStartedCounter--;
        dispatchStopIfNeeded();
    }

    void attach(Context context) {
        this.mHandler = new Handler();
        this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new AnonymousClass3(this));
    }

    void dispatchPauseIfNeeded() {
        if (this.mResumedCounter == 0) {
            this.mPauseSent = true;
            this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
    }

    void dispatchStopIfNeeded() {
        if (this.mStartedCounter == 0 && this.mPauseSent) {
            this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
            this.mStopSent = true;
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.mRegistry;
    }
}
