package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    private static final String TAG = NPStringFog.decode(new byte[]{36, 67, 3, 80, 84, 6, 12, 69, 47, 86, 87, 2, 5, 84, 16}, "b1b79c", false);
    boolean mCommitted;
    int mIndex;
    final FragmentManager mManager;

    BackStackRecord(FragmentManager fragmentManager) {
        super(fragmentManager.getFragmentFactory(), fragmentManager.getHost() != null ? fragmentManager.getHost().getContext().getClassLoader() : null);
        this.mIndex = -1;
        this.mManager = fragmentManager;
    }

    private static boolean isFragmentPostponed(FragmentTransaction.Op op) {
        Fragment fragment = op.mFragment;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{115, 68, 94, 20, 17, 15, 84, 66, 71, 13, 95, 6, 17, 88, 93, 68}, "113d1a", -4.4933504E8f) + this + NPStringFog.decode(new byte[]{66, 3, 27, 18}, "bab2ac", false, true) + i);
            }
            int size = this.mOps.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.Op op = this.mOps.get(i2);
                if (op.mFragment != null) {
                    op.mFragment.mBackStackNesting += i;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(TAG, NPStringFog.decode(new byte[]{112, 77, 91, 64, 25, 89, 87, 75, 66, 89, 87, 80, 18, 87, 80, 16}, "286097", true, true) + op.mFragment + NPStringFog.decode(new byte[]{21, 76, 93, 18}, "58225b", true, false) + op.mFragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{90, 13, 9, 95, 11, 23, 25, 3, 8, 64, 7, 2, 93, 27, 68, 81, 3, 15, 85, 7, 0}, "9bd2bc", false, true));
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{114, 88, 84, 92, 10, 64, 11, 23}, "1791c4", -174286697L) + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
            dump("  ", printWriter);
            printWriter.close();
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex();
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction detach(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.detach(fragment);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 84, 15, 13, 89, 64, 70, 81, 4, 23, 87, 87, 14, 21, 39, 17, 87, 83, 11, 80, 15, 23, 22, 85, 18, 65, 0, 0, 94, 81, 2, 21, 21, 12, 22, 85, 70, 81, 8, 5, 80, 81, 20, 80, 15, 23, 22, 114, 20, 84, 6, 14, 83, 90, 18, 120, 0, 13, 87, 83, 3, 71, 79, 67, 112, 70, 7, 82, 12, 6, 88, 64, 70}, "f5ac64", 8446) + fragment.toString() + NPStringFog.decode(new byte[]{21, 93, 74, 19, 83, 94, 71, 81, 88, 87, 75, 18, 84, 64, 77, 82, 81, 90, 80, 80, 25, 71, 93, 18, 84, 20, 127, 65, 83, 85, 88, 81, 87, 71, 127, 83, 91, 85, 94, 86, 64, 28}, "549322", -1928562564L));
    }

    @Override // androidx.fragment.app.FragmentTransaction
    void doAddOp(int i, Fragment fragment, String str, int i2) {
        super.doAddOp(i, fragment, str, i2);
        fragment.mFragmentManager = this.mManager;
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        String strDecode;
        if (z) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{94, 124, 5, 88, 1, 92}, "32d5da", -9408));
            printWriter.print(this.mName);
            printWriter.print(NPStringFog.decode(new byte[]{24, 85, 44, 12, 85, 3, 64, 5}, "88eb1f", false));
            printWriter.print(this.mIndex);
            printWriter.print(NPStringFog.decode(new byte[]{66, 93, 113, 88, 92, 91, 11, 68, 70, 82, 85, 11}, "b02716", -225268442L));
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{11, 49, 68, 2, 12, 23, 15, 17, 95, 12, 12, 89, 69}, "fe6cbd", 8146));
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{84, 112, 12, 21, 82, 22, 120, 91, 11, 12, 10, 71}, "95ba7d", 31527));
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(NPStringFog.decode(new byte[]{20, 90, 118, 74, 91, 76, 117, 89, 90, 95, 15, 27}, "473228", false, false));
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{88, 98, 9, 67, 113, 89, 65, 87, 20, 114, 90, 94, 88, 15, 69}, "52f347", 594255510L));
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(NPStringFog.decode(new byte[]{19, 92, 50, 88, 64, 124, 75, 88, 22, 118, 94, 80, 94, 12, 65}, "31b709", false, true));
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{92, 36, 70, 84, 7, 85, 114, 20, 65, 92, 4, 101, 88, 18, 88, 84, 52, 84, 66, 91, 23}, "1f41f1", 18784));
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(NPStringFog.decode(new byte[]{69, 94, 123, 71, 86, 0, 1, 112, 75, 64, 94, 3, 49, 90, 77, 89, 86, 53, 0, 75, 77, 8}, "e3953a", -304981226L));
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{94, 112, 74, 0, 84, 84, 112, 64, 77, 8, 87, 99, 91, 93, 74, 17, 97, 89, 71, 94, 93, 55, 80, 67, 14, 17}, "328e50", true, true));
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(NPStringFog.decode(new byte[]{20, 9, 32, 67, 7, 0, 80, 39, 16, 68, 15, 3, 103, 12, 13, 67, 22, 53, 93, 16, 14, 84, 54, 4, 76, 16, 95}, "4db1ba", false, true));
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mOps.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println(NPStringFog.decode(new byte[]{127, 66, 83, 70, 87, 70, 89, 93, 88, 71, 12}, "026462", -1.6231099E8f));
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.Op op = this.mOps.get(i);
            switch (op.mCmd) {
                case 0:
                    strDecode = NPStringFog.decode(new byte[]{43, 52, 116, 127}, "ea833f", false);
                    break;
                case 1:
                    strDecode = NPStringFog.decode(new byte[]{117, 33, 112}, "4e493e", 1.5498601E9f);
                    break;
                case 2:
                    strDecode = NPStringFog.decode(new byte[]{52, 39, 54, 117, 113, 117, 35}, "fbf906", -1.8466652E9f);
                    break;
                case 3:
                    strDecode = NPStringFog.decode(new byte[]{101, 117, 41, 44, 110, 116}, "70dc81", 1836310376L);
                    break;
                case 4:
                    strDecode = NPStringFog.decode(new byte[]{120, 121, 117, 112}, "0015e1", false);
                    break;
                case 5:
                    strDecode = NPStringFog.decode(new byte[]{48, 120, 44, 111}, "c0c8db", -1.8913315E9f);
                    break;
                case 6:
                    strDecode = NPStringFog.decode(new byte[]{115, 36, 102, 115, 117, 121}, "7a2261", true);
                    break;
                case 7:
                    strDecode = NPStringFog.decode(new byte[]{116, 49, 49, 115, 113, 123}, "5ee223", -1.3294642E9f);
                    break;
                case 8:
                    strDecode = NPStringFog.decode(new byte[]{54, 36, 101, 59, 51, 98, 44, 44, 112, 54, 58, 111, 43, 32, 103}, "ea1dc0", 328147040L);
                    break;
                case 9:
                    strDecode = NPStringFog.decode(new byte[]{108, 45, 54, 112, 55, 110, 105, 49, 44, 120, 34, 99, 96, 60, 43, 116, 53}, "9ce5c1", -2.0762185E9f);
                    break;
                case 10:
                    strDecode = NPStringFog.decode(new byte[]{43, 53, 104, 107, 116, 103, 59, 40, 118, 96, 110, 127, 45, 35, 114, 123, 104, 112, 40, 32}, "de7813", 1.1431341E9f);
                    break;
                default:
                    strDecode = NPStringFog.decode(new byte[]{5, 95, 81, 91}, "f25f51", false, false) + op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{69, 68, 120, 22, 23, 65}, "ed7f7b", -1.674475E9f));
            printWriter.print(i);
            printWriter.print(NPStringFog.decode(new byte[]{2, 24}, "88b78f", 2.053182092E9d));
            printWriter.print(strDecode);
            printWriter.print(" ");
            printWriter.println(op.mFragment);
            if (z) {
                if (op.mEnterAnim != 0 || op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print(NPStringFog.decode(new byte[]{7, 87, 69, 93, 16, 120, 12, 80, 92, 5, 65}, "b918b9", -26287));
                    printWriter.print(Integer.toHexString(op.mEnterAnim));
                    printWriter.print(NPStringFog.decode(new byte[]{16, 84, 29, 12, 68, 118, 94, 88, 8, 88, 19}, "01ee07", -31305));
                    printWriter.println(Integer.toHexString(op.mExitAnim));
                }
                if (op.mPopEnterAnim != 0 || op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print(NPStringFog.decode(new byte[]{66, 86, 73, 33, 87, 22, 87, 75, 120, 10, 80, 15, 15, 26}, "299d9b", true));
                    printWriter.print(Integer.toHexString(op.mPopEnterAnim));
                    printWriter.print(NPStringFog.decode(new byte[]{20, 20, 14, 69, 35, 75, 93, 16, 32, 91, 15, 94, 9, 71}, "4da5f3", 5.9961043E8f));
                    printWriter.println(Integer.toHexString(op.mPopExitAnim));
                }
            }
        }
    }

    void executeOps() {
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.Op op = this.mOps.get(i);
            Fragment fragment = op.mFragment;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.mTransition);
                fragment.setSharedElementNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames);
            }
            switch (op.mCmd) {
                case 1:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.addFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{103, 15, 93, 94, 93, 65, 92, 65, 85, 93, 86, 12, 18}, "2a6026", -1635638190L) + op.mCmd);
                case 3:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.hideFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.showFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.attachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, op.mCurrentMaxState);
                    break;
            }
            if (!this.mReorderingAllowed && op.mCmd != 1 && fragment != null && !FragmentManager.USE_STATE_MANAGER) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (this.mReorderingAllowed || FragmentManager.USE_STATE_MANAGER) {
            return;
        }
        FragmentManager fragmentManager = this.mManager;
        fragmentManager.moveToState(fragmentManager.mCurState, true);
    }

    void executePopOps(boolean z) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.Op op = this.mOps.get(size);
            Fragment fragment = op.mFragment;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.reverseTransit(this.mTransition));
                fragment.setSharedElementNames(this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
            switch (op.mCmd) {
                case 1:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.removeFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{51, 15, 8, 95, 12, 67, 8, 65, 0, 92, 7, 14, 70}, "fac1c4", -1403956862L) + op.mCmd);
                case 3:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.addFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.showFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.hideFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.detachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, op.mOldMaxState);
                    break;
            }
            if (!this.mReorderingAllowed && op.mCmd != 3 && fragment != null && !FragmentManager.USE_STATE_MANAGER) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (this.mReorderingAllowed || !z || FragmentManager.USE_STATE_MANAGER) {
            return;
        }
        FragmentManager fragmentManager = this.mManager;
        fragmentManager.moveToState(fragmentManager.mCurState, true);
    }

    Fragment expandOps(ArrayList<Fragment> arrayList, Fragment fragment) {
        boolean z;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mOps.size()) {
                return fragment;
            }
            FragmentTransaction.Op op = this.mOps.get(i2);
            switch (op.mCmd) {
                case 1:
                case 7:
                    arrayList.add(op.mFragment);
                    break;
                case 2:
                    Fragment fragment2 = op.mFragment;
                    int i3 = fragment2.mContainerId;
                    boolean z2 = false;
                    int size = arrayList.size() - 1;
                    Fragment fragment3 = fragment;
                    int i4 = i2;
                    while (size >= 0) {
                        Fragment fragment4 = arrayList.get(size);
                        if (fragment4.mContainerId != i3) {
                            z = z2;
                        } else if (fragment4 == fragment2) {
                            z = true;
                        } else {
                            if (fragment4 == fragment3) {
                                this.mOps.add(i4, new FragmentTransaction.Op(9, fragment4));
                                i4++;
                                fragment3 = null;
                            }
                            FragmentTransaction.Op op2 = new FragmentTransaction.Op(3, fragment4);
                            op2.mEnterAnim = op.mEnterAnim;
                            op2.mPopEnterAnim = op.mPopEnterAnim;
                            op2.mExitAnim = op.mExitAnim;
                            op2.mPopExitAnim = op.mPopExitAnim;
                            this.mOps.add(i4, op2);
                            arrayList.remove(fragment4);
                            i4++;
                            z = z2;
                        }
                        size--;
                        z2 = z;
                    }
                    if (z2) {
                        this.mOps.remove(i4);
                        i4--;
                    } else {
                        op.mCmd = 1;
                        arrayList.add(fragment2);
                    }
                    i2 = i4;
                    fragment = fragment3;
                    break;
                case 3:
                case 6:
                    arrayList.remove(op.mFragment);
                    if (op.mFragment == fragment) {
                        this.mOps.add(i2, new FragmentTransaction.Op(9, op.mFragment));
                        i2++;
                        fragment = null;
                    }
                    break;
                case 8:
                    this.mOps.add(i2, new FragmentTransaction.Op(9, fragment));
                    i2++;
                    fragment = op.mFragment;
                    break;
            }
            i = i2 + 1;
        }
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, NPStringFog.decode(new byte[]{54, 20, 87, 10, 25}, "da909c", 9508) + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.addBackStackState(this);
        return true;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.getHost().getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.getHost().getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public String getName() {
        return this.mName;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction hide(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.hide(fragment);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 7, 13, 11, 90, 70, 18, 14, 10, 1, 80, 18, 116, 20, 2, 2, 88, 87, 92, 18, 67, 4, 65, 70, 83, 5, 11, 0, 81, 18, 70, 9, 67, 4, 21, 86, 91, 0, 5, 0, 71, 87, 92, 18, 67, 35, 71, 83, 85, 11, 6, 11, 65, 127, 83, 8, 2, 2, 80, 64, 28, 70, 37, 23, 84, 85, 95, 3, 13, 17, 21}, "2fce52", 1236880358L) + fragment.toString() + NPStringFog.decode(new byte[]{67, 10, 17, 16, 87, 13, 17, 6, 3, 84, 79, 65, 2, 23, 22, 81, 85, 9, 6, 7, 66, 68, 89, 65, 2, 67, 36, 66, 87, 6, 14, 6, 12, 68, 123, 0, 13, 2, 5, 85, 68, 79}, "ccb06a", true));
    }

    boolean interactsWith(int i) {
        int size = this.mOps.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.Op op = this.mOps.get(i2);
            int i3 = op.mFragment != null ? op.mFragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    boolean interactsWith(ArrayList<BackStackRecord> arrayList, int i, int i2) {
        int i3;
        if (i2 == i) {
            return false;
        }
        int size = this.mOps.size();
        int i4 = -1;
        int i5 = 0;
        while (i5 < size) {
            FragmentTransaction.Op op = this.mOps.get(i5);
            int i6 = op.mFragment != null ? op.mFragment.mContainerId : 0;
            if (i6 == 0 || i6 == i4) {
                i3 = i4;
            } else {
                for (int i7 = i; i7 < i2; i7++) {
                    BackStackRecord backStackRecord = arrayList.get(i7);
                    int size2 = backStackRecord.mOps.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        FragmentTransaction.Op op2 = backStackRecord.mOps.get(i8);
                        if ((op2.mFragment != null ? op2.mFragment.mContainerId : 0) == i6) {
                            return true;
                        }
                    }
                }
                i3 = i6;
            }
            i5++;
            i4 = i3;
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    boolean isPostponed() {
        for (int i = 0; i < this.mOps.size(); i++) {
            if (isFragmentPostponed(this.mOps.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.remove(fragment);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 5, 12, 8, 87, 18, 69, 22, 7, 11, 87, 16, 0, 68, 36, 20, 89, 1, 8, 1, 12, 18, 24, 7, 17, 16, 3, 5, 80, 3, 1, 68, 22, 9, 24, 7, 69, 0, 11, 0, 94, 3, 23, 1, 12, 18, 24, 32, 23, 5, 5, 11, 93, 8, 17, 41, 3, 8, 89, 1, 0, 22, 76, 70, 126, 20, 4, 3, 15, 3, 86, 18, 69}, "edbf8f", 2.1820754E8d) + fragment.toString() + NPStringFog.decode(new byte[]{16, 15, 75, 66, 0, 91, 66, 3, 89, 6, 24, 23, 81, 18, 76, 3, 2, 95, 85, 2, 24, 22, 14, 23, 81, 70, 126, 16, 0, 80, 93, 3, 86, 22, 44, 86, 94, 7, 95, 7, 19, 25}, "0f8ba7", -446199242L));
    }

    public void runOnCommitRunnables() {
        if (this.mCommitRunnables == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mCommitRunnables.size()) {
                this.mCommitRunnables = null;
                return;
            } else {
                this.mCommitRunnables.get(i2).run();
                i = i2 + 1;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        if (fragment.mFragmentManager != this.mManager) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 86, 88, 86, 88, 23, 21, 68, 83, 76, 122, 2, 77, 123, 95, 94, 82, 0, 76, 84, 90, 93, 23, 5, 90, 69, 22, 126, 69, 2, 82, 90, 83, 86, 67, 67, 91, 88, 66, 24, 86, 23, 65, 86, 85, 80, 82, 7, 21, 67, 89, 24, 113, 17, 84, 80, 91, 93, 89, 23, 120, 86, 88, 89, 80, 6, 71, 23}, "57687c", false) + this.mManager);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{119, 82, 11, 91, 11, 67, 20, 64, 0, 65, 68, 90, 85, 75, 12, 88, 17, 90, 20, 127, 12, 83, 1, 84, 77, 80, 9, 80, 68, 67, 91, 19}, "43e5d7", -32426) + state + NPStringFog.decode(new byte[]{21, 87, 7, 21, 80, 23, 21, 66, 9, 4, 21, 35, 71, 87, 6, 12, 80, 11, 65, 22, 9, 0, 70, 69, 87, 83, 4, 15, 21, 6, 71, 83, 0, 21, 80, 1}, "56aa5e", true));
        }
        if (state != Lifecycle.State.DESTROYED) {
            return super.setMaxLifecycle(fragment, state);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 82, 15, 10, 9, 23, 65, 64, 4, 16, 70, 14, 0, 75, 8, 9, 19, 14, 65, 127, 8, 2, 3, 0, 24, 80, 13, 1, 70, 23, 14, 19}, "a3adfc", 2.03947113E8d) + state + NPStringFog.decode(new byte[]{72, 70, 48, 68, 86, 21, 20, 3, 8, 88, 69, 80, 78, 79, 69, 67, 92, 21, 20, 3, 8, 88, 69, 80, 70, 18, 13, 82, 19, 83, 20, 7, 2, 90, 86, 91, 18, 70, 3, 69, 92, 88, 70, 18, 13, 82, 19, 115, 20, 7, 2, 90, 86, 91, 18, 43, 4, 89, 82, 82, 3, 20, 69, 86, 93, 81, 70, 18, 23, 94, 84, 82, 3, 20, 69, 94, 71, 70, 70, 2, 0, 68, 71, 71, 19, 5, 17, 94, 92, 91, 72}, "ffe735", true, true));
    }

    void setOnStartPostponedListener(Fragment.OnStartEnterTransitionListener onStartEnterTransitionListener) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mOps.size()) {
                return;
            }
            FragmentTransaction.Op op = this.mOps.get(i2);
            if (isFragmentPostponed(op)) {
                op.mFragment.setOnStartEnterTransitionListener(onStartEnterTransitionListener);
            }
            i = i2 + 1;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment == null || fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.setPrimaryNavigationFragment(fragment);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{32, 82, 13, 13, 11, 65, 67, 64, 6, 23, 52, 71, 10, 94, 2, 17, 29, 123, 2, 69, 10, 4, 5, 65, 10, 92, 13, 67, 2, 90, 17, 19, 37, 17, 5, 82, 14, 86, 13, 23, 68, 84, 23, 71, 2, 0, 12, 80, 7, 19, 23, 12, 68, 84, 67, 87, 10, 5, 2, 80, 17, 86, 13, 23, 68, 115, 17, 82, 4, 14, 1, 91, 23, 126, 2, 13, 5, 82, 6, 65, 77, 67, 34, 71, 2, 84, 14, 6, 10, 65, 67}, "c3ccd5", false) + fragment.toString() + NPStringFog.decode(new byte[]{68, 92, 18, 67, 85, 14, 22, 80, 0, 7, 77, 66, 5, 65, 21, 2, 87, 10, 1, 81, 65, 23, 91, 66, 5, 21, 39, 17, 85, 5, 9, 80, 15, 23, 121, 3, 10, 84, 6, 6, 70, 76}, "d5ac4b", false));
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction show(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.show(fragment);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 0, 88, 87, 87, 65, 16, 18, 94, 86, 79, 21, 118, 19, 87, 94, 85, 80, 94, 21, 22, 88, 76, 65, 81, 2, 94, 92, 92, 21, 68, 14, 22, 88, 24, 81, 89, 7, 80, 92, 74, 80, 94, 21, 22, 127, 74, 84, 87, 12, 83, 87, 76, 120, 81, 15, 87, 94, 93, 71, 30, 65, 112, 75, 89, 82, 93, 4, 88, 77, 24}, "0a6985", 1.896102947E9d) + fragment.toString() + NPStringFog.decode(new byte[]{17, 8, 68, 20, 87, 94, 67, 4, 86, 80, 79, 18, 80, 21, 67, 85, 85, 90, 84, 5, 23, 64, 89, 18, 80, 65, 113, 70, 87, 85, 92, 4, 89, 64, 123, 83, 95, 0, 80, 81, 68, 28}, "1a7462", 1.340378807E9d));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(NPStringFog.decode(new byte[]{123, 87, 91, 13, 106, 76, 88, 85, 83, 35, 87, 76, 75, 79, 67}, "968f98", 241121214L));
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(NPStringFog.decode(new byte[]{19, 21}, "3634c5", true, true));
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append(NPStringFog.decode(new byte[]{30}, "ceb15d", -12641));
        return sb.toString();
    }

    Fragment trackAddedFragmentsInPop(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2;
        int size = this.mOps.size() - 1;
        Fragment fragment3 = fragment;
        while (size >= 0) {
            FragmentTransaction.Op op = this.mOps.get(size);
            switch (op.mCmd) {
                case 1:
                case 7:
                    arrayList.remove(op.mFragment);
                    fragment2 = fragment3;
                    break;
                case 2:
                case 4:
                case 5:
                default:
                    fragment2 = fragment3;
                    break;
                case 3:
                case 6:
                    arrayList.add(op.mFragment);
                    fragment2 = fragment3;
                    break;
                case 8:
                    fragment2 = null;
                    break;
                case 9:
                    fragment2 = op.mFragment;
                    break;
                case 10:
                    op.mCurrentMaxState = op.mOldMaxState;
                    fragment2 = fragment3;
                    break;
            }
            size--;
            fragment3 = fragment2;
        }
        return fragment3;
    }
}
