package com.google.android.gms.tasks;

import android.app.Activity;
import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
public abstract class Task<TResult> {
    public Task<TResult> addOnCanceledListener(Activity activity, OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{84, 82, 7, 42, 8, 123, 84, 88, 0, 0, 10, 93, 81, 122, 10, 22, 18, 93, 91, 83, 17, 69, 15, 75, 21, 88, 12, 17, 70, 81, 88, 70, 15, 0, 11, 93, 91, 66, 6, 1, 72}, "56cef8", 9.78695823E8d));
    }

    public Task<TResult> addOnCanceledListener(OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{3, 81, 82, 42, 89, 122, 3, 91, 85, 0, 91, 92, 6, 121, 95, 22, 67, 92, 12, 80, 68, 69, 94, 74, 66, 91, 89, 17, 23, 80, 15, 69, 90, 0, 90, 92, 12, 65, 83, 1, 25}, "b56e79", -670193067L));
    }

    public Task<TResult> addOnCanceledListener(Executor executor, OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{4, 82, 86, 123, 92, 38, 4, 88, 81, 81, 94, 0, 1, 122, 91, 71, 70, 0, 11, 83, 64, 20, 91, 22, 69, 88, 93, 64, 18, 12, 8, 70, 94, 81, 95, 0, 11, 66, 87, 80}, "e6242e", 1902616719L));
    }

    public Task<TResult> addOnCompleteListener(Activity activity, OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{89, 87, 82, 123, 93, 112, 87, 94, 70, 88, 86, 71, 93, 127, 95, 71, 71, 86, 86, 86, 68, 20, 90, 64, 24, 93, 89, 64, 19, 90, 85, 67, 90, 81, 94, 86, 86, 71, 83, 80}, "836433", 1.060202054E9d));
    }

    public Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{7, 93, 5, 126, 92, 32, 9, 84, 17, 93, 87, 23, 3, 117, 8, 66, 70, 6, 8, 92, 19, 17, 91, 16, 70, 87, 14, 69, 18, 10, 11, 73, 13, 84, 95, 6, 8, 77, 4, 85}, "f9a12c", 2.024566698E9d));
    }

    public Task<TResult> addOnCompleteListener(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{0, 82, 0, 44, 95, 119, 14, 91, 20, 15, 84, 64, 4, 122, 13, 16, 69, 81, 15, 83, 22, 67, 88, 71, 65, 88, 11, 23, 17, 93, 12, 70, 8, 6, 92, 81, 15, 66, 1, 7}, "a6dc14", false, false));
    }

    public abstract Task<TResult> addOnFailureListener(Activity activity, OnFailureListener onFailureListener);

    public abstract Task<TResult> addOnFailureListener(OnFailureListener onFailureListener);

    public abstract Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener);

    public abstract Task<TResult> addOnSuccessListener(Activity activity, OnSuccessListener<? super TResult> onSuccessListener);

    public abstract Task<TResult> addOnSuccessListener(OnSuccessListener<? super TResult> onSuccessListener);

    public abstract Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener);

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{90, 93, 93, 67, 89, 12, 76, 87, 100, 94, 68, 10, 25, 91, 64, 23, 94, 13, 77, 18, 90, 90, 64, 14, 92, 95, 86, 89, 68, 7, 93}, "92370b", 484441507L));
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{80, 9, 88, 77, 94, 10, 70, 3, 97, 80, 67, 12, 19, 15, 69, 25, 89, 11, 71, 70, 95, 84, 71, 8, 86, 11, 83, 87, 67, 1, 87}, "3f697d", -2.0711053E9f));
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{90, 9, 13, 65, 10, 86, 76, 3, 52, 92, 23, 80, 109, 7, 16, 94, 67, 81, 74, 70, 13, 90, 23, 24, 80, 11, 19, 89, 6, 85, 92, 8, 23, 80, 7}, "9fc5c8", 1.498190936E9d));
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{2, 95, 95, 67, 93, 95, 20, 85, 102, 94, 64, 89, 53, 81, 66, 92, 20, 88, 18, 16, 95, 88, 64, 17, 8, 93, 65, 91, 81, 92, 4, 94, 69, 82, 80}, "a01741", false));
    }

    public abstract Exception getException();

    public abstract TResult getResult();

    public abstract <X extends Throwable> TResult getResult(Class<X> cls) throws Throwable;

    public abstract boolean isCanceled();

    public abstract boolean isComplete();

    public abstract boolean isSuccessful();

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{91, 86, 102, 70, 91, 6, 81, 75, 70, 103, 89, 22, 95, 24, 92, 64, 24, 11, 91, 76, 21, 90, 85, 21, 88, 93, 88, 86, 86, 17, 81, 92}, "48538e", -1465));
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{88, 88, 55, 23, 86, 83, 82, 69, 23, 54, 84, 67, 92, 22, 13, 17, 21, 94, 88, 66, 68, 11, 88, 64, 91, 83, 9, 7, 91, 68, 82, 82}, "76db50", 1.535252513E9d));
    }
}
