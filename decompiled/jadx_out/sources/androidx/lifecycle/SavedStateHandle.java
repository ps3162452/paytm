package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes16.dex */
public final class SavedStateHandle {
    private static final Class[] ACCEPTABLE_CLASSES;
    private static final String KEYS = NPStringFog.decode(new byte[]{88, 82, 65, 17}, "378be6", 5.75259161E8d);
    private static final String VALUES = NPStringFog.decode(new byte[]{23, 3, 95, 65, 4, 65}, "ab34a2", 3.70373165E8d);
    private final Map<String, SavingStateLiveData<?>> mLiveDatas;
    final Map<String, Object> mRegular;
    private final SavedStateRegistry.SavedStateProvider mSavedStateProvider;
    final Map<String, SavedStateRegistry.SavedStateProvider> mSavedStateProviders;

    static class SavingStateLiveData<T> extends MutableLiveData<T> {
        private SavedStateHandle mHandle;
        private String mKey;

        SavingStateLiveData(SavedStateHandle savedStateHandle, String str) {
            this.mKey = str;
            this.mHandle = savedStateHandle;
        }

        SavingStateLiveData(SavedStateHandle savedStateHandle, String str, T t) {
            super(t);
            this.mKey = str;
            this.mHandle = savedStateHandle;
        }

        void detach() {
            this.mHandle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T t) {
            SavedStateHandle savedStateHandle = this.mHandle;
            if (savedStateHandle != null) {
                savedStateHandle.mRegular.put(this.mKey, t);
            }
            super.setValue(t);
        }
    }

    static {
        ACCEPTABLE_CLASSES = new Class[]{Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Build.VERSION.SDK_INT >= 21 ? Size.class : Integer.TYPE, Build.VERSION.SDK_INT >= 21 ? SizeF.class : Integer.TYPE};
    }

    public SavedStateHandle() {
        this.mSavedStateProviders = new HashMap();
        this.mLiveDatas = new HashMap();
        this.mSavedStateProvider = new SavedStateRegistry.SavedStateProvider(this) { // from class: androidx.lifecycle.SavedStateHandle.1
            final SavedStateHandle this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public Bundle saveState() {
                for (Map.Entry entry : new HashMap(this.this$0.mSavedStateProviders).entrySet()) {
                    this.this$0.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
                }
                Set<String> setKeySet = this.this$0.mRegular.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(setKeySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : setKeySet) {
                    arrayList.add(str);
                    arrayList2.add(this.this$0.mRegular.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList(NPStringFog.decode(new byte[]{91, 81, 79, 64}, "04631e", -6.817632E7f), arrayList);
                bundle.putParcelableArrayList(NPStringFog.decode(new byte[]{67, 0, 92, 65, 1, 69}, "5a04d6", 10713), arrayList2);
                return bundle;
            }
        };
        this.mRegular = new HashMap();
    }

    public SavedStateHandle(Map<String, Object> map) {
        this.mSavedStateProviders = new HashMap();
        this.mLiveDatas = new HashMap();
        this.mSavedStateProvider = new SavedStateRegistry.SavedStateProvider(this) { // from class: androidx.lifecycle.SavedStateHandle.1
            final SavedStateHandle this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public Bundle saveState() {
                for (Map.Entry entry : new HashMap(this.this$0.mSavedStateProviders).entrySet()) {
                    this.this$0.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
                }
                Set<String> setKeySet = this.this$0.mRegular.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(setKeySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : setKeySet) {
                    arrayList.add(str);
                    arrayList2.add(this.this$0.mRegular.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList(NPStringFog.decode(new byte[]{91, 81, 79, 64}, "04631e", -6.817632E7f), arrayList);
                bundle.putParcelableArrayList(NPStringFog.decode(new byte[]{67, 0, 92, 65, 1, 69}, "5a04d6", 10713), arrayList2);
                return bundle;
            }
        };
        this.mRegular = new HashMap(map);
    }

    static SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new SavedStateHandle();
        }
        HashMap map = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                map.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new SavedStateHandle(map);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(KEYS);
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(VALUES);
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 89, 79, 82, 89, 10, 6, 23, 91, 70, 91, 7, 14, 82, 25, 67, 84, 16, 17, 82, 93, 19, 84, 16, 66, 69, 92, 64, 65, 12, 16, 82, 93, 19, 70, 23, 3, 67, 92}, "b7935c", 27105));
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= parcelableArrayList.size()) {
                return new SavedStateHandle(map);
            }
            map.put((String) parcelableArrayList.get(i2), parcelableArrayList2.get(i2));
            i = i2 + 1;
        }
    }

    private <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z, T t) {
        SavingStateLiveData<?> savingStateLiveData = this.mLiveDatas.get(str);
        if (savingStateLiveData == null) {
            savingStateLiveData = this.mRegular.containsKey(str) ? new SavingStateLiveData<>(this, str, this.mRegular.get(str)) : z ? new SavingStateLiveData<>(this, str, t) : new SavingStateLiveData<>(this, str);
            this.mLiveDatas.put(str, savingStateLiveData);
        }
        return savingStateLiveData;
    }

    private static void validateValue(Object obj) {
        if (obj == null) {
            return;
        }
        for (Class cls : ACCEPTABLE_CLASSES) {
            if (cls.isInstance(obj)) {
                return;
            }
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{112, 89, 89, 23, 17, 23, 67, 77, 67, 16, 19, 86, 95, 77, 82, 16, 18, 94, 71, 80, 23, 68, 28, 71, 86, 24}, "3870e7", -8417) + obj.getClass() + NPStringFog.decode(new byte[]{23, 15, 94, 18, 13, 69, 68, 7, 70, 3, 6, 69, 68, 18, 81, 18, 7}, "7f0fbe", true, true));
    }

    public void clearSavedStateProvider(String str) {
        this.mSavedStateProviders.remove(str);
    }

    public boolean contains(String str) {
        return this.mRegular.containsKey(str);
    }

    public <T> T get(String str) {
        return (T) this.mRegular.get(str);
    }

    public <T> MutableLiveData<T> getLiveData(String str) {
        return getLiveDataInternal(str, false, null);
    }

    public <T> MutableLiveData<T> getLiveData(String str, T t) {
        return getLiveDataInternal(str, true, t);
    }

    public Set<String> keys() {
        HashSet hashSet = new HashSet(this.mRegular.keySet());
        hashSet.addAll(this.mSavedStateProviders.keySet());
        hashSet.addAll(this.mLiveDatas.keySet());
        return hashSet;
    }

    public <T> T remove(String str) {
        T t = (T) this.mRegular.remove(str);
        SavingStateLiveData<?> savingStateLiveDataRemove = this.mLiveDatas.remove(str);
        if (savingStateLiveDataRemove != null) {
            savingStateLiveDataRemove.detach();
        }
        return t;
    }

    SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.mSavedStateProvider;
    }

    public <T> void set(String str, T t) {
        validateValue(t);
        SavingStateLiveData<?> savingStateLiveData = this.mLiveDatas.get(str);
        if (savingStateLiveData != null) {
            savingStateLiveData.setValue(t);
        } else {
            this.mRegular.put(str, t);
        }
    }

    public void setSavedStateProvider(String str, SavedStateRegistry.SavedStateProvider savedStateProvider) {
        this.mSavedStateProviders.put(str, savedStateProvider);
    }
}
