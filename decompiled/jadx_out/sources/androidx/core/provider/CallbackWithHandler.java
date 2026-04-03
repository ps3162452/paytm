package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.FontsContractCompat;

/* JADX INFO: loaded from: classes6.dex */
class CallbackWithHandler {
    private final FontsContractCompat.FontRequestCallback mCallback;
    private final Handler mCallbackHandler;

    CallbackWithHandler(FontsContractCompat.FontRequestCallback fontRequestCallback) {
        this.mCallback = fontRequestCallback;
        this.mCallbackHandler = CalleeHandler.create();
    }

    CallbackWithHandler(FontsContractCompat.FontRequestCallback fontRequestCallback, Handler handler) {
        this.mCallback = fontRequestCallback;
        this.mCallbackHandler = handler;
    }

    private void onTypefaceRequestFailed(int i) {
        this.mCallbackHandler.post(new Runnable(this, this.mCallback, i) { // from class: androidx.core.provider.CallbackWithHandler.2
            final CallbackWithHandler this$0;
            final FontsContractCompat.FontRequestCallback val$callback;
            final int val$reason;

            {
                this.this$0 = this;
                this.val$callback = fontRequestCallback;
                this.val$reason = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$callback.onTypefaceRequestFailed(this.val$reason);
            }
        });
    }

    private void onTypefaceRetrieved(Typeface typeface) {
        this.mCallbackHandler.post(new Runnable(this, this.mCallback, typeface) { // from class: androidx.core.provider.CallbackWithHandler.1
            final CallbackWithHandler this$0;
            final FontsContractCompat.FontRequestCallback val$callback;
            final Typeface val$typeface;

            {
                this.this$0 = this;
                this.val$callback = fontRequestCallback;
                this.val$typeface = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$callback.onTypefaceRetrieved(this.val$typeface);
            }
        });
    }

    void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
        if (typefaceResult.isSuccess()) {
            onTypefaceRetrieved(typefaceResult.mTypeface);
        } else {
            onTypefaceRequestFailed(typefaceResult.mResult);
        }
    }
}
