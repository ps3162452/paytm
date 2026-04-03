package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes17.dex */
final class Recreator implements GenericLifecycleObserver {
    static final String CLASSES_KEY = NPStringFog.decode(new byte[]{1, 94, 3, 67, 71, 85, 17, 109, 22, 95, 107, 66, 7, 65, 22, 95, 70, 85}, "b2b040", false, false);
    static final String COMPONENT_KEY = NPStringFog.decode(new byte[]{84, 91, 83, 65, 10, 12, 81, 77, 25, 64, 4, 19, 80, 81, 68, 71, 4, 17, 80, 27, 101, 86, 22, 17, 84, 71, 67, 86, 23}, "5573ee", false);
    private final SavedStateRegistryOwner mOwner;

    static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {
        final Set<String> mClasses = new HashSet();

        SavedStateProvider(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.registerSavedStateProvider(NPStringFog.decode(new byte[]{88, 88, 80, 16, 88, 80, 93, 78, 26, 17, 86, 79, 92, 82, 71, 22, 86, 77, 92, 24, 102, 7, 68, 77, 88, 68, 64, 7, 69}, "964b79", true), this);
        }

        void add(String str) {
            this.mClasses.add(str);
        }

        @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
        public Bundle saveState() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(NPStringFog.decode(new byte[]{90, 88, 88, 16, 21, 92, 74, 107, 77, 12, 57, 75, 92, 71, 77, 12, 20, 92}, "949cf9", 9055), new ArrayList<>(this.mClasses));
            return bundle;
        }
    }

    Recreator(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.mOwner = savedStateRegistryOwner;
    }

    private void reflectiveNew(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.AutoRecreated) declaredConstructor.newInstance(new Object[0])).onRecreated(this.mOwner);
                } catch (Exception e) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{37, 81, 92, 13, 7, 5, 67, 68, 90, 65, 11, 15, 16, 68, 84, 15, 22, 8, 2, 68, 80, 65}, "c05aba", false) + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 93, 83, 71, 75}, "812484", true, true) + clsAsSubclass.getSimpleName() + NPStringFog.decode(new byte[]{25, 8, 70, 22, 22, 69, 81, 4, 69, 0, 66, 1, 92, 3, 82, 16, 14, 17, 25, 6, 92, 11, 17, 17, 75, 16, 80, 17, 13, 23, 25, 12, 93, 69, 13, 23, 93, 0, 65, 69, 22, 10, 25, 7, 86, 69, 3, 16, 77, 10, 94, 4, 22, 12, 90, 4, 95, 9, 27, 69, 75, 0, 80, 23, 7, 4, 77, 0, 87}, "9e3ebe", 31637), e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{32, 93, 5, 17, 18, 21}, "c1dba5", -1.889802571E9d) + str + NPStringFog.decode(new byte[]{24, 21, 82, 68, 93, 19, 76, 66, 85, 88, 70, 90, 92}, "8b3734", 4907), e3);
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_CREATE) {
            throw new AssertionError(NPStringFog.decode(new byte[]{127, 82, 76, 66, 21, 93, 71, 82, 90, 66, 21, 85, 68, 68, 64, 22, 87, 93, 17, 120, 122, 105, 118, 106, 116, 118, 96, 115}, "174658", false, false));
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
        Bundle bundleConsumeRestoredStateForKey = this.mOwner.getSavedStateRegistry().consumeRestoredStateForKey(COMPONENT_KEY);
        if (bundleConsumeRestoredStateForKey == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleConsumeRestoredStateForKey.getStringArrayList(CLASSES_KEY);
        if (stringArrayList == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{35, 68, 94, 81, 90, 3, 65, 70, 89, 65, 94, 70, 19, 84, 67, 65, 89, 20, 4, 85, 16, 70, 66, 7, 21, 84, 16, 83, 89, 20, 65, 69, 88, 80, 22, 5, 14, 92, 64, 90, 88, 3, 15, 69, 16, 23, 87, 8, 5, 67, 95, 92, 82, 30, 79, 66, 81, 67, 83, 2, 18, 69, 81, 65, 83, 72, 51, 84, 67, 65, 87, 20, 21, 84, 66, 23, 22, 11, 20, 66, 68, 21, 85, 9, 15, 69, 81, 92, 88, 70, 13, 88, 67, 65, 22, 9, 7, 17, 67, 65, 68, 15, 15, 86, 67, 21, 84, 31, 65, 69, 88, 80, 22, 13, 4, 72, 16, 23, 85, 10, 0, 66, 67, 80, 69, 57, 21, 94, 111, 71, 83, 21, 21, 94, 66, 80, 20}, "a1056f", -1.5087366E9f));
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            reflectiveNew(it.next());
        }
    }
}
