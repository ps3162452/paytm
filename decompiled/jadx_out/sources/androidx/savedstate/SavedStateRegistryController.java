package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import n.NPStringFog;

/* JADX INFO: loaded from: classes17.dex */
public final class SavedStateRegistryController {
    private final SavedStateRegistryOwner mOwner;
    private final SavedStateRegistry mRegistry = new SavedStateRegistry();

    private SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.mOwner = savedStateRegistryOwner;
    }

    public static SavedStateRegistryController create(SavedStateRegistryOwner savedStateRegistryOwner) {
        return new SavedStateRegistryController(savedStateRegistryOwner);
    }

    public SavedStateRegistry getSavedStateRegistry() {
        return this.mRegistry;
    }

    public void performRestore(Bundle bundle) {
        Lifecycle lifecycle = this.mOwner.getLifecycle();
        if (lifecycle.getCurrentState() != Lifecycle.State.INITIALIZED) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{97, 92, 70, 64, 84, 71, 71, 92, 71, 20, 88, 64, 64, 77, 21, 86, 80, 21, 80, 75, 80, 85, 65, 80, 87, 25, 90, 90, 89, 76, 19, 93, 64, 70, 92, 91, 84, 25, 90, 67, 91, 80, 65, 30, 70, 20, 92, 91, 90, 77, 92, 85, 89, 92, 73, 88, 65, 93, 90, 91, 19, 74, 65, 85, 82, 80}, "395455", true, true));
        }
        lifecycle.addObserver(new Recreator(this.mOwner));
        this.mRegistry.performRestore(lifecycle, bundle);
    }

    public void performSave(Bundle bundle) {
        this.mRegistry.performSave(bundle);
    }
}
