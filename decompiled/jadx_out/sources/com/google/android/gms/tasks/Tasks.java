package com.google.android.gms.tasks;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
public final class Tasks {
    private Tasks() {
    }

    public static <TResult> TResult await(Task<TResult> task) throws ExecutionException, InterruptedException {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotNull(task, NPStringFog.decode(new byte[]{103, 83, 64, 91, 24, 14, 70, 65, 71, 16, 86, 12, 71, 18, 81, 85, 24, 13, 70, 94, 95}, "32308c", -2032381577L));
        if (task.isComplete()) {
            return (TResult) zza(task);
        }
        zzad zzadVar = new zzad(null);
        zzb(task, zzadVar);
        zzadVar.zza();
        return (TResult) zza(task);
    }

    public static <TResult> TResult await(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotNull(task, NPStringFog.decode(new byte[]{99, 86, 68, 92, 23, 84, 66, 68, 67, 23, 89, 86, 67, 23, 85, 82, 23, 87, 66, 91, 91}, "777779", 1.4206676E9f));
        Preconditions.checkNotNull(timeUnit, NPStringFog.decode(new byte[]{48, 8, 91, 3, 49, 12, 13, 21, 22, 11, 17, 17, 16, 65, 88, 9, 16, 66, 6, 4, 22, 8, 17, 14, 8}, "da6fdb", -9.179649E7d));
        if (task.isComplete()) {
            return (TResult) zza(task);
        }
        zzad zzadVar = new zzad(null);
        zzb(task, zzadVar);
        if (zzadVar.zzb(j, timeUnit)) {
            return (TResult) zza(task);
        }
        throw new TimeoutException(NPStringFog.decode(new byte[]{96, 15, 8, 1, 80, 19, 91, 19, 17, 68, 67, 82, 93, 18, 12, 10, 83, 19, 82, 9, 23, 68, 96, 82, 71, 13}, "4fed43", false));
    }

    @Deprecated
    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    @Deprecated
    public static <TResult> Task<TResult> call(Executor executor, Callable<TResult> callable) {
        Preconditions.checkNotNull(executor, NPStringFog.decode(new byte[]{118, 65, 82, 81, 70, 22, 92, 75, 23, 95, 70, 17, 71, 25, 89, 93, 71, 66, 81, 92, 23, 92, 70, 14, 95}, "39723b", -1.738987E8f));
        Preconditions.checkNotNull(callable, NPStringFog.decode(new byte[]{114, 7, 90, 94, 87, 5, 82, 13, 22, 95, 64, 23, 69, 70, 88, 93, 65, 68, 83, 3, 22, 92, 64, 8, 93}, "1f625d", -530759777L));
        zzw zzwVar = new zzw();
        executor.execute(new zzz(zzwVar, callable));
        return zzwVar;
    }

    public static <TResult> Task<TResult> forCanceled() {
        zzw zzwVar = new zzw();
        zzwVar.zzc();
        return zzwVar;
    }

    public static <TResult> Task<TResult> forException(Exception exc) {
        zzw zzwVar = new zzw();
        zzwVar.zza(exc);
        return zzwVar;
    }

