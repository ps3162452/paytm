package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes16.dex */
final class SavedStateHandleController implements LifecycleEventObserver {
    static final String TAG_SAVED_STATE_HANDLE_CONTROLLER = NPStringFog.decode(new byte[]{7, 86, 86, 22, 88, 8, 2, 64, 28, 8, 94, 7, 3, 91, 75, 7, 91, 4, 72, 75, 83, 18, 82, 5, 21, 76, 83, 16, 82, 79, 16, 85, 28, 16, 86, 6}, "f82d7a", false, false);
    private final SavedStateHandle mHandle;
    private boolean mIsAttached = false;
    private final String mKey;

    static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        OnRecreation() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.AutoRecreated
        public void onRecreated(SavedStateRegistryOwner savedStateRegistryOwner) {
            if (!(savedStateRegistryOwner instanceof ViewModelStoreOwner)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{122, 94, 65, 1, 74, 95, 82, 92, 21, 1, 74, 67, 92, 66, 15, 68, 119, 95, 97, 85, 86, 22, 93, 80, 71, 89, 90, 10, 24, 66, 91, 95, 64, 8, 92, 17, 81, 85, 21, 22, 93, 86, 90, 67, 65, 1, 74, 84, 87, 16, 90, 10, 84, 72, 19, 95, 91, 68, 91, 94, 94, 64, 90, 10, 93, 95, 71, 67, 65, 12, 89, 69, 19, 89, 88, 20, 84, 84, 94, 85, 91, 16, 24, 103, 90, 85, 66, 41, 87, 85, 86, 92, 102, 16, 87, 67, 86, 127, 66, 10, 93, 67}, "305d81", -8.77581985E8d));
            }
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getViewModelStore();
            SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
            Iterator<String> it = viewModelStore.keys().iterator();
            while (it.hasNext()) {
                SavedStateHandleController.attachHandleIfNeeded(viewModelStore.get(it.next()), savedStateRegistry, savedStateRegistryOwner.getLifecycle());
            }
            if (viewModelStore.keys().isEmpty()) {
                return;
            }
            savedStateRegistry.runOnNextRecreation(OnRecreation.class);
        }
    }

    SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.mKey = str;
        this.mHandle = savedStateHandle;
    }

    static void attachHandleIfNeeded(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getTag(TAG_SAVED_STATE_HANDLE_CONTROLLER);
        if (savedStateHandleController == null || savedStateHandleController.isAttached()) {
            return;
        }
        savedStateHandleController.attachToLifecycle(savedStateRegistry, lifecycle);
        tryToAddRecreator(savedStateRegistry, lifecycle);
    }

    static SavedStateHandleController create(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, SavedStateHandle.createHandle(savedStateRegistry.consumeRestoredStateForKey(str), bundle));
        savedStateHandleController.attachToLifecycle(savedStateRegistry, lifecycle);
        tryToAddRecreator(savedStateRegistry, lifecycle);
        return savedStateHandleController;
    }

    private static void tryToAddRecreator(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        Lifecycle.State currentState = lifecycle.getCurrentState();
        if (currentState == Lifecycle.State.INITIALIZED || currentState.isAtLeast(Lifecycle.State.STARTED)) {
            savedStateRegistry.runOnNextRecreation(OnRecreation.class);
        } else {
            lifecycle.addObserver(new LifecycleEventObserver(lifecycle, savedStateRegistry) { // from class: androidx.lifecycle.SavedStateHandleController.1
                final Lifecycle val$lifecycle;
                final SavedStateRegistry val$registry;

                {
                    this.val$lifecycle = lifecycle;
                    this.val$registry = savedStateRegistry;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        this.val$lifecycle.removeObserver(this);
                        this.val$registry.runOnNextRecreation(OnRecreation.class);
                    }
                }
            });
        }
    }

    void attachToLifecycle(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        if (this.mIsAttached) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{121, 8, 74, 3, 89, 82, 65, 68, 89, 18, 76, 87, 91, 12, 93, 2, 24, 66, 87, 68, 84, 15, 94, 83, 91, 29, 91, 10, 93, 121, 79, 10, 93, 20}, "8d8f86", false, true));
        }
        this.mIsAttached = true;
        lifecycle.addObserver(this);
        savedStateRegistry.registerSavedStateProvider(this.mKey, this.mHandle.savedStateProvider());
    }

    SavedStateHandle getHandle() {
        return this.mHandle;
    }

    boolean isAttached() {
        return this.mIsAttached;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.mIsAttached = false;
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }
}
