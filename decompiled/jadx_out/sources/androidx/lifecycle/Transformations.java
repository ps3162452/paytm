package androidx.lifecycle;

import androidx.arch.core.util.Function;

/* JADX INFO: loaded from: classes33.dex */
public class Transformations {

    /* JADX INFO: Add missing generic type declarations: [X] */
    /* JADX INFO: renamed from: androidx.lifecycle.Transformations$2, reason: invalid class name */
    class AnonymousClass2<X> implements Observer<X> {
        LiveData<Y> mSource;
        final MediatorLiveData val$result;
        final Function val$switchMapFunction;

        AnonymousClass2(Function function, MediatorLiveData mediatorLiveData) {
            this.val$switchMapFunction = function;
            this.val$result = mediatorLiveData;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(X x) {
            LiveData<Y> liveData = (LiveData) this.val$switchMapFunction.apply(x);
            Object obj = this.mSource;
            if (obj == liveData) {
                return;
            }
            if (obj != null) {
                this.val$result.removeSource(obj);
            }
            this.mSource = liveData;
            if (liveData != 0) {
                this.val$result.addSource(liveData, new Observer<Y>(this) { // from class: androidx.lifecycle.Transformations.2.1
                    final AnonymousClass2 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // androidx.lifecycle.Observer
                    public void onChanged(Y y) {
                        this.this$0.val$result.setValue(y);
                    }
                });
            }
        }
    }

    private Transformations() {
    }

    public static <X> LiveData<X> distinctUntilChanged(LiveData<X> liveData) {
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>(mediatorLiveData) { // from class: androidx.lifecycle.Transformations.3
            boolean mFirstTime = true;
            final MediatorLiveData val$outputLiveData;

            {
                this.val$outputLiveData = mediatorLiveData;
            }

            @Override // androidx.lifecycle.Observer
            public void onChanged(X x) {
                T value = this.val$outputLiveData.getValue();
                if (this.mFirstTime || ((value == 0 && x != null) || !(value == 0 || value.equals(x)))) {
                    this.mFirstTime = false;
                    this.val$outputLiveData.setValue(x);
                }
            }
        });
        return mediatorLiveData;
    }

    public static <X, Y> LiveData<Y> map(LiveData<X> liveData, Function<X, Y> function) {
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>(mediatorLiveData, function) { // from class: androidx.lifecycle.Transformations.1
            final Function val$mapFunction;
            final MediatorLiveData val$result;

            {
                this.val$result = mediatorLiveData;
                this.val$mapFunction = function;
            }

            @Override // androidx.lifecycle.Observer
            public void onChanged(X x) {
                this.val$result.setValue(this.val$mapFunction.apply(x));
            }
        });
        return mediatorLiveData;
    }

    public static <X, Y> LiveData<Y> switchMap(LiveData<X> liveData, Function<X, LiveData<Y>> function) {
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new AnonymousClass2(function, mediatorLiveData));
        return mediatorLiveData;
    }
}
