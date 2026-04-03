package androidx.fragment.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private static final String SAVED_BACK_STACK_ID = NPStringFog.decode(new byte[]{89, 11, 87, 70, 88, 90, 92, 95, 81, 85, 84, 88, 107, 17, 82, 87, 92, 122, 92}, "8e3473", true);
    private static final String SAVED_CANCELABLE = NPStringFog.decode(new byte[]{89, 92, 82, 16, 91, 90, 92, 8, 85, 3, 90, 80, 93, 94, 87, 0, 88, 86}, "826b43", false, false);
    private static final String SAVED_DIALOG_STATE_TAG = NPStringFog.decode(new byte[]{7, 94, 7, 22, 87, 95, 2, 10, 16, 5, 78, 83, 2, 116, 10, 5, 84, 89, 1, 99, 23, 5, 76, 83}, "f0cd86", true);
    private static final String SAVED_INTERNAL_DIALOG_SHOWING = NPStringFog.decode(new byte[]{83, 95, 0, 70, 94, 10, 86, 11, 0, 93, 80, 15, 93, 86, 55, 92, 94, 20, 91, 95, 3}, "21d41c", 3332);
    private static final String SAVED_SHOWS_DIALOG = NPStringFog.decode(new byte[]{84, 8, 84, 23, 10, 15, 81, 92, 67, 13, 10, 17, 70, 34, 89, 4, 9, 9, 82}, "5f0eef", 5.969187E8f);
    private static final String SAVED_STYLE = NPStringFog.decode(new byte[]{89, 89, 81, 69, 13, 81, 92, 13, 70, 67, 27, 84, 93}, "8757b8", 1459859388L);
    private static final String SAVED_THEME = NPStringFog.decode(new byte[]{80, 88, 1, 70, 92, 92, 85, 12, 17, 92, 86, 88, 84}, "16e435", -1.4843882E9f);
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;
    private int mBackStackId;
    private boolean mCancelable;
    private boolean mCreatingDialog;
    private Dialog mDialog;
    private boolean mDialogCreated;
    private Runnable mDismissRunnable;
    private boolean mDismissed;
    private Handler mHandler;
    private Observer<LifecycleOwner> mObserver;
    private DialogInterface.OnCancelListener mOnCancelListener;
    private DialogInterface.OnDismissListener mOnDismissListener;
    private boolean mShownByMe;
    private boolean mShowsDialog;
    private int mStyle;
    private int mTheme;
    private boolean mViewDestroyed;

    public DialogFragment() {
        this.mDismissRunnable = new Runnable(this) { // from class: androidx.fragment.app.DialogFragment.1
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.mOnDismissListener.onDismiss(this.this$0.mDialog);
            }
        };
        this.mOnCancelListener = new DialogInterface.OnCancelListener(this) { // from class: androidx.fragment.app.DialogFragment.2
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (this.this$0.mDialog != null) {
                    DialogFragment dialogFragment = this.this$0;
                    dialogFragment.onCancel(dialogFragment.mDialog);
                }
            }
        };
        this.mOnDismissListener = new DialogInterface.OnDismissListener(this) { // from class: androidx.fragment.app.DialogFragment.3
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (this.this$0.mDialog != null) {
                    DialogFragment dialogFragment = this.this$0;
                    dialogFragment.onDismiss(dialogFragment.mDialog);
                }
            }
        };
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new Observer<LifecycleOwner>(this) { // from class: androidx.fragment.app.DialogFragment.4
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public void onChanged(LifecycleOwner lifecycleOwner) {
                if (lifecycleOwner == null || !this.this$0.mShowsDialog) {
                    return;
                }
                View viewRequireView = this.this$0.requireView();
                if (viewRequireView.getParent() != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 94, 86, 10, 86, 95, 112, 69, 86, 1, 84, 93, 88, 67, 23, 5, 88, 86, 22, 89, 88, 18, 25, 90, 83, 23, 86, 18, 77, 89, 85, 95, 82, 2, 25, 76, 89, 23, 86, 70, 90, 87, 88, 67, 86, 15, 87, 93, 68, 23, 65, 15, 92, 79}, "677f98", true, true));
                }
                if (this.this$0.mDialog != null) {
                    if (FragmentManager.isLoggingEnabled(3)) {
                        Log.d(NPStringFog.decode(new byte[]{39, 70, 82, 2, 88, 81, 15, 64, 126, 4, 91, 85, 6, 81, 65}, "a43e54", true, false), NPStringFog.decode(new byte[]{33, 95, 0, 15, 94, 5, 35, 68, 0, 4, 92, 7, 11, 66, 65}, "e6ac1b", -726601000L) + this + NPStringFog.decode(new byte[]{65, 64, 80, 21, 76, 89, 15, 84, 21, 21, 80, 85, 65, 80, 90, 15, 76, 85, 15, 71, 21, 23, 81, 85, 22, 19, 90, 15, 24}, "a35a80", -1714127235L) + this.this$0.mDialog);
                    }
                    this.this$0.mDialog.setContentView(viewRequireView);
                }
            }
        };
        this.mDialogCreated = false;
    }

    public DialogFragment(int i) {
        super(i);
        this.mDismissRunnable = new Runnable(this) { // from class: androidx.fragment.app.DialogFragment.1
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.mOnDismissListener.onDismiss(this.this$0.mDialog);
            }
        };
        this.mOnCancelListener = new DialogInterface.OnCancelListener(this) { // from class: androidx.fragment.app.DialogFragment.2
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (this.this$0.mDialog != null) {
                    DialogFragment dialogFragment = this.this$0;
                    dialogFragment.onCancel(dialogFragment.mDialog);
                }
            }
        };
        this.mOnDismissListener = new DialogInterface.OnDismissListener(this) { // from class: androidx.fragment.app.DialogFragment.3
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (this.this$0.mDialog != null) {
                    DialogFragment dialogFragment = this.this$0;
                    dialogFragment.onDismiss(dialogFragment.mDialog);
                }
            }
        };
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new Observer<LifecycleOwner>(this) { // from class: androidx.fragment.app.DialogFragment.4
            final DialogFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.Observer
            public void onChanged(LifecycleOwner lifecycleOwner) {
                if (lifecycleOwner == null || !this.this$0.mShowsDialog) {
                    return;
                }
                View viewRequireView = this.this$0.requireView();
                if (viewRequireView.getParent() != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 94, 86, 10, 86, 95, 112, 69, 86, 1, 84, 93, 88, 67, 23, 5, 88, 86, 22, 89, 88, 18, 25, 90, 83, 23, 86, 18, 77, 89, 85, 95, 82, 2, 25, 76, 89, 23, 86, 70, 90, 87, 88, 67, 86, 15, 87, 93, 68, 23, 65, 15, 92, 79}, "677f98", true, true));
                }
                if (this.this$0.mDialog != null) {
                    if (FragmentManager.isLoggingEnabled(3)) {
                        Log.d(NPStringFog.decode(new byte[]{39, 70, 82, 2, 88, 81, 15, 64, 126, 4, 91, 85, 6, 81, 65}, "a43e54", true, false), NPStringFog.decode(new byte[]{33, 95, 0, 15, 94, 5, 35, 68, 0, 4, 92, 7, 11, 66, 65}, "e6ac1b", -726601000L) + this + NPStringFog.decode(new byte[]{65, 64, 80, 21, 76, 89, 15, 84, 21, 21, 80, 85, 65, 80, 90, 15, 76, 85, 15, 71, 21, 23, 81, 85, 22, 19, 90, 15, 24}, "a35a80", -1714127235L) + this.this$0.mDialog);
                    }
                    this.this$0.mDialog.setContentView(viewRequireView);
                }
            }
        };
        this.mDialogCreated = false;
    }

    private void dismissInternal(boolean z, boolean z2) {
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.mHandler.getLooper()) {
                    onDismiss(this.mDialog);
                } else {
                    this.mHandler.post(this.mDismissRunnable);
                }
            }
        }
        this.mViewDestroyed = true;
        if (this.mBackStackId >= 0) {
            getParentFragmentManager().popBackStack(this.mBackStackId, 1);
            this.mBackStackId = -1;
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getParentFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.remove(this);
        if (z) {
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commit();
        }
    }

    private void prepareDialog(Bundle bundle) {
        if (this.mShowsDialog && !this.mDialogCreated) {
            try {
                this.mCreatingDialog = true;
                Dialog dialogOnCreateDialog = onCreateDialog(bundle);
                this.mDialog = dialogOnCreateDialog;
                if (this.mShowsDialog) {
                    setupDialog(dialogOnCreateDialog, this.mStyle);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.mDialog.setOwnerActivity((Activity) context);
                    }
                    this.mDialog.setCancelable(this.mCancelable);
                    this.mDialog.setOnCancelListener(this.mOnCancelListener);
                    this.mDialog.setOnDismissListener(this.mOnDismissListener);
                    this.mDialogCreated = true;
                } else {
                    this.mDialog = null;
                }
            } finally {
                this.mCreatingDialog = false;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    FragmentContainer createFragmentContainer() {
        return new FragmentContainer(this, super.createFragmentContainer()) { // from class: androidx.fragment.app.DialogFragment.5
            final DialogFragment this$0;
            final FragmentContainer val$fragmentContainer;

            {
                this.this$0 = this;
                this.val$fragmentContainer = fragmentContainer;
            }

            @Override // androidx.fragment.app.FragmentContainer
            public View onFindViewById(int i) {
                return this.val$fragmentContainer.onHasView() ? this.val$fragmentContainer.onFindViewById(i) : this.this$0.onFindViewById(i);
            }

            @Override // androidx.fragment.app.FragmentContainer
            public boolean onHasView() {
                return this.val$fragmentContainer.onHasView() || this.this$0.onHasView();
            }
        };
    }

    public void dismiss() {
        dismissInternal(false, false);
    }

    public void dismissAllowingStateLoss() {
        dismissInternal(true, false);
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    public boolean getShowsDialog() {
        return this.mShowsDialog;
    }

    public int getTheme() {
        return this.mTheme;
    }

    public boolean isCancelable() {
        return this.mCancelable;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().observeForever(this.mObserver);
        if (this.mShownByMe) {
            return;
        }
        this.mDismissed = false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler();
        this.mShowsDialog = this.mContainerId == 0;
        if (bundle != null) {
            this.mStyle = bundle.getInt(SAVED_STYLE, 0);
            this.mTheme = bundle.getInt(SAVED_THEME, 0);
            this.mCancelable = bundle.getBoolean(SAVED_CANCELABLE, true);
            this.mShowsDialog = bundle.getBoolean(SAVED_SHOWS_DIALOG, this.mShowsDialog);
            this.mBackStackId = bundle.getInt(SAVED_BACK_STACK_ID, -1);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(NPStringFog.decode(new byte[]{113, 20, 84, 4, 91, 0, 89, 18, 120, 2, 88, 4, 80, 3, 71}, "7f5c6e", -1.197251106E9d), NPStringFog.decode(new byte[]{9, 11, 34, 66, 93, 88, 18, 0, 37, 89, 89, 85, 9, 2, 65, 83, 89, 85, 10, 0, 5, 16, 94, 86, 20, 69, 37, 89, 89, 85, 9, 2, 39, 66, 89, 94, 11, 0, 15, 68, 24}, "fea089", true) + this);
        }
        return new Dialog(requireContext(), getTheme());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = true;
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!this.mDismissed) {
                onDismiss(this.mDialog);
            }
            this.mDialog = null;
            this.mDialogCreated = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        getViewLifecycleOwnerLiveData().removeObserver(this.mObserver);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(NPStringFog.decode(new byte[]{39, 20, 86, 94, 93, 82, 15, 18, 122, 88, 94, 86, 6, 3, 69}, "af7907", 8685), NPStringFog.decode(new byte[]{87, 86, 116, 91, 65, 95, 81, 75, 67, 18, 81, 83, 84, 84, 85, 86, 18, 84, 87, 74, 16, 118, 91, 83, 84, 87, 87, 116, 64, 83, 95, 85, 85, 92, 70, 18}, "880222", 1.868124899E9d) + this);
        }
        dismissInternal(true, true);
    }

    View onFindViewById(int i) {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        if (this.mShowsDialog && !this.mCreatingDialog) {
            prepareDialog(bundle);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.d(NPStringFog.decode(new byte[]{113, 74, 7, 87, 90, 86, 89, 76, 43, 81, 89, 82, 80, 93, 20}, "78f073", 1.704025403E9d), NPStringFog.decode(new byte[]{81, 81, 71, 68, 13, 83, 79, 91, 70, 16, 65, 91, 88, 82, 95, 5, 21, 87, 68, 20, 85, 11, 19, 18, 114, 93, 82, 8, 14, 85, 112, 70, 82, 3, 12, 87, 88, 64, 19}, "643da2", 1.9093815E9f) + this + NPStringFog.decode(new byte[]{24, 7, 17, 12, 91, 16, 92, 8, 2, 15, 89, 87, 24, 2, 12, 13, 66, 85, 64, 21}, "8acc60", true));
            }
            Dialog dialog = this.mDialog;
            return dialog != null ? layoutInflaterOnGetLayoutInflater.cloneInContext(dialog.getContext()) : layoutInflaterOnGetLayoutInflater;
        }
        if (!FragmentManager.isLoggingEnabled(2)) {
            return layoutInflaterOnGetLayoutInflater;
        }
        String str = NPStringFog.decode(new byte[]{3, 0, 65, 16, 12, 86, 3, 69, 89, 5, 28, 87, 17, 17, 21, 13, 11, 94, 8, 4, 65, 1, 23, 24, 2, 10, 71, 68, 33, 81, 5, 9, 90, 3, 35, 74, 5, 2, 88, 1, 11, 76, 68}, "de5de8", -1.683892E8f) + this;
        if (this.mShowsDialog) {
            Log.d(NPStringFog.decode(new byte[]{32, 64, 2, 95, 91, 4, 8, 70, 46, 89, 88, 0, 1, 87, 17}, "f2c86a", -17881), NPStringFog.decode(new byte[]{9, 37, 68, 3, 5, 76, 13, 8, 81, 34, 13, 89, 8, 9, 81, 70, 89, 24, 16, 20, 67, 3, 94, 24}, "df6fd8", -1777587012L) + str);
            return layoutInflaterOnGetLayoutInflater;
        }
        Log.d(NPStringFog.decode(new byte[]{35, 23, 5, 94, 85, 93, 11, 17, 41, 88, 86, 89, 2, 0, 22}, "eed988", 1.8193266E9f), NPStringFog.decode(new byte[]{92, 102, 10, 88, 65, 68, 117, 92, 3, 91, 89, 80, 17, 8, 66, 81, 87, 91, 66, 80, 88, 23}, "15b767", -1606585886L) + str);
        return layoutInflaterOnGetLayoutInflater;
    }

    boolean onHasView() {
        return this.mDialogCreated;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean(SAVED_INTERNAL_DIALOG_SHOWING, false);
            bundle.putBundle(SAVED_DIALOG_STATE_TAG, bundleOnSaveInstanceState);
        }
        int i = this.mStyle;
        if (i != 0) {
            bundle.putInt(SAVED_STYLE, i);
        }
        int i2 = this.mTheme;
        if (i2 != 0) {
            bundle.putInt(SAVED_THEME, i2);
        }
        boolean z = this.mCancelable;
        if (!z) {
            bundle.putBoolean(SAVED_CANCELABLE, z);
        }
        boolean z2 = this.mShowsDialog;
        if (!z2) {
            bundle.putBoolean(SAVED_SHOWS_DIALOG, z2);
        }
        int i3 = this.mBackStackId;
        if (i3 != -1) {
            bundle.putInt(SAVED_BACK_STACK_ID, i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = false;
            dialog.show();
            View decorView = this.mDialog.getWindow().getDecorView();
            ViewTreeLifecycleOwner.set(decorView, this);
            ViewTreeViewModelStoreOwner.set(decorView, this);
            ViewTreeSavedStateRegistryOwner.set(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 81, 87, 8, 95, 95, 32, 74, 87, 3, 93, 93, 8, 76, 22}, "f86d08", 1.9991247E9f) + this + NPStringFog.decode(new byte[]{20, 87, 91, 92, 70, 70, 90, 92, 64, 25, 93, 7, 66, 86, 20, 88, 21, 34, 93, 82, 88, 86, 82, 72}, "43495f", 18984));
    }

    public void setCancelable(boolean z) {
        this.mCancelable = z;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void setShowsDialog(boolean z) {
        this.mShowsDialog = z;
    }

    public void setStyle(int i, int i2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.d(NPStringFog.decode(new byte[]{32, 19, 87, 94, 94, 84, 8, 21, 123, 88, 93, 80, 1, 4, 68}, "fa6931", 5122), NPStringFog.decode(new byte[]{99, 1, 68, 22, 88, 88, 87, 68, 67, 22, 72, 90, 85, 68, 81, 12, 85, 22, 68, 12, 85, 15, 84, 22, 86, 11, 66, 66, 117, 95, 81, 8, 95, 5, 119, 68, 81, 3, 93, 7, 95, 66, 16}, "0d0b16", -946596190L) + this + NPStringFog.decode(new byte[]{66, 64, 14, 24}, "b4a8b1", 1118029543L) + i + NPStringFog.decode(new byte[]{79, 68}, "cd4e6f", true) + i2);
        }
        this.mStyle = i;
        if (i == 2 || i == 3) {
            this.mTheme = R.style.Theme.Panel;
        }
        if (i2 != 0) {
            this.mTheme = i2;
        }
    }

    public void setupDialog(Dialog dialog, int i) {
        switch (i) {
            case 1:
            case 2:
                break;
            case 3:
                Window window = dialog.getWindow();
                if (window != null) {
                    window.addFlags(24);
                }
                break;
            default:
                return;
        }
        dialog.requestWindowFeature(1);
    }

    public int show(FragmentTransaction fragmentTransaction, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        fragmentTransaction.add(this, str);
        this.mViewDestroyed = false;
        int iCommit = fragmentTransaction.commit();
        this.mBackStackId = iCommit;
        return iCommit;
    }

    public void show(FragmentManager fragmentManager, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commit();
    }

    public void showNow(FragmentManager fragmentManager, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commitNow();
    }
}
