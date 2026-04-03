package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public abstract class FragmentTransaction {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SET_MAX_LIFECYCLE = 10;
    static final int OP_SET_PRIMARY_NAV = 8;
    static final int OP_SHOW = 5;
    static final int OP_UNSET_PRIMARY_NAV = 9;
    public static final int TRANSIT_ENTER_MASK = 4096;
    public static final int TRANSIT_EXIT_MASK = 8192;
    public static final int TRANSIT_FRAGMENT_CLOSE = 8194;
    public static final int TRANSIT_FRAGMENT_FADE = 4099;
    public static final int TRANSIT_FRAGMENT_OPEN = 4097;
    public static final int TRANSIT_NONE = 0;
    public static final int TRANSIT_UNSET = -1;
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    private final ClassLoader mClassLoader;
    ArrayList<Runnable> mCommitRunnables;
    int mEnterAnim;
    int mExitAnim;
    private final FragmentFactory mFragmentFactory;
    String mName;
    ArrayList<Op> mOps;
    int mPopEnterAnim;
    int mPopExitAnim;
    boolean mReorderingAllowed;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    int mTransition;

    static final class Op {
        int mCmd;
        Lifecycle.State mCurrentMaxState;
        int mEnterAnim;
        int mExitAnim;
        Fragment mFragment;
        Lifecycle.State mOldMaxState;
        int mPopEnterAnim;
        int mPopExitAnim;

        Op() {
        }

        Op(int i, Fragment fragment) {
            this.mCmd = i;
            this.mFragment = fragment;
            this.mOldMaxState = Lifecycle.State.RESUMED;
            this.mCurrentMaxState = Lifecycle.State.RESUMED;
        }

        Op(int i, Fragment fragment, Lifecycle.State state) {
            this.mCmd = i;
            this.mFragment = fragment;
            this.mOldMaxState = fragment.mMaxState;
            this.mCurrentMaxState = state;
        }
    }

    @Deprecated
    public FragmentTransaction() {
        this.mOps = new ArrayList<>();
        this.mAllowAddToBackStack = true;
        this.mReorderingAllowed = false;
        this.mFragmentFactory = null;
        this.mClassLoader = null;
    }

    FragmentTransaction(FragmentFactory fragmentFactory, ClassLoader classLoader) {
        this.mOps = new ArrayList<>();
        this.mAllowAddToBackStack = true;
        this.mReorderingAllowed = false;
        this.mFragmentFactory = fragmentFactory;
        this.mClassLoader = classLoader;
    }

    private Fragment createFragment(Class<? extends Fragment> cls, Bundle bundle) {
        FragmentFactory fragmentFactory = this.mFragmentFactory;
        if (fragmentFactory == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 68, 84, 80, 22, 90, 94, 81, 17, 80, 66, 117, 66, 87, 86, 92, 7, 93, 68, 22, 67, 84, 19, 70, 89, 68, 84, 66, 66, 71, 88, 87, 69, 17, 22, 91, 89, 69, 17, 119, 16, 82, 87, 91, 84, 95, 22, 103, 66, 87, 95, 66, 3, 80, 68, 95, 94, 95, 66, 68, 81, 69, 17, 83, 23, 90, 92, 66, 17, 70, 11, 71, 88, 22, 119, 67, 3, 84, 93, 83, 95, 69, 47, 82, 94, 87, 86, 84, 16, 29, 82, 83, 86, 88, 12, 103, 66, 87, 95, 66, 3, 80, 68, 95, 94, 95, 74, 26}, "0611b3", 2.0120106E9f));
        }
        ClassLoader classLoader = this.mClassLoader;
        if (classLoader == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{50, 90, 82, 17, 118, 68, 7, 85, 90, 84, 94, 66, 43, 83, 89, 80, 87, 83, 20, 18, 90, 68, 67, 66, 70, 80, 82, 17, 81, 66, 18, 83, 84, 89, 85, 82, 70, 70, 88, 17, 89, 66, 21, 90, 88, 66, 68, 22, 18, 93, 23, 82, 66, 83, 7, 70, 82, 17, 81, 22, 32, 64, 86, 86, 93, 83, 8, 70}, "f27106", true));
        }
        Fragment fragmentInstantiate = fragmentFactory.instantiate(classLoader, cls.getName());
        if (bundle != null) {
            fragmentInstantiate.setArguments(bundle);
        }
        return fragmentInstantiate;
    }

    public FragmentTransaction add(int i, Fragment fragment) {
        doAddOp(i, fragment, null, 1);
        return this;
    }

    public FragmentTransaction add(int i, Fragment fragment, String str) {
        doAddOp(i, fragment, str, 1);
        return this;
    }

    public final FragmentTransaction add(int i, Class<? extends Fragment> cls, Bundle bundle) {
        return add(i, createFragment(cls, bundle));
    }

    public final FragmentTransaction add(int i, Class<? extends Fragment> cls, Bundle bundle, String str) {
        return add(i, createFragment(cls, bundle), str);
    }

    FragmentTransaction add(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        return add(viewGroup.getId(), fragment, str);
    }

    public FragmentTransaction add(Fragment fragment, String str) {
        doAddOp(0, fragment, str, 1);
        return this;
    }

    public final FragmentTransaction add(Class<? extends Fragment> cls, Bundle bundle, String str) {
        return add(createFragment(cls, bundle), str);
    }

    void addOp(Op op) {
        this.mOps.add(op);
        op.mEnterAnim = this.mEnterAnim;
        op.mExitAnim = this.mExitAnim;
        op.mPopEnterAnim = this.mPopEnterAnim;
        op.mPopExitAnim = this.mPopExitAnim;
    }

    public FragmentTransaction addSharedElement(View view, String str) {
        if (FragmentTransition.supportsTransition()) {
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{109, 90, 11, 69, 66, 0, 24, 64, 16, 85, 89, 22, 81, 64, 11, 91, 89, 43, 89, 89, 7, 71, 23, 4, 74, 81, 66, 70, 82, 20, 77, 93, 16, 81, 83, 69, 94, 91, 16, 20, 86, 9, 84, 20, 17, 92, 86, 23, 93, 80, 39, 88, 82, 8, 93, 90, 22, 71}, "84b47e", -1.076208981E9d));
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList<>();
                this.mSharedElementTargetNames = new ArrayList<>();
            } else {
                if (this.mSharedElementTargetNames.contains(str)) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{121, 65, 75, 95, 87, 66, 93, 5, 24, 82, 90, 85, 85, 4, 86, 67, 22, 71, 81, 21, 80, 23, 66, 88, 93, 65, 76, 86, 68, 87, 93, 21, 24, 89, 87, 93, 93, 65, 31}, "8a8760", 1.3372138E9f) + str + NPStringFog.decode(new byte[]{30, 21, 9, 5, 22, 24, 88, 89, 19, 1, 4, 92, 64, 21, 3, 1, 0, 86, 25, 84, 5, 0, 0, 92, 25, 65, 14, 68, 17, 80, 92, 21, 21, 22, 4, 86, 74, 84, 2, 16, 12, 87, 87, 27}, "95ade8", -1.5761307E9f));
                }
                if (this.mSharedElementSourceNames.contains(transitionName)) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{117, 18, 71, 9, 87, 75, 81, 86, 20, 4, 90, 92, 89, 87, 90, 21, 22, 78, 93, 70, 92, 65, 66, 81, 81, 18, 71, 14, 67, 75, 87, 87, 20, 15, 87, 84, 81, 18, 19}, "424a69", 9.6180883E8f) + transitionName + NPStringFog.decode(new byte[]{66, 21, 12, 85, 75, 21, 4, 89, 22, 81, 89, 81, 28, 21, 6, 81, 93, 91, 69, 84, 0, 80, 93, 81, 69, 65, 11, 20, 76, 93, 0, 21, 16, 70, 89, 91, 22, 84, 7, 64, 81, 90, 11, 27}, "e5d485", true));
                }
            }
            this.mSharedElementSourceNames.add(transitionName);
            this.mSharedElementTargetNames.add(str);
        }
        return this;
    }

    public FragmentTransaction addToBackStack(String str) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{103, 11, 93, 70, 16, 34, 65, 2, 83, 88, 85, 10, 71, 55, 70, 84, 94, 23, 82, 0, 64, 92, 95, 10, 19, 10, 71, 21, 94, 11, 71, 67, 85, 89, 92, 11, 68, 6, 80, 21, 68, 11, 19, 1, 81, 21, 81, 0, 87, 6, 80, 21, 68, 11, 19, 23, 92, 80, 16, 6, 82, 0, 95, 21, 67, 16, 82, 0, 95, 27}, "3c450d", true, true));
        }
        this.mAddToBackStack = true;
        this.mName = str;
        return this;
    }

    public FragmentTransaction attach(Fragment fragment) {
        addOp(new Op(7, fragment));
        return this;
    }

    public abstract int commit();

    public abstract int commitAllowingStateLoss();

    public abstract void commitNow();

    public abstract void commitNowAllowingStateLoss();

    public FragmentTransaction detach(Fragment fragment) {
        addOp(new Op(6, fragment));
        return this;
    }

    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{96, 11, 92, 71, 22, 67, 70, 2, 91, 71, 87, 84, 64, 10, 90, 90, 22, 94, 71, 67, 84, 88, 68, 82, 85, 7, 76, 20, 84, 82, 93, 13, 82, 20, 87, 83, 80, 6, 81, 20, 66, 88, 20, 23, 93, 81, 22, 85, 85, 0, 94, 20, 69, 67, 85, 0, 94}, "4c5467", true, false));
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    void doAddOp(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 74, 7, 85, 89, 1, 90, 76, 70}, "48f24d", -913509359L) + cls.getCanonicalName() + NPStringFog.decode(new byte[]{25, 89, 67, 18, 77, 16, 91, 81, 22, 0, 25, 64, 76, 86, 90, 8, 90, 16, 74, 64, 87, 21, 80, 83, 25, 87, 90, 0, 74, 67, 25, 64, 89, 65, 91, 85, 25, 20, 70, 19, 86, 64, 92, 70, 90, 24, 25, 66, 92, 87, 68, 4, 88, 68, 92, 80, 22, 7, 75, 95, 84, 20, 95, 15, 74, 68, 88, 90, 85, 4, 25, 67, 77, 85, 66, 4, 23}, "946a90", -1641636972L));
        }
        if (str != null) {
            if (fragment.mTag != null && !str.equals(fragment.mTag)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 84, 10, 66, 71, 25, 5, 93, 5, 11, 84, 92, 70, 65, 5, 2, 19, 86, 0, 21, 2, 23, 82, 94, 11, 80, 10, 17, 19}, "f5de39", false, false) + fragment + NPStringFog.decode(new byte[]{2, 17, 79, 7, 69, 17}, "818f61", -18127) + fragment.mTag + NPStringFog.decode(new byte[]{66, 94, 9, 65, 16}, "b0f607", 30531383L) + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 5, 94, 70, 23, 20, 3, 0, 84, 65, 5, 70, 3, 3, 93, 4, 13, 64, 66}, "bd0ac4", -1.806746E9f) + fragment + NPStringFog.decode(new byte[]{23, 20, 10, 65, 95, 20, 67, 2, 4, 21}, "7cc574", 1.7457111E9f) + str + NPStringFog.decode(new byte[]{25, 22, 14, 21, 5, 91, 87, 22, 0, 92, 8, 81, 75, 66, 23, 92, 3, 67, 25, 21, 8, 65, 14, 20, 87, 13, 65, 92, 2}, "9ba5f4", false));
            }
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != i) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 85, 93, 69, 18, 66, 84, 92, 82, 12, 1, 7, 23, 87, 92, 12, 18, 3, 94, 90, 86, 16, 70, 43, 115, 20, 92, 4, 70, 4, 69, 85, 84, 15, 3, 12, 67, 20}, "743bfb", true, true) + fragment + NPStringFog.decode(new byte[]{11, 66, 69, 84, 17, 65}, "1b25ba", true) + fragment.mFragmentId + NPStringFog.decode(new byte[]{67, 15, 87, 70, 19}, "ca813a", false, false) + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        addOp(new Op(i2, fragment));
    }

    public FragmentTransaction hide(Fragment fragment) {
        addOp(new Op(4, fragment));
        return this;
    }

    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    public FragmentTransaction remove(Fragment fragment) {
        addOp(new Op(3, fragment));
        return this;
    }

    public FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, (String) null);
    }

    public FragmentTransaction replace(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 19, 71, 77, 70, 22, 65, 3, 20, 87, 9, 13, 31, 28, 81, 75, 9, 67, 81, 9, 90, 77, 7, 10, 92, 3, 70, 111, 15, 6, 69, 47, 80}, "2f49fc", 1.69834689E9d));
        }
        doAddOp(i, fragment, str, 2);
        return this;
    }

    public final FragmentTransaction replace(int i, Class<? extends Fragment> cls, Bundle bundle) {
        return replace(i, cls, bundle, null);
    }

    public final FragmentTransaction replace(int i, Class<? extends Fragment> cls, Bundle bundle, String str) {
        return replace(i, createFragment(cls, bundle), str);
    }

    public FragmentTransaction runOnCommit(Runnable runnable) {
        disallowAddToBackStack();
        if (this.mCommitRunnables == null) {
            this.mCommitRunnables = new ArrayList<>();
        }
        this.mCommitRunnables.add(runnable);
        return this;
    }

    @Deprecated
    public FragmentTransaction setAllowOptimization(boolean z) {
        return setReorderingAllowed(z);
    }

    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.mBreadCrumbShortTitleRes = i;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(int i) {
        this.mBreadCrumbTitleRes = i;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    public FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, 0, 0);
    }

    public FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.mEnterAnim = i;
        this.mExitAnim = i2;
        this.mPopEnterAnim = i3;
        this.mPopExitAnim = i4;
        return this;
    }

    public FragmentTransaction setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        addOp(new Op(10, fragment, state));
        return this;
    }

    public FragmentTransaction setPrimaryNavigationFragment(Fragment fragment) {
        addOp(new Op(8, fragment));
        return this;
    }

    public FragmentTransaction setReorderingAllowed(boolean z) {
        this.mReorderingAllowed = z;
        return this;
    }

    public FragmentTransaction setTransition(int i) {
        this.mTransition = i;
        return this;
    }

    @Deprecated
    public FragmentTransaction setTransitionStyle(int i) {
        return this;
    }

    public FragmentTransaction show(Fragment fragment) {
        addOp(new Op(5, fragment));
        return this;
    }
}
