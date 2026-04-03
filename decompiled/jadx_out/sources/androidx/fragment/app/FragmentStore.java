package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
class FragmentStore {
    private static final String TAG = NPStringFog.decode(new byte[]{119, 64, 80, 82, 8, 93, 95, 70, 124, 84, 11, 89, 86, 87, 67}, "1215e8", 650504163L);
    private FragmentManagerViewModel mNonConfig;
    private final ArrayList<Fragment> mAdded = new ArrayList<>();
    private final HashMap<String, FragmentStateManager> mActive = new HashMap<>();

    FragmentStore() {
    }

    void addFragment(Fragment fragment) {
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 17, 0, 5, 84, 80, 12, 23, 65, 3, 85, 71, 7, 2, 5, 27, 25, 84, 6, 7, 4, 6, 3, 21}, "bcab95", -154) + fragment);
        }
        synchronized (this.mAdded) {
            this.mAdded.add(fragment);
        }
        fragment.mAdded = true;
    }

    void burpActive() {
        this.mActive.values().removeAll(Collections.singleton(null));
    }

    boolean containsActiveFragment(String str) {
        return this.mActive.get(str) != null;
    }

    void dispatchStateChange(int i) {
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                fragmentStateManager.setFragmentManagerState(i);
            }
        }
    }

    void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.mActive.isEmpty()) {
            printWriter.print(str);
            printWriter.println(NPStringFog.decode(new byte[]{113, 5, 69, 93, 66, 87, 16, 32, 67, 85, 83, 95, 85, 8, 69, 71, 14}, "0f1442", 149807047L));
            for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.getFragment();
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(NPStringFog.decode(new byte[]{11, 20, 89, 10}, "ea5f50", true));
                }
            }
        }
        int size = this.mAdded.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println(NPStringFog.decode(new byte[]{121, 82, 7, 83, 80, 21, 126, 68, 2, 81, 89, 80, 86, 66, 16, 12}, "86c645", 1713613900L));
            for (int i = 0; i < size; i++) {
                Fragment fragment2 = this.mAdded.get(i);
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{65, 24, 70}, "a8e73d", false, false));
                printWriter.print(i);
                printWriter.print(NPStringFog.decode(new byte[]{95, 18}, "e26f66", -30989));
                printWriter.println(fragment2.toString());
            }
        }
    }

    Fragment findActiveFragment(String str) {
        FragmentStateManager fragmentStateManager = this.mActive.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.getFragment();
        }
        return null;
    }

    Fragment findFragmentById(int i) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.getFragment();
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    Fragment findFragmentByTag(String str) {
        if (str != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
                if (fragmentStateManager != null) {
                    Fragment fragment2 = fragmentStateManager.getFragment();
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
        }
        return null;
    }

    Fragment findFragmentByWho(String str) {
        Fragment fragmentFindFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null && (fragmentFindFragmentByWho = fragmentStateManager.getFragment().findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    int findFragmentIndexInContainer(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.mAdded.indexOf(fragment);
        for (int i = iIndexOf - 1; i >= 0; i--) {
            Fragment fragment2 = this.mAdded.get(i);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return viewGroup.indexOfChild(fragment2.mView) + 1;
            }
        }
        int i2 = iIndexOf + 1;
        while (true) {
            int i3 = i2;
            if (i3 >= this.mAdded.size()) {
                return -1;
            }
            Fragment fragment3 = this.mAdded.get(i3);
            if (fragment3.mContainer == viewGroup && fragment3.mView != null) {
                return viewGroup.indexOfChild(fragment3.mView);
            }
            i2 = i3 + 1;
        }
    }

    int getActiveFragmentCount() {
        return this.mActive.size();
    }

    List<FragmentStateManager> getActiveFragmentStateManagers() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    List<Fragment> getActiveFragments() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.getFragment());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    FragmentStateManager getFragmentStateManager(String str) {
        return this.mActive.get(str);
    }

    List<Fragment> getFragments() {
        ArrayList arrayList;
        if (this.mAdded.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.mAdded) {
            arrayList = new ArrayList(this.mAdded);
        }
        return arrayList;
    }

    FragmentManagerViewModel getNonConfig() {
        return this.mNonConfig;
    }

    void makeActive(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.getFragment();
        if (containsActiveFragment(fragment.mWho)) {
            return;
        }
        this.mActive.put(fragment.mWho, fragmentStateManager);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.mNonConfig.addRetainedFragment(fragment);
            } else {
                this.mNonConfig.removeRetainedFragment(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{114, 87, 2, 92, 86, 20, 85, 65, 7, 94, 95, 81, 93, 71, 70, 77, 93, 20, 82, 80, 18, 80, 68, 81, 19, 64, 3, 77, 18}, "33f924", 6.01600217E8d) + fragment);
        }
    }

    void makeInactive(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.getFragment();
        if (fragment.mRetainInstance) {
            this.mNonConfig.removeRetainedFragment(fragment);
        }
        if (this.mActive.put(fragment.mWho, null) != null && FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{52, 93, 88, 92, 19, 87, 2, 24, 83, 65, 4, 85, 11, 93, 91, 71, 69, 84, 20, 87, 88, 19, 4, 81, 18, 81, 67, 86, 69, 65, 3, 76, 21}, "f853e2", false) + fragment);
        }
    }

    void moveToExpectedState() {
        Iterator<Fragment> it = this.mAdded.iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = this.mActive.get(it.next().mWho);
            if (fragmentStateManager != null) {
                fragmentStateManager.moveToExpectedState();
            }
        }
        for (FragmentStateManager fragmentStateManager2 : this.mActive.values()) {
            if (fragmentStateManager2 != null) {
                fragmentStateManager2.moveToExpectedState();
                Fragment fragment = fragmentStateManager2.getFragment();
                if (fragment.mRemoving && !fragment.isInBackStack()) {
                    makeInactive(fragmentStateManager2);
                }
            }
        }
    }

    void removeFragment(Fragment fragment) {
        synchronized (this.mAdded) {
            this.mAdded.remove(fragment);
        }
        fragment.mAdded = false;
    }

    void resetActiveFragments() {
        this.mActive.clear();
    }

    void restoreAddedFragments(List<String> list) {
        this.mAdded.clear();
        if (list != null) {
            for (String str : list) {
                Fragment fragmentFindActiveFragment = findActiveFragment(str);
                if (fragmentFindActiveFragment == null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 87, 20, 11, 93, 18, 76, 89, 90, 22, 90, 0, 76, 93, 80, 66, 85, 19, 89, 95, 89, 7, 93, 21, 24, 94, 91, 16, 19, 73}, "884b3a", true) + str + NPStringFog.decode(new byte[]{27}, "221cab", 7.86863215E8d));
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, NPStringFog.decode(new byte[]{23, 86, 75, 16, 86, 68, 0, 96, 89, 18, 92, 101, 17, 82, 76, 1, 3, 22, 4, 87, 92, 1, 93, 22, 77}, "e38d96", -6089) + str + NPStringFog.decode(new byte[]{72, 15, 25}, "a59357", false) + fragmentFindActiveFragment);
                }
                addFragment(fragmentFindActiveFragment);
            }
        }
    }

    ArrayList<FragmentState> saveActiveFragments() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.mActive.size());
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.getFragment();
                FragmentState fragmentStateSaveState = fragmentStateManager.saveState();
                arrayList.add(fragmentStateSaveState);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, NPStringFog.decode(new byte[]{49, 7, 23, 85, 86, 17, 17, 18, 0, 68, 87, 17, 13, 0, 65}, "bfa021", 11871) + fragment + NPStringFog.decode(new byte[]{89, 22}, "c6fe78", 1.911626808E9d) + fragmentStateSaveState.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    ArrayList<String> saveAddedFragments() {
        synchronized (this.mAdded) {
            if (this.mAdded.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.mAdded.size());
            for (Fragment fragment : this.mAdded) {
                arrayList.add(fragment.mWho);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, NPStringFog.decode(new byte[]{16, 88, 69, 1, 119, 93, 15, 106, 71, 5, 66, 84, 89, 25, 82, 0, 82, 88, 13, 94, 19, 2, 68, 80, 4, 84, 86, 10, 66, 17, 75}, "c93d61", -13415) + fragment.mWho + NPStringFog.decode(new byte[]{77, 12, 66}, "d6bd97", true, true) + fragment);
                }
            }
            return arrayList;
        }
    }

    void setNonConfig(FragmentManagerViewModel fragmentManagerViewModel) {
        this.mNonConfig = fragmentManagerViewModel;
    }
}