    public static <TResult> Task<TResult> forResult(TResult tresult) {
        zzw zzwVar = new zzw();
        zzwVar.zzb(tresult);
        return zzwVar;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return forResult(null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{87, 17, 15, 89, 25, 23, 88, 23, 8, 70, 25, 2, 75, 1, 67, 91, 86, 23, 25, 5, 0, 86, 92, 19, 77, 1, 7}, "9dc59c", 17813));
            }
        }
        zzw zzwVar = new zzw();
        zzaf zzafVar = new zzaf(collection.size(), zzwVar);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            zzb(it2.next(), zzafVar);
        }
        return zzwVar;
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? forResult(null) : whenAll(Arrays.asList(taskArr));
    }

    public static Task<List<Task<?>>> whenAllComplete(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return forResult(Collections.emptyList());
        }
        return whenAll(collection).continueWithTask(TaskExecutors.MAIN_THREAD, new zzab(collection));
    }

    public static Task<List<Task<?>>> whenAllComplete(Task<?>... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? forResult(Collections.emptyList()) : whenAllComplete(Arrays.asList(taskArr));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Collection<? extends Task> collection) {
        if (collection == null || collection.isEmpty()) {
            return forResult(Collections.emptyList());
        }
        return (Task<List<TResult>>) whenAll((Collection<? extends Task<?>>) collection).continueWith(TaskExecutors.MAIN_THREAD, new zzaa(collection));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Task... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? forResult(Collections.emptyList()) : whenAllSuccess(Arrays.asList(taskArr));
    }

    public static <T> Task<T> withTimeout(Task<T> task, long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(task, NPStringFog.decode(new byte[]{50, 83, 16, 90, 66, 95, 19, 65, 23, 17, 12, 93, 18, 18, 1, 84, 66, 92, 19, 94, 15}, "f2c1b2", -1835149593L));
        Preconditions.checkArgument(j > 0, NPStringFog.decode(new byte[]{49, 93, 85, 7, 93, 69, 17, 20, 85, 23, 65, 68, 69, 86, 93, 66, 66, 95, 22, 93, 76, 11, 68, 85}, "e48b20", true, true));
        Preconditions.checkNotNull(timeUnit, NPStringFog.decode(new byte[]{102, 11, 88, 0, 51, 93, 91, 22, 21, 8, 19, 64, 70, 66, 91, 10, 18, 19, 80, 7, 21, 11, 19, 95, 94}, "2b5ef3", -2.8941418E8f));
        final zzb zzbVar = new zzb();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(zzbVar);
        final com.google.android.gms.internal.tasks.zza zzaVar = new com.google.android.gms.internal.tasks.zza(Looper.getMainLooper());
        zzaVar.postDelayed(new Runnable(taskCompletionSource) { // from class: com.google.android.gms.tasks.zzx
            public final TaskCompletionSource zza;

            {
                this.zza = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.trySetException(new TimeoutException());
            }
        }, timeUnit.toMillis(j));
        task.addOnCompleteListener(new OnCompleteListener(zzaVar, taskCompletionSource, zzbVar) { // from class: com.google.android.gms.tasks.zzy
            public final com.google.android.gms.internal.tasks.zza zza;
            public final TaskCompletionSource zzb;
            public final zzb zzc;

            {
                this.zza = zzaVar;
                this.zzb = taskCompletionSource;
                this.zzc = zzbVar;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                com.google.android.gms.internal.tasks.zza zzaVar2 = this.zza;
                TaskCompletionSource taskCompletionSource2 = this.zzb;
                zzb zzbVar2 = this.zzc;
                zzaVar2.removeCallbacksAndMessages(null);
                if (task2.isSuccessful()) {
                    taskCompletionSource2.trySetResult(task2.getResult());
                } else {
                    if (task2.isCanceled()) {
                        zzbVar2.zza();
                        return;
                    }
                    Exception exception = task2.getException();
                    exception.getClass();
                    taskCompletionSource2.trySetException(exception);
                }
            }
        });
        return taskCompletionSource.getTask();
    }

    private static Object zza(Task task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException(NPStringFog.decode(new byte[]{49, 82, 18, 94, 67, 10, 22, 19, 0, 89, 17, 6, 4, 87, 24, 21, 0, 2, 11, 80, 4, 89, 6, 7}, "e3a5cc", 1707092559L));
        }
        throw new ExecutionException(task.getException());
    }

    private static void zzb(Task task, zzae zzaeVar) {
        task.addOnSuccessListener(TaskExecutors.zza, zzaeVar);
        task.addOnFailureListener(TaskExecutors.zza, zzaeVar);
        task.addOnCanceledListener(TaskExecutors.zza, zzaeVar);
    }
}
