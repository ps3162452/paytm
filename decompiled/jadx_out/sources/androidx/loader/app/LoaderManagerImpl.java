package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.SparseArrayCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import n.NPStringFog;

/* JADX INFO: loaded from: classes32.dex */
class LoaderManagerImpl extends LoaderManager {
    private final LifecycleOwner mLifecycleOwner;
    private final LoaderViewModel mLoaderViewModel;
    private static final String TAG = NPStringFog.decode(new byte[]{121, 13, 7, 1, 6, 23, 120, 3, 8, 4, 4, 0, 71}, "5bfece", 9.24397116E8d);
    static boolean DEBUG = false;

    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {
        private final Bundle mArgs;
        private final int mId;
        private LifecycleOwner mLifecycleOwner;
        private final Loader<D> mLoader;
        private LoaderObserver<D> mObserver;
        private Loader<D> mPriorLoader;

        LoaderInfo(int i, Bundle bundle, Loader<D> loader, Loader<D> loader2) {
            this.mId = i;
            this.mArgs = bundle;
            this.mLoader = loader;
            this.mPriorLoader = loader2;
            loader.registerListener(i, this);
        }

        Loader<D> destroy(boolean z) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(NPStringFog.decode(new byte[]{45, 90, 83, 81, 92, 65, 44, 84, 92, 84, 94, 86, 19}, "a52593", -1.53477079E9d), NPStringFog.decode(new byte[]{25, 20, 117, 82, 71, 22, 75, 91, 72, 94, 90, 5, 3, 20}, "94174b", false) + this);
            }
            this.mLoader.cancelLoad();
            this.mLoader.abandon();
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (loaderObserver != null) {
                removeObserver(loaderObserver);
                if (z) {
                    loaderObserver.reset();
                }
            }
            this.mLoader.unregisterListener(this);
            if ((loaderObserver == null || loaderObserver.hasDeliveredData()) && !z) {
                return this.mLoader;
            }
            this.mLoader.reset();
            return this.mPriorLoader;
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{91, 42, 0, 10}, "6cd72c", false));
            printWriter.print(this.mId);
            printWriter.print(NPStringFog.decode(new byte[]{18, 93, 120, 66, 5, 21, 15}, "2090bf", 1.173147894E9d));
            printWriter.println(this.mArgs);
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{90, 127, 10, 84, 7, 6, 69, 14}, "73e5cc", false, true));
            printWriter.println(this.mLoader);
            this.mLoader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.mObserver != null) {
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{11, 118, 86, 90, 84, 4, 7, 86, 92, 69, 5}, "f5768f", -1214734936L));
                printWriter.println(this.mObserver);
                this.mObserver.dump(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{14, 34, 7, 64, 81, 92}, "cff40a", -42188786L));
            printWriter.println(getLoader().dataToString(getValue()));
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{88, 102, 22, 82, 69, 17, 80, 81, 95}, "55b37e", 1.7201523E9f));
            printWriter.println(hasActiveObservers());
        }

        Loader<D> getLoader() {
            return this.mLoader;
        }

        boolean isCallbackWaitingForData() {
            LoaderObserver<D> loaderObserver;
            return (!hasActiveObservers() || (loaderObserver = this.mObserver) == null || loaderObserver.hasDeliveredData()) ? false : true;
        }

        void markForRedelivery() {
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (lifecycleOwner == null || loaderObserver == null) {
                return;
            }
            super.removeObserver(loaderObserver);
            observe(lifecycleOwner, loaderObserver);
        }

        @Override // androidx.lifecycle.LiveData
        protected void onActive() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(NPStringFog.decode(new byte[]{117, 10, 83, 7, 82, 20, 116, 4, 92, 2, 80, 3, 75}, "9e2c7f", 7216), NPStringFog.decode(new byte[]{66, 21, 103, 64, 89, 19, 22, 92, 90, 83, 2, 65}, "b5448a", -25432) + this);
            }
            this.mLoader.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        protected void onInactive() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(NPStringFog.decode(new byte[]{45, 10, 5, 81, 86, 70, 44, 4, 10, 84, 84, 81, 19}, "aed534", true, true), NPStringFog.decode(new byte[]{18, 16, 48, 65, 94, 22, 66, 89, 13, 82, 11, 70}, "20c51f", -4760) + this);
            }
            this.mLoader.stopLoading();
        }

        @Override // androidx.loader.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(Loader<D> loader, D d) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(NPStringFog.decode(new byte[]{122, 13, 2, 86, 3, 74, 123, 3, 13, 83, 1, 93, 68}, "6bc2f8", false), NPStringFog.decode(new byte[]{90, 89, 40, 10, 87, 81, 118, 88, 9, 21, 90, 80, 65, 82, 94, 69}, "57de65", 1325) + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(d);
                return;
            }
            if (LoaderManagerImpl.DEBUG) {
                Log.w(NPStringFog.decode(new byte[]{116, 11, 7, 82, 6, 20, 117, 5, 8, 87, 4, 3, 74}, "8df6cf", true), NPStringFog.decode(new byte[]{86, 86, 116, 9, 86, 87, 122, 87, 85, 22, 91, 86, 77, 93, 24, 17, 86, 64, 25, 81, 86, 5, 88, 65, 75, 93, 91, 18, 91, 74, 25, 91, 89, 10, 91, 86, 93, 24, 87, 8, 23, 82, 25, 90, 89, 5, 92, 84, 75, 87, 77, 8, 83, 19, 77, 80, 74, 3, 86, 87}, "988f73", false, true));
            }
            postValue(d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void removeObserver(Observer<? super D> observer) {
            super.removeObserver(observer);
            this.mLifecycleOwner = null;
            this.mObserver = null;
        }

        Loader<D> setCallback(LifecycleOwner lifecycleOwner, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            LoaderObserver<D> loaderObserver = new LoaderObserver<>(this.mLoader, loaderCallbacks);
            observe(lifecycleOwner, loaderObserver);
            LoaderObserver<D> loaderObserver2 = this.mObserver;
            if (loaderObserver2 != null) {
                removeObserver(loaderObserver2);
            }
            this.mLifecycleOwner = lifecycleOwner;
            this.mObserver = loaderObserver;
            return this.mLoader;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(D d) {
            super.setValue(d);
            Loader<D> loader = this.mPriorLoader;
            if (loader != null) {
                loader.reset();
                this.mPriorLoader = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append(NPStringFog.decode(new byte[]{42, 11, 81, 85, 81, 70, 47, 10, 86, 94, 79}, "fd0144", -8.489734E8f));
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(NPStringFog.decode(new byte[]{17, 21}, "167529", 1.993416897E9d));
            sb.append(this.mId);
            sb.append(NPStringFog.decode(new byte[]{66, 10, 16}, "b00aa1", true));
            Class<?> cls = this.mLoader.getClass();
            sb.append(cls.getSimpleName());
            sb.append(NPStringFog.decode(new byte[]{75}, "03058a", false));
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append(NPStringFog.decode(new byte[]{74, 79}, "726933", false));
            return sb.toString();
        }
    }

    static class LoaderObserver<D> implements Observer<D> {
        private final LoaderManager.LoaderCallbacks<D> mCallback;
        private boolean mDeliveredData = false;
        private final Loader<D> mLoader;

        LoaderObserver(Loader<D> loader, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.mLoader = loader;
            this.mCallback = loaderCallbacks;
        }

        public void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{91, 117, 93, 85, 8, 66, 83, 67, 93, 93, 37, 85, 66, 80, 5}, "6189a4", 2.0476893E9f));
            printWriter.println(this.mDeliveredData);
        }

        boolean hasDeliveredData() {
            return this.mDeliveredData;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(D d) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(NPStringFog.decode(new byte[]{127, 9, 4, 82, 80, 69, 126, 7, 11, 87, 82, 82, 65}, "3fe657", false), NPStringFog.decode(new byte[]{18, 70, 11, 8, 122, 95, 83, 2, 34, 15, 88, 89, 65, 14, 1, 2, 22, 89, 92, 70}, "2fdf60", 51646297L) + this.mLoader + NPStringFog.decode(new byte[]{3, 67}, "9c31fc", 3.66159045E8d) + this.mLoader.dataToString(d));
            }
            this.mDeliveredData = true;
            this.mCallback.onLoadFinished(this.mLoader, d);
        }

        void reset() {
            if (this.mDeliveredData) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(NPStringFog.decode(new byte[]{123, 95, 89, 2, 80, 19, 122, 81, 86, 7, 82, 4, 69}, "708f5a", true, true), NPStringFog.decode(new byte[]{21, 67, 55, 0, 70, 86, 65, 23, 12, 11, 82, 9, 21}, "5cee53", 1638181704L) + this.mLoader);
                }
                this.mCallback.onLoaderReset(this.mLoader);
            }
        }

        public String toString() {
            return this.mCallback.toString();
        }
    }

    static class LoaderViewModel extends ViewModel {
        private static final ViewModelProvider.Factory FACTORY = new ViewModelProvider.Factory() { // from class: androidx.loader.app.LoaderManagerImpl.LoaderViewModel.1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public <T extends ViewModel> T create(Class<T> cls) {
                return new LoaderViewModel();
            }
        };
        private SparseArrayCompat<LoaderInfo> mLoaders = new SparseArrayCompat<>();
        private boolean mCreatingLoader = false;

        LoaderViewModel() {
        }

        static LoaderViewModel getInstance(ViewModelStore viewModelStore) {
            return (LoaderViewModel) new ViewModelProvider(viewModelStore, FACTORY).get(LoaderViewModel.class);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.mLoaders.size() <= 0) {
                return;
            }
            printWriter.print(str);
            printWriter.println(NPStringFog.decode(new byte[]{124, 87, 3, 92, 85, 64, 67, 2}, "08b802", 924154836L));
            String str2 = str + "    ";
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mLoaders.size()) {
                    return;
                }
                LoaderInfo loaderInfoValueAt = this.mLoaders.valueAt(i2);
                printWriter.print(str);
                printWriter.print(NPStringFog.decode(new byte[]{18, 22, 71}, "26d262", -18423));
                printWriter.print(this.mLoaders.keyAt(i2));
                printWriter.print(NPStringFog.decode(new byte[]{92, 22}, "f664a9", 1266065154L));
                printWriter.println(loaderInfoValueAt.toString());
                loaderInfoValueAt.dump(str2, fileDescriptor, printWriter, strArr);
                i = i2 + 1;
            }
        }

        void finishCreatingLoader() {
            this.mCreatingLoader = false;
        }

        <D> LoaderInfo<D> getLoader(int i) {
            return this.mLoaders.get(i);
        }

        boolean hasRunningLoaders() {
            int size = this.mLoaders.size();
            for (int i = 0; i < size; i++) {
                if (this.mLoaders.valueAt(i).isCallbackWaitingForData()) {
                    return true;
                }
            }
            return false;
        }

        boolean isCreatingLoader() {
            return this.mCreatingLoader;
        }

        void markForRedelivery() {
            int size = this.mLoaders.size();
            for (int i = 0; i < size; i++) {
                this.mLoaders.valueAt(i).markForRedelivery();
            }
        }

        @Override // androidx.lifecycle.ViewModel
        protected void onCleared() {
            super.onCleared();
            int size = this.mLoaders.size();
            for (int i = 0; i < size; i++) {
                this.mLoaders.valueAt(i).destroy(true);
            }
            this.mLoaders.clear();
        }

        void putLoader(int i, LoaderInfo loaderInfo) {
            this.mLoaders.put(i, loaderInfo);
        }

        void removeLoader(int i) {
            this.mLoaders.remove(i);
        }

        void startCreatingLoader() {
            this.mCreatingLoader = true;
        }
    }

    LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mLoaderViewModel = LoaderViewModel.getInstance(viewModelStore);
    }

    private <D> Loader<D> createAndInstallLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks, Loader<D> loader) {
        try {
            this.mLoaderViewModel.startCreatingLoader();
            Loader<D> loaderOnCreateLoader = loaderCallbacks.onCreateLoader(i, bundle);
            if (loaderOnCreateLoader == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{42, 7, 93, 86, 6, 22, 69, 23, 82, 71, 16, 16, 11, 0, 83, 19, 3, 16, 10, 8, 23, 92, 11, 33, 23, 0, 86, 71, 0, 46, 10, 4, 83, 86, 23, 66, 8, 16, 68, 71, 69, 12, 10, 17, 23, 81, 0, 66, 11, 16, 91, 95}, "ee73eb", true));
            }
            if (loaderOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(loaderOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{46, 90, 15, 7, 1, 66, 65, 74, 0, 22, 23, 68, 15, 93, 1, 66, 4, 68, 14, 85, 69, 13, 12, 117, 19, 93, 4, 22, 7, 122, 14, 89, 1, 7, 16, 22, 12, 77, 22, 22, 66, 88, 14, 76, 69, 0, 7, 22, 0, 24, 11, 13, 12, 27, 18, 76, 4, 22, 11, 85, 65, 81, 11, 12, 7, 68, 65, 85, 0, 15, 0, 83, 19, 24, 6, 14, 3, 69, 18, 2, 69}, "a8ebb6", false, false) + loaderOnCreateLoader);
            }
            LoaderInfo loaderInfo = new LoaderInfo(i, bundle, loaderOnCreateLoader, loader);
            if (DEBUG) {
                Log.v(TAG, NPStringFog.decode(new byte[]{24, 16, 119, 64, 87, 81, 76, 85, 80, 18, 92, 85, 79, 16, 88, 93, 83, 84, 93, 66, 20}, "804220", -500259188L) + loaderInfo);
            }
            this.mLoaderViewModel.putLoader(i, loaderInfo);
            this.mLoaderViewModel.finishCreatingLoader();
            return loaderInfo.setCallback(this.mLifecycleOwner, loaderCallbacks);
        } catch (Throwable th) {
            this.mLoaderViewModel.finishCreatingLoader();
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    public void destroyLoader(int i) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{122, 4, 9, 89, 0, 5, 25, 18, 13, 92, 9, 4, 25, 6, 23, 80, 4, 21, 80, 11, 2, 21, 4, 65, 85, 10, 4, 81, 0, 19}, "9ee5ea", -1.68365639E8d));
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{81, 86, 65, 18, 69, 92, 76, 127, 93, 7, 83, 86, 71, 19, 95, 19, 68, 71, 21, 81, 87, 70, 84, 82, 89, 95, 87, 2, 23, 92, 91, 19, 70, 14, 82, 19, 88, 82, 91, 8, 23, 71, 93, 65, 87, 7, 83}, "532f73", 1.8629098E8f));
        }
        if (DEBUG) {
            Log.v(TAG, NPStringFog.decode(new byte[]{83, 87, 22, 17, 16, 94, 78, 126, 10, 4, 6, 84, 69, 18, 12, 11, 66}, "72eeb1", -18145) + this + NPStringFog.decode(new byte[]{69, 89, 87, 69}, "e61e38", -1757927854L) + i);
        }
        LoaderInfo loader = this.mLoaderViewModel.getLoader(i);
        if (loader != null) {
            loader.destroy(true);
            this.mLoaderViewModel.removeLoader(i);
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mLoaderViewModel.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.LoaderManager
    public <D> Loader<D> getLoader(int i) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 86, 10, 15, 84, 86, 17, 64, 14, 10, 93, 87, 17, 84, 20, 6, 80, 70, 88, 89, 1, 67, 80, 18, 93, 88, 7, 7, 84, 64}, "17fc12", 1722021724L));
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        if (loader != null) {
            return loader.getLoader();
        }
        return null;
    }

    @Override // androidx.loader.app.LoaderManager
    public boolean hasRunningLoaders() {
        return this.mLoaderViewModel.hasRunningLoaders();
    }

    @Override // androidx.loader.app.LoaderManager
    public <D> Loader<D> initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 80, 89, 10, 87, 7, 68, 70, 93, 15, 94, 6, 68, 82, 71, 3, 83, 23, 13, 95, 82, 70, 83, 67, 8, 94, 84, 2, 87, 17}, "d15f2c", 1.359350237E9d));
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{10, 87, 93, 71, 124, 92, 2, 93, 81, 65, 16, 94, 22, 74, 64, 19, 82, 86, 67, 90, 85, 95, 92, 86, 7, 25, 91, 93, 16, 71, 11, 92, 20, 94, 81, 90, 13, 25, 64, 91, 66, 86, 2, 93}, "c94303", 1319785732L));
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        if (DEBUG) {
            Log.v(TAG, NPStringFog.decode(new byte[]{8, 15, 81, 22, 126, 89, 0, 5, 93, 16, 18, 95, 15, 65}, "aa8b26", true, false) + this + NPStringFog.decode(new byte[]{11, 25, 4, 17, 94, 69, 12}, "19ec96", -1.374748E8f) + bundle);
        }
        if (loader == null) {
            return createAndInstallLoader(i, bundle, loaderCallbacks, null);
        }
        if (DEBUG) {
            Log.v(TAG, NPStringFog.decode(new byte[]{66, 25, 103, 86, 72, 70, 17, 80, 91, 84, 69, 86, 26, 80, 70, 71, 12, 93, 5, 25, 89, 92, 4, 87, 7, 75, 21}, "b953e3", 1883974603L) + loader);
        }
        return loader.setCallback(this.mLifecycleOwner, loaderCallbacks);
    }

    @Override // androidx.loader.app.LoaderManager
    public void markForRedelivery() {
        this.mLoaderViewModel.markForRedelivery();
    }

    @Override // androidx.loader.app.LoaderManager
    public <D> Loader<D> restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 7, 93, 92, 87, 80, 19, 17, 89, 89, 94, 81, 19, 5, 67, 85, 83, 64, 90, 8, 86, 16, 83, 20, 95, 9, 80, 84, 87, 70}, "3f1024", 763819845L));
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{23, 0, 67, 16, 7, 19, 17, 41, 95, 5, 2, 4, 23, 69, 93, 17, 21, 21, 69, 7, 85, 68, 5, 0, 9, 9, 85, 0, 70, 14, 11, 69, 68, 12, 3, 65, 8, 4, 89, 10, 70, 21, 13, 23, 85, 5, 2}, "ee0dfa", true));
        }
        if (DEBUG) {
            Log.v(TAG, NPStringFog.decode(new byte[]{66, 86, 21, 17, 83, 22, 68, 127, 9, 4, 86, 1, 66, 19, 15, 11, 18}, "03fe2d", true) + this + NPStringFog.decode(new byte[]{11, 67, 85, 70, 5, 70, 12}, "1c44b5", -24508) + bundle);
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        return createAndInstallLoader(i, bundle, loaderCallbacks, loader != null ? loader.destroy(false) : null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(NPStringFog.decode(new byte[]{123, 9, 89, 87, 87, 69, 122, 7, 86, 82, 85, 82, 69, 29}, "7f8327", 888216162L));
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(NPStringFog.decode(new byte[]{17, 15, 88, 70}, "1f6f92", 2.52138188E8d));
        Class<?> cls = this.mLifecycleOwner.getClass();
        sb.append(cls.getSimpleName());
        sb.append(NPStringFog.decode(new byte[]{26}, "a26d08", 237454378L));
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append(NPStringFog.decode(new byte[]{77, 30}, "0c852a", 78212447L));
        return sb.toString();
    }
}
