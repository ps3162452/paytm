package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import n.NPStringFog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ActivityResultRegistry {
    private static final int INITIAL_REQUEST_CODE_VALUE = 65536;
    private static final String KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS = NPStringFog.decode(new byte[]{121, 125, 108, 103, 32, 42, 127, 104, 122, 118, 38, 43, 102, 103, 116, 123, 55, 44, 100, 113, 97, 97, 60, 41, 115, 109, 123, 123, 43, 32, 118, 103, 126, 125, 58, 54}, "2858ce", -1284221052L);
    private static final String KEY_COMPONENT_ACTIVITY_PENDING_RESULTS = NPStringFog.decode(new byte[]{127, 32, 110, 106, 116, 42, 121, 53, 120, 123, 114, 43, 96, 58, 118, 118, 99, 44, 98, 44, 99, 108, 104, 53, 113, 43, 115, 124, 121, 34, 107, 55, 114, 102, 98, 41, 96}, "4e757e", true, true);
    private static final String KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT = NPStringFog.decode(new byte[]{115, 125, 56, 104, 114, 44, 117, 104, 46, 121, 116, 45, 108, 103, 32, 116, 101, 42, 110, 113, 53, 110, 110, 49, 121, 118, 37, 120, 124, 60, 119, 122, 43, 114, 114, 55}, "88a71c", true, false);
    private static final String KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS = NPStringFog.decode(new byte[]{45, 118, 104, 103, 34, 42, 43, 99, 126, 118, 36, 43, 50, 108, 112, 123, 53, 44, 48, 122, 101, 97, 62, 55, 35, 116, 120, 107, 53, 32, 52, 118, 117, 103, 42, 32, 63, 96}, "f318ae", 219);
    private static final String KEY_COMPONENT_ACTIVITY_REGISTERED_RCS = NPStringFog.decode(new byte[]{123, 39, 108, 107, 114, 46, 125, 50, 122, 122, 116, 47, 100, 61, 116, 119, 101, 40, 102, 43, 97, 109, 110, 51, 117, 37, 124, 103, 101, 36, 98, 39, 113, 107, 99, 34, 99}, "0b541a", false, true);
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{39, 87, 21, 94, 16, 94, 18, 77, 51, 82, 21, 66, 10, 64, 51, 82, 1, 94, 21, 64, 19, 78}, "f4a7f7", -6.323438E8f);
    private Random mRandom = new Random();
    private final Map<Integer, String> mRcToKey = new HashMap();
    final Map<String, Integer> mKeyToRc = new HashMap();
    private final Map<String, LifecycleContainer> mKeyToLifecycleContainers = new HashMap();
    ArrayList<String> mLaunchedKeys = new ArrayList<>();
    final transient Map<String, CallbackAndContract<?>> mKeyToCallback = new HashMap();
    final Map<String, Object> mParsedPendingResults = new HashMap();
    final Bundle mPendingResults = new Bundle();

    private static class CallbackAndContract<O> {
        final ActivityResultCallback<O> mCallback;
        final ActivityResultContract<?, O> mContract;

        CallbackAndContract(ActivityResultCallback<O> activityResultCallback, ActivityResultContract<?, O> activityResultContract) {
            this.mCallback = activityResultCallback;
            this.mContract = activityResultContract;
        }
    }

    private static class LifecycleContainer {
        final Lifecycle mLifecycle;
        private final ArrayList<LifecycleEventObserver> mObservers = new ArrayList<>();

        LifecycleContainer(Lifecycle lifecycle) {
            this.mLifecycle = lifecycle;
        }

        void addObserver(LifecycleEventObserver lifecycleEventObserver) {
            this.mLifecycle.addObserver(lifecycleEventObserver);
            this.mObservers.add(lifecycleEventObserver);
        }

        void clearObservers() {
            Iterator<LifecycleEventObserver> it = this.mObservers.iterator();
            while (it.hasNext()) {
                this.mLifecycle.removeObserver(it.next());
            }
            this.mObservers.clear();
        }
    }

    private void bindRcKey(int i, String str) {
        this.mRcToKey.put(Integer.valueOf(i), str);
        this.mKeyToRc.put(str, Integer.valueOf(i));
    }

    private <O> void doDispatch(String str, int i, Intent intent, CallbackAndContract<O> callbackAndContract) {
        if (callbackAndContract != null && callbackAndContract.mCallback != null) {
            callbackAndContract.mCallback.onActivityResult(callbackAndContract.mContract.parseResult(i, intent));
        } else {
            this.mParsedPendingResults.remove(str);
            this.mPendingResults.putParcelable(str, new ActivityResult(i, intent));
        }
    }

    private int generateRandomNumber() {
        int iNextInt = this.mRandom.nextInt(2147418112);
        while (true) {
            int i = iNextInt + 65536;
            if (!this.mRcToKey.containsKey(Integer.valueOf(i))) {
                return i;
            }
            iNextInt = this.mRandom.nextInt(2147418112);
        }
    }

    private int registerKey(String str) {
        Integer num = this.mKeyToRc.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iGenerateRandomNumber = generateRandomNumber();
        bindRcKey(iGenerateRandomNumber, str);
        return iGenerateRandomNumber;
    }

    public final boolean dispatchResult(int i, int i2, Intent intent) {
        String str = this.mRcToKey.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.mLaunchedKeys.remove(str);
        doDispatch(str, i2, intent, this.mKeyToCallback.get(str));
        return true;
    }

    public final <O> boolean dispatchResult(int i, O o) {
        String str = this.mRcToKey.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.mLaunchedKeys.remove(str);
        CallbackAndContract<?> callbackAndContract = this.mKeyToCallback.get(str);
        if (callbackAndContract == null || callbackAndContract.mCallback == null) {
            this.mPendingResults.remove(str);
            this.mParsedPendingResults.put(str, o);
        } else {
            callbackAndContract.mCallback.onActivityResult(o);
        }
        return true;
    }

    public abstract <I, O> void onLaunch(int i, ActivityResultContract<I, O> activityResultContract, I i2, ActivityOptionsCompat activityOptionsCompat);

    public final void onRestoreInstanceState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_RCS);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS);
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.mLaunchedKeys = bundle.getStringArrayList(KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS);
        this.mRandom = (Random) bundle.getSerializable(KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT);
        this.mPendingResults.putAll(bundle.getBundle(KEY_COMPONENT_ACTIVITY_PENDING_RESULTS));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= stringArrayList.size()) {
                return;
            }
            String str = stringArrayList.get(i2);
            if (this.mKeyToRc.containsKey(str)) {
                Integer numRemove = this.mKeyToRc.remove(str);
                if (!this.mPendingResults.containsKey(str)) {
                    this.mRcToKey.remove(numRemove);
                }
            }
            bindRcKey(integerArrayList.get(i2).intValue(), stringArrayList.get(i2));
            i = i2 + 1;
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putIntegerArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_RCS, new ArrayList<>(this.mKeyToRc.values()));
        bundle.putStringArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS, new ArrayList<>(this.mKeyToRc.keySet()));
        bundle.putStringArrayList(KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS, new ArrayList<>(this.mLaunchedKeys));
        bundle.putBundle(KEY_COMPONENT_ACTIVITY_PENDING_RESULTS, (Bundle) this.mPendingResults.clone());
        bundle.putSerializable(KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT, this.mRandom);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> ActivityResultLauncher<I> register(String str, ActivityResultContract<I, O> activityResultContract, ActivityResultCallback<O> activityResultCallback) {
        int iRegisterKey = registerKey(str);
        this.mKeyToCallback.put(str, new CallbackAndContract<>(activityResultCallback, activityResultContract));
        if (this.mParsedPendingResults.containsKey(str)) {
            Object obj = this.mParsedPendingResults.get(str);
            this.mParsedPendingResults.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.mPendingResults.getParcelable(str);
        if (activityResult != null) {
            this.mPendingResults.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
        }
        return new ActivityResultLauncher<I>(this, str, iRegisterKey, activityResultContract) { // from class: androidx.activity.result.ActivityResultRegistry.3
            final ActivityResultRegistry this$0;
            final ActivityResultContract val$contract;
            final String val$key;
            final int val$requestCode;

            {
                this.this$0 = this;
                this.val$key = str;
                this.val$requestCode = iRegisterKey;
                this.val$contract = activityResultContract;
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public ActivityResultContract<I, ?> getContract() {
                return this.val$contract;
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public void launch(I i, ActivityOptionsCompat activityOptionsCompat) {
                this.this$0.mLaunchedKeys.add(this.val$key);
                Integer num = this.this$0.mKeyToRc.get(this.val$key);
                this.this$0.onLaunch(num != null ? num.intValue() : this.val$requestCode, this.val$contract, i, activityOptionsCompat);
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public void unregister() {
                this.this$0.unregister(this.val$key);
            }
        };
    }

    public final <I, O> ActivityResultLauncher<I> register(String str, LifecycleOwner lifecycleOwner, ActivityResultContract<I, O> activityResultContract, ActivityResultCallback<O> activityResultCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 15, 86, 7, 83, 79, 91, 10, 85, 45, 71, 88, 93, 20, 16}, "8f0b06", false) + lifecycleOwner + NPStringFog.decode(new byte[]{68, 93, 70, 17, 88, 69, 16, 81, 88, 65, 77, 88, 10, 83, 21, 69, 86, 17, 22, 81, 82, 88, 74, 69, 1, 70, 21, 70, 81, 88, 8, 81, 21, 82, 76, 67, 22, 81, 91, 69, 25, 66, 16, 85, 65, 84, 25, 88, 23, 20}, "d45191", true) + lifecycle.getCurrentState() + NPStringFog.decode(new byte[]{24, 19, 123, 11, 0, 3, 85, 74, 84, 14, 3, 41, 65, 93, 82, 16, 21, 70, 91, 70, 68, 22, 70, 5, 87, 95, 91, 66, 20, 3, 81, 90, 68, 22, 3, 20, 22, 81, 82, 4, 9, 20, 83, 19, 67, 10, 3, 31, 22, 82, 69, 7, 70, 53, 98, 114, 101, 54, 35, 34, 24}, "637bff", false));
        }
        int iRegisterKey = registerKey(str);
        LifecycleContainer lifecycleContainer = this.mKeyToLifecycleContainers.get(str);
        if (lifecycleContainer == null) {
            lifecycleContainer = new LifecycleContainer(lifecycle);
        }
        lifecycleContainer.addObserver(new LifecycleEventObserver(this, str, activityResultCallback, activityResultContract) { // from class: androidx.activity.result.ActivityResultRegistry.1
            final ActivityResultRegistry this$0;
            final ActivityResultCallback val$callback;
            final ActivityResultContract val$contract;
            final String val$key;

            {
                this.this$0 = this;
                this.val$key = str;
                this.val$callback = activityResultCallback;
                this.val$contract = activityResultContract;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                if (!Lifecycle.Event.ON_START.equals(event)) {
                    if (Lifecycle.Event.ON_STOP.equals(event)) {
                        this.this$0.mKeyToCallback.remove(this.val$key);
                        return;
                    } else {
                        if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                            this.this$0.unregister(this.val$key);
                            return;
                        }
                        return;
                    }
                }
                this.this$0.mKeyToCallback.put(this.val$key, new CallbackAndContract<>(this.val$callback, this.val$contract));
                if (this.this$0.mParsedPendingResults.containsKey(this.val$key)) {
                    Object obj = this.this$0.mParsedPendingResults.get(this.val$key);
                    this.this$0.mParsedPendingResults.remove(this.val$key);
                    this.val$callback.onActivityResult(obj);
                }
                ActivityResult activityResult = (ActivityResult) this.this$0.mPendingResults.getParcelable(this.val$key);
                if (activityResult != null) {
                    this.this$0.mPendingResults.remove(this.val$key);
                    this.val$callback.onActivityResult(this.val$contract.parseResult(activityResult.getResultCode(), activityResult.getData()));
                }
            }
        });
        this.mKeyToLifecycleContainers.put(str, lifecycleContainer);
        return new ActivityResultLauncher<I>(this, str, iRegisterKey, activityResultContract) { // from class: androidx.activity.result.ActivityResultRegistry.2
            final ActivityResultRegistry this$0;
            final ActivityResultContract val$contract;
            final String val$key;
            final int val$requestCode;

            {
                this.this$0 = this;
                this.val$key = str;
                this.val$requestCode = iRegisterKey;
                this.val$contract = activityResultContract;
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public ActivityResultContract<I, ?> getContract() {
                return this.val$contract;
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public void launch(I i, ActivityOptionsCompat activityOptionsCompat) {
                this.this$0.mLaunchedKeys.add(this.val$key);
                Integer num = this.this$0.mKeyToRc.get(this.val$key);
                this.this$0.onLaunch(num != null ? num.intValue() : this.val$requestCode, this.val$contract, i, activityOptionsCompat);
            }

            @Override // androidx.activity.result.ActivityResultLauncher
            public void unregister() {
                this.this$0.unregister(this.val$key);
            }
        };
    }

    final void unregister(String str) {
        Integer numRemove;
        if (!this.mLaunchedKeys.contains(str) && (numRemove = this.mKeyToRc.remove(str)) != null) {
            this.mRcToKey.remove(numRemove);
        }
        this.mKeyToCallback.remove(str);
        if (this.mParsedPendingResults.containsKey(str)) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{34, 17, 94, 73, 22, 15, 8, 4, 17, 73, 3, 8, 2, 10, 95, 94, 70, 20, 3, 16, 68, 85, 18, 70, 0, 12, 67, 25, 20, 3, 23, 22, 84, 74, 18, 70}, "fc19ff", -1.1772591E9f) + str + NPStringFog.decode(new byte[]{9, 25}, "3926af", -4.37313944E8d) + this.mParsedPendingResults.get(str));
            this.mParsedPendingResults.remove(str);
        }
        if (this.mPendingResults.containsKey(str)) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{114, 20, 93, 17, 21, 93, 88, 1, 18, 17, 0, 90, 82, 15, 92, 6, 69, 70, 83, 21, 71, 13, 17, 20, 80, 9, 64, 65, 23, 81, 71, 19, 87, 18, 17, 20}, "6f2ae4", -18092) + str + NPStringFog.decode(new byte[]{14, 65}, "4ab585", -8365) + this.mPendingResults.getParcelable(str));
            this.mPendingResults.remove(str);
        }
        LifecycleContainer lifecycleContainer = this.mKeyToLifecycleContainers.get(str);
        if (lifecycleContainer != null) {
            lifecycleContainer.clearObservers();
            this.mKeyToLifecycleContainers.remove(str);
        }
    }
}
