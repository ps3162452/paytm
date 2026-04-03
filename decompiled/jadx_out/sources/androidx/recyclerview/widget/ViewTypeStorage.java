package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
interface ViewTypeStorage {

    public static class IsolatedViewTypeStorage implements ViewTypeStorage {
        SparseArray<NestedAdapterWrapper> mGlobalTypeToWrapper = new SparseArray<>();
        int mNextViewType = 0;

        class WrapperViewTypeLookup implements ViewTypeLookup {
            final NestedAdapterWrapper mWrapper;
            final IsolatedViewTypeStorage this$0;
            private SparseIntArray mLocalToGlobalMapping = new SparseIntArray(1);
            private SparseIntArray mGlobalToLocalMapping = new SparseIntArray(1);

            WrapperViewTypeLookup(IsolatedViewTypeStorage isolatedViewTypeStorage, NestedAdapterWrapper nestedAdapterWrapper) {
                this.this$0 = isolatedViewTypeStorage;
                this.mWrapper = nestedAdapterWrapper;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                this.this$0.removeWrapper(this.mWrapper);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i) {
                int iIndexOfKey = this.mGlobalToLocalMapping.indexOfKey(i);
                if (iIndexOfKey < 0) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{22, 4, 73, 19, 92, 69, 16, 4, 92, 70, 94, 90, 11, 3, 89, 10, 25, 66, 29, 17, 93, 70}, "da8f96", -9.282504E7f) + i + NPStringFog.decode(new byte[]{23, 1, 12, 82, 70, 18, 89, 10, 23, 23, 87, 87, 91, 10, 13, 80, 21, 70, 88, 69, 23, 95, 80, 18, 86, 1, 2, 71, 65, 87, 69, 95}, "7ec752", false, false) + this.mWrapper.adapter);
                }
                return this.mGlobalToLocalMapping.valueAt(iIndexOfKey);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i) {
                int iIndexOfKey = this.mLocalToGlobalMapping.indexOfKey(i);
                if (iIndexOfKey > -1) {
                    return this.mLocalToGlobalMapping.valueAt(iIndexOfKey);
                }
                int iObtainViewType = this.this$0.obtainViewType(this.mWrapper);
                this.mLocalToGlobalMapping.put(i, iObtainViewType);
                this.mGlobalToLocalMapping.put(iObtainViewType, i);
                return iObtainViewType;
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            return new WrapperViewTypeLookup(this, nestedAdapterWrapper);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public NestedAdapterWrapper getWrapperForGlobalType(int i) {
            NestedAdapterWrapper nestedAdapterWrapper = this.mGlobalTypeToWrapper.get(i);
            if (nestedAdapterWrapper == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 80, 10, 12, 13, 69, 21, 87, 13, 12, 6, 17, 65, 89, 1, 66, 21, 67, 84, 65, 20, 7, 16, 17, 83, 94, 22, 66, 5, 93, 90, 83, 5, 14, 66, 71, 92, 84, 19, 66, 22, 72, 69, 84, 68}, "51dbb1", 418) + i);
            }
            return nestedAdapterWrapper;
        }

        int obtainViewType(NestedAdapterWrapper nestedAdapterWrapper) {
            int i = this.mNextViewType;
            this.mNextViewType = i + 1;
            this.mGlobalTypeToWrapper.put(i, nestedAdapterWrapper);
            return i;
        }

        void removeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            for (int size = this.mGlobalTypeToWrapper.size() - 1; size >= 0; size--) {
                if (this.mGlobalTypeToWrapper.valueAt(size) == nestedAdapterWrapper) {
                    this.mGlobalTypeToWrapper.removeAt(size);
                }
            }
        }
    }

    public static class SharedIdRangeViewTypeStorage implements ViewTypeStorage {
        SparseArray<List<NestedAdapterWrapper>> mGlobalTypeToWrapper = new SparseArray<>();

        class WrapperViewTypeLookup implements ViewTypeLookup {
            final NestedAdapterWrapper mWrapper;
            final SharedIdRangeViewTypeStorage this$0;

            WrapperViewTypeLookup(SharedIdRangeViewTypeStorage sharedIdRangeViewTypeStorage, NestedAdapterWrapper nestedAdapterWrapper) {
                this.this$0 = sharedIdRangeViewTypeStorage;
                this.mWrapper = nestedAdapterWrapper;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                this.this$0.removeWrapper(this.mWrapper);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i) {
                return i;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i) {
                List<NestedAdapterWrapper> arrayList = this.this$0.mGlobalTypeToWrapper.get(i);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.this$0.mGlobalTypeToWrapper.put(i, arrayList);
                }
                if (!arrayList.contains(this.mWrapper)) {
                    arrayList.add(this.mWrapper);
                }
                return i;
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            return new WrapperViewTypeLookup(this, nestedAdapterWrapper);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public NestedAdapterWrapper getWrapperForGlobalType(int i) {
            List<NestedAdapterWrapper> list = this.mGlobalTypeToWrapper.get(i);
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 87, 86, 86, 92, 23, 70, 80, 81, 86, 87, 67, 18, 94, 93, 24, 68, 17, 7, 70, 72, 93, 65, 67, 0, 89, 74, 24, 84, 15, 9, 84, 89, 84, 19, 21, 15, 83, 79, 24, 71, 26, 22, 83, 24}, "f6883c", -4.9739574E8f) + i);
            }
            return list.get(0);
        }

        void removeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            for (int size = this.mGlobalTypeToWrapper.size() - 1; size >= 0; size--) {
                List<NestedAdapterWrapper> listValueAt = this.mGlobalTypeToWrapper.valueAt(size);
                if (listValueAt.remove(nestedAdapterWrapper) && listValueAt.isEmpty()) {
                    this.mGlobalTypeToWrapper.removeAt(size);
                }
            }
        }
    }

    public interface ViewTypeLookup {
        void dispose();

        int globalToLocal(int i);

        int localToGlobal(int i);
    }

    @NonNull
    ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper);

    @NonNull
    NestedAdapterWrapper getWrapperForGlobalType(int i);
}
