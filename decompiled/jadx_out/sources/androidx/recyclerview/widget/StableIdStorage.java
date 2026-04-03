package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.collection.LongSparseArray;

/* JADX INFO: loaded from: classes42.dex */
interface StableIdStorage {

    public static class IsolatedStableIdStorage implements StableIdStorage {
        long mNextStableId = 0;

        class WrapperStableIdLookup implements StableIdLookup {
            private final LongSparseArray<Long> mLocalToGlobalLookup = new LongSparseArray<>();
            final IsolatedStableIdStorage this$0;

            WrapperStableIdLookup(IsolatedStableIdStorage isolatedStableIdStorage) {
                this.this$0 = isolatedStableIdStorage;
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                Long lValueOf = this.mLocalToGlobalLookup.get(j);
                if (lValueOf == null) {
                    lValueOf = Long.valueOf(this.this$0.obtainId());
                    this.mLocalToGlobalLookup.put(j, lValueOf);
                }
                return lValueOf.longValue();
            }
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return new WrapperStableIdLookup(this);
        }

        long obtainId() {
            long j = this.mNextStableId;
            this.mNextStableId = 1 + j;
            return j;
        }
    }

    public static class NoStableIdStorage implements StableIdStorage {
        private final StableIdLookup mNoIdLookup = new StableIdLookup(this) { // from class: androidx.recyclerview.widget.StableIdStorage.NoStableIdStorage.1
            final NoStableIdStorage this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return -1L;
            }
        };

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.mNoIdLookup;
        }
    }

    public static class SharedPoolStableIdStorage implements StableIdStorage {
        private final StableIdLookup mSameIdLookup = new StableIdLookup(this) { // from class: androidx.recyclerview.widget.StableIdStorage.SharedPoolStableIdStorage.1
            final SharedPoolStableIdStorage this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return j;
            }
        };

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.mSameIdLookup;
        }
    }

    public interface StableIdLookup {
        long localToGlobal(long j);
    }

    @NonNull
    StableIdLookup createStableIdLookup();
}
