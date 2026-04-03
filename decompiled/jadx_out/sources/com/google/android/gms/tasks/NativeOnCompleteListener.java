package com.google.android.gms.tasks;

/* JADX INFO: loaded from: classes56.dex */
public class NativeOnCompleteListener implements OnCompleteListener<Object> {
    private final long zza;

    public NativeOnCompleteListener(long j) {
        this.zza = j;
    }

    public static void createAndAddCallback(Task<Object> task, long j) {
        task.addOnCompleteListener(new NativeOnCompleteListener(j));
    }

    public native void nativeOnComplete(long j, Object obj, boolean z, boolean z2, String str);

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task<Object> task) {
        Object result;
        Exception exception;
        String message = null;
        if (task.isSuccessful()) {
            result = task.getResult();
        } else if (task.isCanceled() || (exception = task.getException()) == null) {
            result = null;
        } else {
            result = null;
            message = exception.getMessage();
        }
        nativeOnComplete(this.zza, result, task.isSuccessful(), task.isCanceled(), message);
    }
}
