package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import n.NPStringFog;

/* JADX INFO: loaded from: classes16.dex */
public abstract class AbstractSavedStateViewModelFactory extends ViewModelProvider.KeyedFactory {
    static final String TAG_SAVED_STATE_HANDLE_CONTROLLER = NPStringFog.decode(new byte[]{87, 15, 85, 75, 86, 90, 82, 25, 31, 85, 80, 85, 83, 2, 72, 90, 85, 86, 24, 18, 80, 79, 92, 87, 69, 21, 80, 77, 92, 29, 64, 12, 31, 77, 88, 84}, "6a1993", -1.76676494E8d);
    private final Bundle mDefaultArgs;
    private final Lifecycle mLifecycle;
    private final SavedStateRegistry mSavedStateRegistry;

    public AbstractSavedStateViewModelFactory(SavedStateRegistryOwner savedStateRegistryOwner, Bundle bundle) {
        this.mSavedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
        this.mLifecycle = savedStateRegistryOwner.getLifecycle();
        this.mDefaultArgs = bundle;
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory, androidx.lifecycle.ViewModelProvider.Factory
    public final <T extends ViewModel> T create(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) create(canonicalName, cls);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 88, 80, 86, 95, 24, 87, 89, 87, 23, 82, 86, 89, 89, 74, 90, 92, 77, 69, 23, 80, 91, 82, 75, 69, 82, 64, 23, 80, 89, 88, 23, 93, 88, 71, 24, 84, 82, 19, 97, 90, 93, 65, 122, 92, 83, 86, 84, 69}, "673738", 1.0443478E9f));
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory
    public final <T extends ViewModel> T create(String str, Class<T> cls) {
        SavedStateHandleController savedStateHandleControllerCreate = SavedStateHandleController.create(this.mSavedStateRegistry, this.mLifecycle, str, this.mDefaultArgs);
        T t = (T) create(str, cls, savedStateHandleControllerCreate.getHandle());
        t.setTagIfAbsent(TAG_SAVED_STATE_HANDLE_CONTROLLER, savedStateHandleControllerCreate);
        return t;
    }

    protected abstract <T extends ViewModel> T create(String str, Class<T> cls, SavedStateHandle savedStateHandle);

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    void onRequery(ViewModel viewModel) {
        SavedStateHandleController.attachHandleIfNeeded(viewModel, this.mSavedStateRegistry, this.mLifecycle);
    }
}
