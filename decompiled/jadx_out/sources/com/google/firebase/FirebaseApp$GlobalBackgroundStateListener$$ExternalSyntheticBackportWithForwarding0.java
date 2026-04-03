package com.google.firebase;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes53.dex */
public final /* synthetic */ class FirebaseApp$GlobalBackgroundStateListener$$ExternalSyntheticBackportWithForwarding0 {
    public static /* synthetic */ boolean m(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!atomicReference.compareAndSet(obj, obj2)) {
            if (atomicReference.get() != obj) {
                return false;
            }
        }
        return true;
    }
}
