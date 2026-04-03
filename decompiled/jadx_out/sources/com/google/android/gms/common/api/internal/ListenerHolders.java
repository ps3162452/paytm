package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class ListenerHolders {
    private final Set zaa = Collections.newSetFromMap(new WeakHashMap());

    public static <L> ListenerHolder<L> createListenerHolder(L l, Looper looper, String str) {
        Preconditions.checkNotNull(l, NPStringFog.decode(new byte[]{40, 80, 16, 64, 3, 87, 1, 75, 67, 89, 19, 74, 16, 25, 13, 91, 18, 25, 6, 92, 67, 90, 19, 85, 8}, "d9c4f9", -1.934131251E9d));
        Preconditions.checkNotNull(looper, NPStringFog.decode(new byte[]{41, 91, 13, 67, 82, 19, 69, 89, 23, 64, 67, 65, 11, 91, 22, 19, 85, 4, 69, 90, 23, 95, 91}, "e4b37a", 1.266067768E9d));
        Preconditions.checkNotNull(str, NPStringFog.decode(new byte[]{47, 89, 75, 66, 81, 90, 6, 66, 24, 66, 77, 68, 6, 16, 85, 67, 71, 64, 67, 94, 87, 66, 20, 86, 6, 16, 86, 67, 88, 88}, "c08644", -9.3583069E7d));
        return new ListenerHolder<>(looper, l, str);
    }

    public static <L> ListenerHolder<L> createListenerHolder(L l, Executor executor, String str) {
        Preconditions.checkNotNull(l, NPStringFog.decode(new byte[]{125, 11, 16, 70, 6, 87, 84, 16, 67, 95, 22, 74, 69, 66, 13, 93, 23, 25, 83, 7, 67, 92, 22, 85, 93}, "1bc2c9", false));
        Preconditions.checkNotNull(executor, NPStringFog.decode(new byte[]{39, 30, 1, 6, 67, 22, 13, 20, 68, 8, 67, 17, 22, 70, 10, 10, 66, 66, 0, 3, 68, 11, 67, 14, 14}, "bfde6b", -9.213238E8f));
        Preconditions.checkNotNull(str, NPStringFog.decode(new byte[]{42, 81, 64, 68, 3, 15, 3, 74, 19, 68, 31, 17, 3, 24, 94, 69, 21, 21, 70, 86, 92, 68, 70, 3, 3, 24, 93, 69, 10, 13}, "f830fa", true));
        return new ListenerHolder<>(executor, l, str);
    }

    public static <L> ListenerHolder.ListenerKey<L> createListenerKey(L l, String str) {
        Preconditions.checkNotNull(l, NPStringFog.decode(new byte[]{46, 95, 74, 69, 85, 11, 7, 68, 25, 92, 69, 22, 22, 22, 87, 94, 68, 69, 0, 83, 25, 95, 69, 9, 14}, "b6910e", true, false));
        Preconditions.checkNotNull(str, NPStringFog.decode(new byte[]{120, 93, 16, 22, 82, 10, 81, 70, 67, 22, 78, 20, 81, 20, 14, 23, 68, 16, 20, 90, 12, 22, 23, 6, 81, 20, 13, 23, 91, 8}, "44cb7d", -9.56982783E8d));
        Preconditions.checkNotEmpty(str, NPStringFog.decode(new byte[]{45, 13, 68, 71, 81, 92, 4, 22, 23, 71, 77, 66, 4, 68, 90, 70, 71, 70, 65, 10, 88, 71, 20, 80, 4, 68, 82, 94, 68, 70, 24}, "ad7342", -934400505L));
        return new ListenerHolder.ListenerKey<>(l, str);
    }

    public final ListenerHolder zaa(Object obj, Looper looper, String str) {
        ListenerHolder listenerHolderCreateListenerHolder = createListenerHolder(obj, looper, NPStringFog.decode(new byte[]{45, 118, 111, 55, 97, 103, 38}, "c90c87", true));
        this.zaa.add(listenerHolderCreateListenerHolder);
        return listenerHolderCreateListenerHolder;
    }

    public final void zab() {
        Iterator it = this.zaa.iterator();
        while (it.hasNext()) {
            ((ListenerHolder) it.next()).clear();
        }
        this.zaa.clear();
    }
}
