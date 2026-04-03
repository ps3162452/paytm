package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
final class FragmentManagerViewModel extends ViewModel {
    private final boolean mStateAutomaticallySaved;
    private static final String TAG = NPStringFog.decode(new byte[]{112, 20, 0, 94, 12, 81, 88, 18, 44, 88, 15, 85, 81, 3, 19}, "6fa9a4", true, false);
    private static final ViewModelProvider.Factory FACTORY = new ViewModelProvider.Factory() { // from class: androidx.fragment.app.FragmentManagerViewModel.1
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls) {
            return new FragmentManagerViewModel(true);
        }
    };
    private final HashMap<String, Fragment> mRetainedFragments = new HashMap<>();
    private final HashMap<String, FragmentManagerViewModel> mChildNonConfigs = new HashMap<>();
    private final HashMap<String, ViewModelStore> mViewModelStores = new HashMap<>();
    private boolean mHasBeenCleared = false;
    private boolean mHasSavedSnapshot = false;
    private boolean mIsStateSaved = false;

    FragmentManagerViewModel(boolean z) {
        this.mStateAutomaticallySaved = z;
    }

    static FragmentManagerViewModel getInstance(ViewModelStore viewModelStore) {
        return (FragmentManagerViewModel) new ViewModelProvider(viewModelStore, FACTORY).get(FragmentManagerViewModel.class);
    }

    void addRetainedFragment(Fragment fragment) {
        if (this.mIsStateSaved) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{121, 95, 89, 89, 68, 80, 94, 95, 23, 87, 82, 93, 98, 93, 67, 87, 95, 87, 85, 92, 113, 68, 87, 94, 93, 93, 89, 66, 22, 88, 67, 24, 67, 94, 83, 25, 67, 76, 86, 66, 83, 25, 89, 75, 23, 87, 90, 75, 85, 89, 83, 79, 22, 74, 81, 78, 82, 82}, "087669", -1.278271E9f));
            }
        } else {
            if (this.mRetainedFragments.containsKey(fragment.mWho)) {
                return;
            }
            this.mRetainedFragments.put(fragment.mWho, fragment);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{109, 65, 92, 85, 16, 90, 86, 86, 24, 70, 1, 71, 89, 88, 86, 81, 0, 19, 126, 67, 89, 83, 9, 86, 86, 69, 75, 14, 68, 114, 92, 85, 93, 80, 68}, "8184d3", 1121446000L) + fragment);
            }
        }
    }

    void clearNonConfigState(Fragment fragment) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{122, 15, 4, 81, 67, 8, 87, 4, 65, 94, 94, 15, 20, 0, 14, 94, 87, 8, 94, 67, 18, 68, 80, 21, 92, 67, 7, 95, 67, 65}, "9ca01a", true) + fragment);
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.mChildNonConfigs.get(fragment.mWho);
        if (fragmentManagerViewModel != null) {
            fragmentManagerViewModel.onCleared();
            this.mChildNonConfigs.remove(fragment.mWho);
        }
        ViewModelStore viewModelStore = this.mViewModelStores.get(fragment.mWho);
        if (viewModelStore != null) {
            viewModelStore.clear();
            this.mViewModelStores.remove(fragment.mWho);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) obj;
        return this.mRetainedFragments.equals(fragmentManagerViewModel.mRetainedFragments) && this.mChildNonConfigs.equals(fragmentManagerViewModel.mChildNonConfigs) && this.mViewModelStores.equals(fragmentManagerViewModel.mViewModelStores);
    }

    Fragment findRetainedFragmentByWho(String str) {
        return this.mRetainedFragments.get(str);
    }

    FragmentManagerViewModel getChildNonConfig(Fragment fragment) {
        FragmentManagerViewModel fragmentManagerViewModel = this.mChildNonConfigs.get(fragment.mWho);
        if (fragmentManagerViewModel != null) {
            return fragmentManagerViewModel;
        }
        FragmentManagerViewModel fragmentManagerViewModel2 = new FragmentManagerViewModel(this.mStateAutomaticallySaved);
        this.mChildNonConfigs.put(fragment.mWho, fragmentManagerViewModel2);
        return fragmentManagerViewModel2;
    }

    Collection<Fragment> getRetainedFragments() {
        return new ArrayList(this.mRetainedFragments.values());
    }

    @Deprecated
    FragmentManagerNonConfig getSnapshot() {
        if (this.mRetainedFragments.isEmpty() && this.mChildNonConfigs.isEmpty() && this.mViewModelStores.isEmpty()) {
            return null;
        }
        HashMap map = new HashMap();
        for (Map.Entry<String, FragmentManagerViewModel> entry : this.mChildNonConfigs.entrySet()) {
            FragmentManagerNonConfig snapshot = entry.getValue().getSnapshot();
            if (snapshot != null) {
                map.put(entry.getKey(), snapshot);
            }
        }
        this.mHasSavedSnapshot = true;
        if (this.mRetainedFragments.isEmpty() && map.isEmpty() && this.mViewModelStores.isEmpty()) {
            return null;
        }
        return new FragmentManagerNonConfig(new ArrayList(this.mRetainedFragments.values()), map, new HashMap(this.mViewModelStores));
    }

    ViewModelStore getViewModelStore(Fragment fragment) {
        ViewModelStore viewModelStore = this.mViewModelStores.get(fragment.mWho);
        if (viewModelStore != null) {
            return viewModelStore;
        }
        ViewModelStore viewModelStore2 = new ViewModelStore();
        this.mViewModelStores.put(fragment.mWho, viewModelStore2);
        return viewModelStore2;
    }

    public int hashCode() {
        return (((this.mRetainedFragments.hashCode() * 31) + this.mChildNonConfigs.hashCode()) * 31) + this.mViewModelStores.hashCode();
    }

    boolean isCleared() {
        return this.mHasBeenCleared;
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, NPStringFog.decode(new byte[]{14, 15, 117, 91, 93, 87, 19, 4, 82, 23, 91, 87, 13, 13, 83, 83, 24, 80, 14, 19, 22}, "aa6786", 8.109805E8f) + this);
        }
        this.mHasBeenCleared = true;
    }

    void removeRetainedFragment(Fragment fragment) {
        if (this.mIsStateSaved) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{120, 4, 94, 10, 69, 10, 95, 4, 16, 23, 82, 14, 94, 21, 85, 55, 82, 23, 80, 10, 94, 0, 83, 37, 67, 2, 87, 8, 82, 13, 69, 67, 81, 22, 23, 23, 89, 6, 16, 22, 67, 2, 69, 6, 16, 12, 68, 67, 80, 15, 66, 0, 86, 7, 72, 67, 67, 4, 65, 6, 85}, "1c0e7c", -1242472770L));
                return;
            }
            return;
        }
        if ((this.mRetainedFragments.remove(fragment.mWho) != null) && FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{49, 19, 93, 83, 70, 92, 10, 4, 25, 64, 87, 65, 5, 10, 87, 87, 86, 21, 34, 17, 88, 85, 95, 80, 10, 23, 74, 8, 18, 103, 1, 14, 86, 68, 87, 81, 68}, "dc9225", 2.0895478E8f) + fragment);
        }
    }

    @Deprecated
    void restoreFromSnapshot(FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.mRetainedFragments.clear();
        this.mChildNonConfigs.clear();
        this.mViewModelStores.clear();
        if (fragmentManagerNonConfig != null) {
            Collection<Fragment> fragments = fragmentManagerNonConfig.getFragments();
            if (fragments != null) {
                for (Fragment fragment : fragments) {
                    if (fragment != null) {
                        this.mRetainedFragments.put(fragment.mWho, fragment);
                    }
                }
            }
            Map<String, FragmentManagerNonConfig> childNonConfigs = fragmentManagerNonConfig.getChildNonConfigs();
            if (childNonConfigs != null) {
                for (Map.Entry<String, FragmentManagerNonConfig> entry : childNonConfigs.entrySet()) {
                    FragmentManagerViewModel fragmentManagerViewModel = new FragmentManagerViewModel(this.mStateAutomaticallySaved);
                    fragmentManagerViewModel.restoreFromSnapshot(entry.getValue());
                    this.mChildNonConfigs.put(entry.getKey(), fragmentManagerViewModel);
                }
            }
            Map<String, ViewModelStore> viewModelStores = fragmentManagerNonConfig.getViewModelStores();
            if (viewModelStores != null) {
                this.mViewModelStores.putAll(viewModelStores);
            }
        }
        this.mHasSavedSnapshot = false;
    }

    void setIsStateSaved(boolean z) {
        this.mIsStateSaved = z;
    }

    boolean shouldDestroy(Fragment fragment) {
        if (this.mRetainedFragments.containsKey(fragment.mWho)) {
            return this.mStateAutomaticallySaved ? this.mHasBeenCleared : !this.mHasSavedSnapshot;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{117, 64, 4, 81, 89, 81, 93, 70, 40, 87, 90, 85, 84, 87, 23, 96, 93, 81, 68, 127, 10, 82, 81, 88, 72}, "32e644", false, false));
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(NPStringFog.decode(new byte[]{73, 16, 127, 70, 83, 3, 89, 85, 87, 64, 65, 68, 28}, "40942d", true));
        Iterator<Fragment> it = this.mRetainedFragments.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(NPStringFog.decode(new byte[]{77, 66}, "ab01dc", 1.080357668E9d));
            }
        }
        sb.append(NPStringFog.decode(new byte[]{25, 25, 37, 9, 94, 91, 84, 25, 40, 14, 89, 23, 115, 86, 8, 7, 94, 80, 16, 17}, "09fa77", false));
        Iterator<String> it2 = this.mChildNonConfigs.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(NPStringFog.decode(new byte[]{77, 65}, "aa1e09", false));
            }
        }
        sb.append(NPStringFog.decode(new byte[]{27, 24, 55, 92, 81, 21, 127, 87, 5, 80, 88, 49, 70, 87, 19, 80, 71, 66, 26}, "28a54b", -569559389L));
        Iterator<String> it3 = this.mViewModelStores.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(NPStringFog.decode(new byte[]{26, 18}, "623e65", 1738786727L));
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
