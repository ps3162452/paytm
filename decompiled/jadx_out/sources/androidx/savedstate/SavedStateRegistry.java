package androidx.savedstate;

import android.os.Bundle;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.Recreator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes17.dex */
public final class SavedStateRegistry {
    private static final String SAVED_COMPONENTS_KEY = NPStringFog.decode(new byte[]{4, 89, 0, 70, 12, 81, 1, 79, 74, 88, 10, 94, 0, 84, 29, 87, 15, 93, 75, 117, 17, 90, 7, 84, 4, 85, 8, 81, 48, 89, 19, 82, 0, 103, 23, 89, 17, 82, 54, 81, 4, 81, 22, 67, 22, 77, 77, 83, 0, 78}, "e7d4c8", false);
    private Recreator.SavedStateProvider mRecreatorProvider;
    private boolean mRestored;
    private Bundle mRestoredState;
    private SafeIterableMap<String, SavedStateProvider> mComponents = new SafeIterableMap<>();
    boolean mAllowingSavingState = true;

    public interface AutoRecreated {
        void onRecreated(SavedStateRegistryOwner savedStateRegistryOwner);
    }

    public interface SavedStateProvider {
        Bundle saveState();
    }

    SavedStateRegistry() {
    }

    public Bundle consumeRestoredStateForKey(String str) {
        if (!this.mRestored) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{61, 86, 77, 65, 80, 83, 10, 25, 91, 14, 93, 65, 17, 84, 93, 51, 86, 65, 16, 86, 74, 4, 87, 97, 16, 88, 76, 4, 117, 93, 22, 114, 93, 24, 19, 93, 10, 85, 65, 65, 82, 84, 16, 92, 74, 65, 64, 71, 20, 92, 74, 79, 92, 92, 39, 75, 93, 0, 71, 87, 68, 86, 94, 65, 80, 93, 22, 75, 93, 18, 67, 93, 10, 93, 81, 15, 84, 18, 7, 86, 85, 17, 92, 92, 1, 87, 76}, "d98a32", -1.178901098E9d));
        }
        Bundle bundle = this.mRestoredState;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        this.mRestoredState.remove(str);
        if (!this.mRestoredState.isEmpty()) {
            return bundle2;
        }
        this.mRestoredState = null;
        return bundle2;
    }

    public boolean isRestored() {
        return this.mRestored;
    }

    void performRestore(Lifecycle lifecycle, Bundle bundle) {
        if (this.mRestored) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 2, 23, 87, 93, 99, 66, 2, 21, 87, 107, 85, 81, 10, 18, 70, 75, 73, 22, 20, 0, 65, 25, 81, 90, 17, 4, 83, 93, 73, 22, 17, 4, 65, 77, 95, 68, 6, 5, 28}, "6ca290", -1170396804L));
        }
        if (bundle != null) {
            this.mRestoredState = bundle.getBundle(SAVED_COMPONENTS_KEY);
        }
        lifecycle.addObserver(new GenericLifecycleObserver(this) { // from class: androidx.savedstate.SavedStateRegistry.1
            final SavedStateRegistry this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_START) {
                    this.this$0.mAllowingSavingState = true;
                } else if (event == Lifecycle.Event.ON_STOP) {
                    this.this$0.mAllowingSavingState = false;
                }
            }
        });
        this.mRestored = true;
    }

    void performSave(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.mRestoredState;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        SafeIterableMap<String, SavedStateProvider>.IteratorWithAdditions iteratorWithAdditions = this.mComponents.iteratorWithAdditions();
        while (iteratorWithAdditions.hasNext()) {
            Map.Entry next = iteratorWithAdditions.next();
            bundle2.putBundle((String) next.getKey(), ((SavedStateProvider) next.getValue()).saveState());
        }
        bundle.putBundle(SAVED_COMPONENTS_KEY, bundle2);
    }

    public void registerSavedStateProvider(String str, SavedStateProvider savedStateProvider) {
        if (this.mComponents.putIfAbsent(str, savedStateProvider) != null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 85, 69, 85, 86, 49, 22, 85, 71, 85, 98, 16, 13, 66, 90, 84, 87, 16, 66, 67, 90, 68, 90, 66, 22, 92, 86, 16, 85, 11, 20, 81, 93, 16, 89, 7, 27, 20, 90, 67, 18, 3, 14, 70, 86, 81, 86, 27, 66, 70, 86, 87, 91, 17, 22, 81, 65, 85, 86}, "b4302b", 48431795L));
        }
    }

    public void runOnNextRecreation(Class<? extends AutoRecreated> cls) {
        if (!this.mAllowingSavingState) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{32, 7, 94, 67, 94, 14, 23, 70, 64, 6, 66, 7, 12, 20, 93, 67, 68, 9, 10, 21, 16, 2, 83, 21, 10, 9, 94, 67, 81, 7, 23, 3, 66, 67, 95, 15, 48, 7, 70, 6, 121, 15, 16, 18, 81, 13, 83, 4, 48, 18, 81, 23, 85}, "cf0c0a", 14424));
        }
        if (this.mRecreatorProvider == null) {
            this.mRecreatorProvider = new Recreator.SavedStateProvider(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            this.mRecreatorProvider.add(cls.getName());
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 14, 82, 17, 69}, "9b3b62", 1.010330781E9d) + cls.getSimpleName() + NPStringFog.decode(new byte[]{18, 12, 67, 17, 77, 22, 90, 0, 64, 7, 25, 82, 87, 7, 87, 23, 85, 66, 18, 2, 89, 12, 74, 66, 64, 20, 85, 22, 86, 68, 18, 8, 88, 66, 86, 68, 86, 4, 68, 66, 77, 89, 18, 3, 83, 66, 88, 67, 70, 14, 91, 3, 77, 95, 81, 0, 90, 14, 64, 22, 64, 4, 85, 16, 92, 87, 70, 4, 82}, "2a6b96", false, true), e);
        }
    }

    public void unregisterSavedStateProvider(String str) {
        this.mComponents.remove(str);
    }
}
