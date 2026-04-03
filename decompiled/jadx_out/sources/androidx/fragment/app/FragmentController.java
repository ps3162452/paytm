package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
public class FragmentController {
    private final FragmentHostCallback<?> mHost;

    private FragmentController(FragmentHostCallback<?> fragmentHostCallback) {
        this.mHost = fragmentHostCallback;
    }

    public static FragmentController createController(FragmentHostCallback<?> fragmentHostCallback) {
        return new FragmentController((FragmentHostCallback) Preconditions.checkNotNull(fragmentHostCallback, NPStringFog.decode(new byte[]{82, 0, 15, 88, 91, 82, 82, 10, 16, 20, 4, 14, 17, 15, 22, 88, 85}, "1ac493", 5.83703363E8d)));
    }

    public void attachHost(Fragment fragment) {
        FragmentManager fragmentManager = this.mHost.mFragmentManager;
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        fragmentManager.attachController(fragmentHostCallback, fragmentHostCallback, fragment);
    }

    public void dispatchActivityCreated() {
        this.mHost.mFragmentManager.dispatchActivityCreated();
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        this.mHost.mFragmentManager.dispatchConfigurationChanged(configuration);
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        return this.mHost.mFragmentManager.dispatchContextItemSelected(menuItem);
    }

    public void dispatchCreate() {
        this.mHost.mFragmentManager.dispatchCreate();
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        return this.mHost.mFragmentManager.dispatchCreateOptionsMenu(menu, menuInflater);
    }

    public void dispatchDestroy() {
        this.mHost.mFragmentManager.dispatchDestroy();
    }

    public void dispatchDestroyView() {
        this.mHost.mFragmentManager.dispatchDestroyView();
    }

    public void dispatchLowMemory() {
        this.mHost.mFragmentManager.dispatchLowMemory();
    }

    public void dispatchMultiWindowModeChanged(boolean z) {
        this.mHost.mFragmentManager.dispatchMultiWindowModeChanged(z);
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        return this.mHost.mFragmentManager.dispatchOptionsItemSelected(menuItem);
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        this.mHost.mFragmentManager.dispatchOptionsMenuClosed(menu);
    }

    public void dispatchPause() {
        this.mHost.mFragmentManager.dispatchPause();
    }

    public void dispatchPictureInPictureModeChanged(boolean z) {
        this.mHost.mFragmentManager.dispatchPictureInPictureModeChanged(z);
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        return this.mHost.mFragmentManager.dispatchPrepareOptionsMenu(menu);
    }

    @Deprecated
    public void dispatchReallyStop() {
    }

    public void dispatchResume() {
        this.mHost.mFragmentManager.dispatchResume();
    }

    public void dispatchStart() {
        this.mHost.mFragmentManager.dispatchStart();
    }

    public void dispatchStop() {
        this.mHost.mFragmentManager.dispatchStop();
    }

    @Deprecated
    public void doLoaderDestroy() {
    }

    @Deprecated
    public void doLoaderRetain() {
    }

    @Deprecated
    public void doLoaderStart() {
    }

    @Deprecated
    public void doLoaderStop(boolean z) {
    }

    @Deprecated
    public void dumpLoaders(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public boolean execPendingActions() {
        return this.mHost.mFragmentManager.execPendingActions(true);
    }

    public Fragment findFragmentByWho(String str) {
        return this.mHost.mFragmentManager.findFragmentByWho(str);
    }

    public List<Fragment> getActiveFragments(List<Fragment> list) {
        return this.mHost.mFragmentManager.getActiveFragments();
    }

    public int getActiveFragmentsCount() {
        return this.mHost.mFragmentManager.getActiveFragmentCount();
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mHost.mFragmentManager;
    }

    @Deprecated
    public LoaderManager getSupportLoaderManager() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{117, 11, 88, 87, 6, 69, 74, 68, 88, 65, 6, 23, 84, 5, 87, 82, 4, 82, 93, 68, 74, 86, 19, 86, 75, 5, 77, 86, 15, 78, 25, 2, 75, 92, 14, 23, 127, 22, 88, 84, 14, 82, 87, 16, 122, 92, 13, 67, 75, 11, 85, 95, 6, 69, 21, 68, 76, 64, 6, 23, 117, 11, 88, 87, 6, 69, 116, 5, 87, 82, 4, 82, 75, 74, 94, 86, 23, 126, 87, 23, 77, 82, 13, 84, 92, 76, 16, 19, 23, 88, 25, 11, 91, 71, 2, 94, 87, 68, 88, 19, 47, 88, 88, 0, 92, 65, 46, 86, 87, 5, 94, 86, 17, 25}, "9d93c7", true));
    }

    public void noteStateNotSaved() {
        this.mHost.mFragmentManager.noteStateNotSaved();
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mHost.mFragmentManager.getLayoutInflaterFactory().onCreateView(view, str, context, attributeSet);
    }

    @Deprecated
    public void reportLoaderStart() {
    }

    @Deprecated
    public void restoreAllState(Parcelable parcelable, FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.mHost.mFragmentManager.restoreAllState(parcelable, fragmentManagerNonConfig);
    }

    @Deprecated
    public void restoreAllState(Parcelable parcelable, List<Fragment> list) {
        this.mHost.mFragmentManager.restoreAllState(parcelable, new FragmentManagerNonConfig(list, null, null));
    }

    @Deprecated
    public void restoreLoaderNonConfig(SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
    }

    public void restoreSaveState(Parcelable parcelable) {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (!(fragmentHostCallback instanceof ViewModelStoreOwner)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{106, 91, 20, 67, 69, 116, 65, 85, 6, 92, 0, 92, 71, 124, 14, 66, 17, 113, 82, 88, 13, 83, 4, 81, 88, 20, 12, 68, 22, 70, 19, 93, 12, 65, 9, 87, 94, 81, 15, 69, 69, 100, 90, 81, 22, 124, 10, 86, 86, 88, 50, 69, 10, 64, 86, 123, 22, 95, 0, 64, 19, 64, 14, 17, 6, 83, 95, 88, 65, 67, 0, 65, 71, 91, 19, 84, 54, 83, 69, 81, 50, 69, 4, 70, 86, 28, 72, 31, 69, 113, 82, 88, 13, 17, 23, 87, 64, 64, 14, 67, 0, 115, 95, 88, 50, 69, 4, 70, 86, 28, 72, 17, 69, 91, 85, 20, 24, 94, 16, 21, 65, 81, 65, 66, 17, 91, 95, 88, 65, 68, 22, 91, 93, 83, 65, 67, 0, 70, 82, 93, 15, 127, 0, 65, 71, 81, 5, 127, 10, 92, 112, 91, 15, 87, 12, 85, 27, 29, 79}, "34a1e2", false, true));
        }
        fragmentHostCallback.mFragmentManager.restoreSaveState(parcelable);
    }

    @Deprecated
    public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        return null;
    }

    @Deprecated
    public FragmentManagerNonConfig retainNestedNonConfig() {
        return this.mHost.mFragmentManager.retainNonConfig();
    }

    @Deprecated
    public List<Fragment> retainNonConfig() {
        FragmentManagerNonConfig fragmentManagerNonConfigRetainNonConfig = this.mHost.mFragmentManager.retainNonConfig();
        if (fragmentManagerNonConfigRetainNonConfig == null || fragmentManagerNonConfigRetainNonConfig.getFragments() == null) {
            return null;
        }
        return new ArrayList(fragmentManagerNonConfigRetainNonConfig.getFragments());
    }

    public Parcelable saveAllState() {
        return this.mHost.mFragmentManager.saveAllState();
    }
}
