package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class ListenerHolder<L> {
    private final Executor zaa;
    private volatile Object zab;
    private volatile ListenerKey zac;

    public static final class ListenerKey<L> {
        private final Object zaa;
        private final String zab;

        ListenerKey(L l, String str) {
            this.zaa = l;
            this.zab = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.zaa == listenerKey.zaa && this.zab.equals(listenerKey.zab);
        }

        public int hashCode() {
            return (System.identityHashCode(this.zaa) * 31) + this.zab.hashCode();
        }

        public String toIdString() {
            return this.zab + NPStringFog.decode(new byte[]{117}, "5c4690", -1.581554135E9d) + System.identityHashCode(this.zaa);
        }
    }

    public interface Notifier<L> {
        void notifyListener(L l);

        void onNotifyListenerFailed();
    }

    ListenerHolder(Looper looper, L l, String str) {
        this.zaa = new HandlerExecutor(looper);
        this.zab = Preconditions.checkNotNull(l, NPStringFog.decode(new byte[]{45, 91, 21, 71, 1, 15, 4, 64, 70, 94, 17, 18, 21, 18, 8, 92, 16, 65, 3, 87, 70, 93, 17, 13, 13}, "a2f3da", -1691990447L));
        this.zac = new ListenerKey(l, Preconditions.checkNotEmpty(str));
    }

    ListenerHolder(Executor executor, L l, String str) {
        this.zaa = (Executor) Preconditions.checkNotNull(executor, NPStringFog.decode(new byte[]{124, 74, 3, 5, 67, 67, 86, 64, 70, 11, 67, 68, 77, 18, 8, 9, 66, 23, 91, 87, 70, 8, 67, 91, 85}, "92ff67", 19499));
        this.zab = Preconditions.checkNotNull(l, NPStringFog.decode(new byte[]{124, 94, 66, 68, 7, 86, 85, 69, 17, 93, 23, 75, 68, 23, 95, 95, 22, 24, 82, 82, 17, 94, 23, 84, 92}, "0710b8", true, false));
        this.zac = new ListenerKey(l, Preconditions.checkNotEmpty(str));
    }

    public void clear() {
        this.zab = null;
        this.zac = null;
    }

    public ListenerKey<L> getListenerKey() {
        return this.zac;
    }

    public boolean hasListener() {
        return this.zab != null;
    }

    public void notifyListener(final Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, NPStringFog.decode(new byte[]{121, 94, 71, 94, 81, 91, 82, 67, 19, 90, 66, 65, 67, 17, 93, 88, 67, 18, 85, 84, 19, 89, 66, 94, 91}, "713772", false));
        this.zaa.execute(new Runnable(this, notifier) { // from class: com.google.android.gms.common.api.internal.zacb
            public final ListenerHolder zaa;
            public final ListenerHolder.Notifier zab;

            {
                this.zaa = this;
                this.zab = notifier;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zaa.zaa(this.zab);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    final void zaa(Notifier notifier) {
        Object obj = this.zab;
        if (obj == null) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(obj);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }
}
