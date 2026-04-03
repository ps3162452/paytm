package com.google.android.gms.tasks;

import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    public static IllegalStateException of(Task<?> task) {
        if (!task.isComplete()) {
            return new IllegalStateException(NPStringFog.decode(new byte[]{117, 64, 73, 94, 93, 0, 80, 65, 92, 102, 85, 16, 90, 118, 86, 95, 68, 15, 84, 65, 80, 93, 90, 38, 73, 86, 92, 66, 64, 10, 94, 91, 25, 81, 85, 13, 17, 90, 87, 94, 77, 67, 83, 80, 25, 81, 70, 6, 80, 65, 92, 86, 20, 5, 67, 90, 84, 18, 87, 12, 92, 69, 85, 87, 64, 6, 85, 21, 109, 83, 71, 8, 31}, "15924c", 2737));
        }
        Exception exception = task.getException();
        return new DuplicateTaskCompletionException(NPStringFog.decode(new byte[]{32, 91, 92, 65, 85, 86, 23, 81, 17, 70, 80, 71, 11, 14, 17}, "c41193", -7.8557696E8f).concat(exception != null ? NPStringFog.decode(new byte[]{82, 4, 11, 8, 69, 64, 81}, "4ebd02", false, true) : task.isSuccessful() ? NPStringFog.decode(new byte[]{66, 86, 67, 68, 94, 65, 16}, "030125", -1.8939021E9f).concat(String.valueOf(String.valueOf(task.getResult()))) : task.isCanceled() ? NPStringFog.decode(new byte[]{7, 89, 88, 80, 93, 85, 8, 89, 66, 90, 87, 87}, "d86389", -9261) : NPStringFog.decode(new byte[]{16, 89, 95, 89, 13, 69, 11, 23, 93, 68, 17, 71, 0}, "e747b2", 20627)), exception);
    }
}
