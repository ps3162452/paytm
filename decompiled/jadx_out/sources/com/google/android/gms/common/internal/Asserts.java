package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;
import javax.annotation.Nullable;
import n.NPStringFog;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes55.dex */
public final class Asserts {
    private Asserts() {
        throw new AssertionError(NPStringFog.decode(new byte[]{49, 12, 15, 11, 67, 23, 5, 12, 18, 12, 81, 1, 8, 7}, "dbfe0c", -4.97598488E8d));
    }

    public static void checkMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        Log.e(NPStringFog.decode(new byte[]{32, 65, 64, 3, 75, 16, 18}, "a23f9d", true), NPStringFog.decode(new byte[]{83, 80, 83, 2, 10, 47, 81, 81, 88, 53, 9, 16, 85, 89, 82, 91, 65, 1, 69, 74, 68, 4, 15, 22, 16, 76, 94, 19, 4, 3, 84, 24}, "086aab", 1.250757425E9d) + String.valueOf(Thread.currentThread()) + NPStringFog.decode(new byte[]{21, 42, 54, 66, 121, 120, 97, 67, 17, 10, 82, 23, 88, 2, 12, 12, 23, 67, 93, 17, 0, 3, 83, 23}, "5ceb77", -8386) + String.valueOf(Looper.getMainLooper().getThread()) + NPStringFog.decode(new byte[]{16}, "1fde0a", true));
        throw new IllegalStateException(str);
    }

    public static void checkNotMainThread(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        Log.e(NPStringFog.decode(new byte[]{37, 67, 17, 1, 67, 16, 23}, "d0bd1d", 7778), NPStringFog.decode(new byte[]{81, 92, 82, 5, 95, 43, 93, 64, 122, 7, 93, 11, 102, 92, 69, 3, 85, 1, 8, 20, 84, 19, 70, 23, 87, 90, 67, 70, 64, 13, 64, 81, 86, 2, 20}, "247f4e", false, false) + String.valueOf(Thread.currentThread()) + NPStringFog.decode(new byte[]{24, 45, 99, 20, 16, 81, 93, 68, 93, 85, 13, 87, 24, 16, 88, 70, 1, 88, 92, 68}, "8d04d9", 1822662102L) + String.valueOf(Looper.getMainLooper().getThread()) + NPStringFog.decode(new byte[]{22}, "7f13c5", true));
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    public static void checkNotNull(@Nullable Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{91, 23, 89, 8, 70, 69, 80, 4, 80, 22, 3, 89, 86, 7}, "5b5df7", 1.178376513E9d));
        }
    }

    @EnsuresNonNull({"#1"})
    public static void checkNotNull(@Nullable Object obj, Object obj2) {
        if (obj == null) {
            throw new IllegalArgumentException(String.valueOf(obj2));
        }
    }

    public static void checkNull(@Nullable Object obj) {
        if (obj != null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{95, 87, 92, 73, 11, 67, 93, 84, 18, 22, 0, 80, 84, 74, 87, 10, 6, 83}, "182de6", true));
        }
    }

    public static void checkNull(@Nullable Object obj, Object obj2) {
        if (obj != null) {
            throw new IllegalArgumentException(String.valueOf(obj2));
        }
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void checkState(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
