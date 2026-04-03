package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public abstract class FragmentHostCallback<E> extends FragmentContainer {
    private final Activity mActivity;
    private final Context mContext;
    final FragmentManager mFragmentManager;
    private final Handler mHandler;
    private final int mWindowAnimations;

    FragmentHostCallback(Activity activity, Context context, Handler handler, int i) {
        this.mFragmentManager = new FragmentManagerImpl();
        this.mActivity = activity;
        this.mContext = (Context) Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{2, 92, 91, 17, 83, 79, 21, 19, 8, 88, 22, 89, 20, 95, 89}, "a35e67", -14098));
        this.mHandler = (Handler) Preconditions.checkNotNull(handler, NPStringFog.decode(new byte[]{10, 82, 15, 5, 84, 92, 16, 19, 92, 92, 24, 87, 23, 95, 13}, "b3aa89", 4.34474184E8d));
        this.mWindowAnimations = i;
    }

    public FragmentHostCallback(Context context, Handler handler, int i) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i);
    }

    FragmentHostCallback(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    Activity getActivity() {
        return this.mActivity;
    }

    Context getContext() {
        return this.mContext;
    }

    Handler getHandler() {
        return this.mHandler;
    }

    public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.FragmentContainer
    public View onFindViewById(int i) {
        return null;
    }

    public abstract E onGetHost();

    public LayoutInflater onGetLayoutInflater() {
        return LayoutInflater.from(this.mContext);
    }

    public int onGetWindowAnimations() {
        return this.mWindowAnimations;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return true;
    }

    public boolean onHasWindowAnimations() {
        return true;
    }

    @Deprecated
    public void onRequestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
    }

    public boolean onShouldSaveFragmentState(Fragment fragment) {
        return true;
    }

    public boolean onShouldShowRequestPermissionRationale(String str) {
        return false;
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i) {
        onStartActivityFromFragment(fragment, intent, i, null);
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{53, 18, 5, 22, 22, 81, 8, 1, 68, 5, 1, 76, 15, 16, 13, 16, 27, 24, 17, 15, 16, 12, 66, 89, 70, 20, 1, 21, 23, 93, 21, 18, 39, 11, 6, 93, 70, 20, 1, 21, 23, 81, 20, 3, 23, 68, 3, 24, 32, 20, 5, 3, 15, 93, 8, 18, 37, 7, 22, 81, 16, 15, 16, 29, 66, 80, 9, 21, 16}, "ffddb8", 1.495276264E9d));
        }
        ContextCompat.startActivity(this.mContext, intent, bundle);
    }

    @Deprecated
    public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{107, 67, 88, 16, 76, 12, 86, 80, 25, 11, 86, 17, 93, 89, 77, 66, 75, 0, 86, 83, 92, 16, 24, 18, 81, 67, 81, 66, 89, 69, 74, 82, 72, 23, 93, 22, 76, 116, 86, 6, 93, 69, 74, 82, 72, 23, 81, 23, 93, 68, 25, 3, 24, 35, 74, 86, 94, 15, 93, 11, 76, 118, 90, 22, 81, 19, 81, 67, 64, 66, 80, 10, 75, 67}, "879b8e", 2060246222L));
        }
        ActivityCompat.startIntentSenderForResult(this.mActivity, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void onSupportInvalidateOptionsMenu() {
    }
}
