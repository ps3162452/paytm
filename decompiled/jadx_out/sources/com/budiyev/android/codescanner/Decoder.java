package com.budiyev.android.codescanner;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import java.lang.Thread;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes67.dex */
final class Decoder {
    private volatile DecodeCallback mCallback;
    private final DecoderThread mDecoderThread;
    private final Map<DecodeHintType, Object> mHints;
    private final MultiFormatReader mReader;
    private volatile State mState;
    private final StateListener mStateListener;
    private volatile DecodeTask mTask;
    private final Object mTaskLock = new Object();

    private final class DecoderThread extends Thread {
        final Decoder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DecoderThread(Decoder decoder) {
            super(NPStringFog.decode(new byte[]{81, 64, 73, 5, 81, 0, 93, 87, 1, 19}, "23da4c", -31839));
            this.this$0 = decoder;
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x0036 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0006 A[SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r5 = this;
                r4 = 0
                r0 = 10
                android.os.Process.setThreadPriority(r0)
            L6:
                com.budiyev.android.codescanner.Decoder r0 = r5.this$0
                com.budiyev.android.codescanner.Decoder$State r1 = com.budiyev.android.codescanner.Decoder.State.IDLE
                com.budiyev.android.codescanner.Decoder.access$000(r0, r1)
            Ld:
                com.budiyev.android.codescanner.Decoder r0 = r5.this$0     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                java.lang.Object r1 = com.budiyev.android.codescanner.Decoder.access$100(r0)     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                monitor-enter(r1)     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                com.budiyev.android.codescanner.Decoder r0 = r5.this$0     // Catch: java.lang.Throwable -> L5c
                com.budiyev.android.codescanner.DecodeTask r0 = com.budiyev.android.codescanner.Decoder.access$200(r0)     // Catch: java.lang.Throwable -> L5c
                if (r0 == 0) goto L51
                com.budiyev.android.codescanner.Decoder r2 = r5.this$0     // Catch: java.lang.Throwable -> L5c
                r3 = 0
                com.budiyev.android.codescanner.Decoder.access$202(r2, r3)     // Catch: java.lang.Throwable -> L5c
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5c
                com.budiyev.android.codescanner.Decoder r1 = r5.this$0     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                com.budiyev.android.codescanner.Decoder$State r2 = com.budiyev.android.codescanner.Decoder.State.DECODING     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                com.budiyev.android.codescanner.Decoder.access$000(r1, r2)     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                com.budiyev.android.codescanner.Decoder r1 = r5.this$0     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                com.google.zxing.MultiFormatReader r1 = com.budiyev.android.codescanner.Decoder.access$300(r1)     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                com.google.zxing.Result r0 = r0.decode(r1)     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
                if (r0 == 0) goto L6
                com.budiyev.android.codescanner.Decoder r1 = r5.this$0
                com.budiyev.android.codescanner.Decoder.access$202(r1, r4)
                com.budiyev.android.codescanner.Decoder r1 = r5.this$0
                com.budiyev.android.codescanner.Decoder$State r2 = com.budiyev.android.codescanner.Decoder.State.DECODED
                boolean r1 = com.budiyev.android.codescanner.Decoder.access$000(r1, r2)
                if (r1 == 0) goto L6
                com.budiyev.android.codescanner.Decoder r1 = r5.this$0
                com.budiyev.android.codescanner.DecodeCallback r1 = com.budiyev.android.codescanner.Decoder.access$400(r1)
                if (r1 == 0) goto L6
                r1.onDecoded(r0)
                goto L6
            L51:
                com.budiyev.android.codescanner.Decoder r0 = r5.this$0     // Catch: java.lang.Throwable -> L5c java.lang.InterruptedException -> L61
                java.lang.Object r0 = com.budiyev.android.codescanner.Decoder.access$100(r0)     // Catch: java.lang.Throwable -> L5c java.lang.InterruptedException -> L61
                r0.wait()     // Catch: java.lang.Throwable -> L5c java.lang.InterruptedException -> L61
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5c
                goto Ld
            L5c:
                r0 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5c
                throw r0     // Catch: com.google.zxing.ReaderException -> L5f java.lang.Throwable -> L6b
            L5f:
                r0 = move-exception
                goto L6
            L61:
                r0 = move-exception
                com.budiyev.android.codescanner.Decoder r0 = r5.this$0     // Catch: java.lang.Throwable -> L5c
                com.budiyev.android.codescanner.Decoder$State r2 = com.budiyev.android.codescanner.Decoder.State.STOPPED     // Catch: java.lang.Throwable -> L5c
                com.budiyev.android.codescanner.Decoder.access$000(r0, r2)     // Catch: java.lang.Throwable -> L5c
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5c
                return
            L6b:
                r0 = move-exception
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.budiyev.android.codescanner.Decoder.DecoderThread.run():void");
        }
    }

    public enum State {
        INITIALIZED,
        IDLE,
        DECODING,
        DECODED,
        STOPPED
    }

    public interface StateListener {
        boolean onStateChanged(@NonNull State state);
    }

    public Decoder(@NonNull StateListener stateListener, @NonNull Thread.UncaughtExceptionHandler uncaughtExceptionHandler, @NonNull List<BarcodeFormat> list, @Nullable DecodeCallback decodeCallback) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.mReader = multiFormatReader;
        DecoderThread decoderThread = new DecoderThread(this);
        this.mDecoderThread = decoderThread;
        decoderThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        this.mHints = enumMap;
        enumMap.put(DecodeHintType.POSSIBLE_FORMATS, list);
        multiFormatReader.setHints(enumMap);
        this.mCallback = decodeCallback;
        this.mStateListener = stateListener;
        this.mState = State.INITIALIZED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setState(@NonNull State state) {
        this.mState = state;
        return this.mStateListener.onStateChanged(state);
    }

    public void decode(@NonNull DecodeTask decodeTask) {
        synchronized (this.mTaskLock) {
            if (this.mState != State.STOPPED) {
                this.mTask = decodeTask;
                this.mTaskLock.notify();
            }
        }
    }

    @NonNull
    public State getState() {
        return this.mState;
    }

    public void setCallback(@Nullable DecodeCallback decodeCallback) {
        this.mCallback = decodeCallback;
    }

    public void setFormats(@NonNull List<BarcodeFormat> list) {
        this.mHints.put(DecodeHintType.POSSIBLE_FORMATS, list);
        this.mReader.setHints(this.mHints);
    }

    public void shutdown() {
        this.mDecoderThread.interrupt();
        this.mTask = null;
    }

    public void start() {
        if (this.mState != State.INITIALIZED) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{47, 90, 9, 4, 81, 87, 10, 22, 1, 4, 85, 89, 2, 83, 23, 65, 69, 66, 7, 66, 0}, "f6ea66", 1.531785279E9d));
        }
        this.mDecoderThread.start();
    }
}
