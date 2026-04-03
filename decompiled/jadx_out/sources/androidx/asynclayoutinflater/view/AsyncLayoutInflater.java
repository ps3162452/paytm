package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.util.Pools;
import java.util.concurrent.ArrayBlockingQueue;
import n.NPStringFog;

/* JADX INFO: loaded from: classes44.dex */
public final class AsyncLayoutInflater {
    private static final String TAG = NPStringFog.decode(new byte[]{120, 21, 73, 95, 82, 41, 88, 31, 95, 68, 69, 44, 87, 0, 92, 80, 69, 0, 75}, "9f011e", 26383);
    LayoutInflater mInflater;
    private Handler.Callback mHandlerCallback = new Handler.Callback(this) { // from class: androidx.asynclayoutinflater.view.AsyncLayoutInflater.1
        final AsyncLayoutInflater this$0;

        {
            this.this$0 = this;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            InflateRequest inflateRequest = (InflateRequest) message.obj;
            if (inflateRequest.view == null) {
                inflateRequest.view = this.this$0.mInflater.inflate(inflateRequest.resid, inflateRequest.parent, false);
            }
            inflateRequest.callback.onInflateFinished(inflateRequest.view, inflateRequest.resid, inflateRequest.parent);
            this.this$0.mInflateThread.releaseRequest(inflateRequest);
            return true;
        }
    };
    Handler mHandler = new Handler(this.mHandlerCallback);
    InflateThread mInflateThread = InflateThread.getInstance();

    private static class BasicInflater extends LayoutInflater {
        private static final String[] sClassPrefixList = {NPStringFog.decode(new byte[]{89, 12, 2, 74, 86, 89, 92, 76, 17, 81, 93, 87, 93, 22, 72}, "8bf890", false, true), NPStringFog.decode(new byte[]{82, 94, 80, 71, 10, 81, 87, 30, 67, 80, 7, 83, 90, 68, 26}, "3045e8", -5.566121E8f), NPStringFog.decode(new byte[]{81, 8, 2, 67, 88, 95, 84, 72, 7, 65, 71, 24}, "0ff176", false, true)};

        BasicInflater(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public LayoutInflater cloneInContext(Context context) {
            return new BasicInflater(context);
        }

        @Override // android.view.LayoutInflater
        protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
            View viewCreateView;
            for (String str2 : sClassPrefixList) {
                try {
                    viewCreateView = createView(str, str2, attributeSet);
                } catch (ClassNotFoundException e) {
                }
                if (viewCreateView != null) {
                    return viewCreateView;
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    private static class InflateRequest {
        OnInflateFinishedListener callback;
        AsyncLayoutInflater inflater;
        ViewGroup parent;
        int resid;
        View view;

        InflateRequest() {
        }
    }

    private static class InflateThread extends Thread {
        private static final InflateThread sInstance = new InflateThread();
        private ArrayBlockingQueue<InflateRequest> mQueue = new ArrayBlockingQueue<>(10);
        private Pools.SynchronizedPool<InflateRequest> mRequestPool = new Pools.SynchronizedPool<>(10);

        static {
            sInstance.start();
        }

        private InflateThread() {
        }

        public static InflateThread getInstance() {
            return sInstance;
        }

        public void enqueue(InflateRequest inflateRequest) {
            try {
                this.mQueue.put(inflateRequest);
            } catch (InterruptedException e) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{127, 85, 88, 90, 84, 2, 25, 64, 94, 22, 84, 8, 72, 65, 84, 67, 84, 70, 88, 71, 72, 88, 82, 70, 80, 90, 87, 90, 80, 18, 92, 20, 67, 83, 64, 19, 92, 71, 69}, "94161f", false, false), e);
            }
        }

        public InflateRequest obtainRequest() {
            InflateRequest inflateRequestAcquire = this.mRequestPool.acquire();
            return inflateRequestAcquire == null ? new InflateRequest() : inflateRequestAcquire;
        }

        public void releaseRequest(InflateRequest inflateRequest) {
            inflateRequest.callback = null;
            inflateRequest.inflater = null;
            inflateRequest.parent = null;
            inflateRequest.resid = 0;
            inflateRequest.view = null;
            this.mRequestPool.release(inflateRequest);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                runInner();
            }
        }

        public void runInner() {
            try {
                InflateRequest inflateRequestTake = this.mQueue.take();
                try {
                    inflateRequestTake.view = inflateRequestTake.inflater.mInflater.inflate(inflateRequestTake.resid, inflateRequestTake.parent, false);
                } catch (RuntimeException e) {
                    Log.w(NPStringFog.decode(new byte[]{115, 74, 73, 91, 80, 47, 83, 64, 95, 64, 71, 42, 92, 95, 92, 84, 71, 6, 64}, "29053c", -1.3997841E9f), NPStringFog.decode(new byte[]{119, 88, 93, 89, 81, 2, 17, 77, 91, 21, 93, 8, 87, 85, 85, 65, 81, 70, 67, 92, 71, 90, 65, 20, 82, 92, 20, 92, 90, 70, 69, 81, 81, 21, 86, 7, 82, 82, 83, 71, 91, 19, 95, 93, 21, 21, 102, 3, 69, 75, 77, 92, 90, 1, 17, 86, 90, 21, 64, 14, 84, 25, 97, 124, 20, 18, 89, 75, 81, 84, 80}, "19454f", -1.7756022E9f), e);
                }
                Message.obtain(inflateRequestTake.inflater.mHandler, 0, inflateRequestTake).sendToTarget();
            } catch (InterruptedException e2) {
                Log.w(NPStringFog.decode(new byte[]{116, 65, 31, 95, 2, 117, 84, 75, 9, 68, 21, 112, 91, 84, 10, 80, 21, 92, 71}, "52f1a9", true, true), e2);
            }
        }
    }

    public interface OnInflateFinishedListener {
        void onInflateFinished(@NonNull View view, @LayoutRes int i, @Nullable ViewGroup viewGroup);
    }

    public AsyncLayoutInflater(@NonNull Context context) {
        this.mInflater = new BasicInflater(context);
    }

    @UiThread
    public void inflate(@LayoutRes int i, @Nullable ViewGroup viewGroup, @NonNull OnInflateFinishedListener onInflateFinishedListener) {
        if (onInflateFinishedListener == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{91, 82, 92, 94, 82, 89, 91, 88, 16, 83, 66, 95, 77, 94, 85, 92, 68, 24, 85, 82, 73, 18, 94, 87, 76, 19, 82, 87, 16, 86, 77, 95, 92, 19}, "830208", 701599784L));
        }
        InflateRequest inflateRequestObtainRequest = this.mInflateThread.obtainRequest();
        inflateRequestObtainRequest.inflater = this;
        inflateRequestObtainRequest.resid = i;
        inflateRequestObtainRequest.parent = viewGroup;
        inflateRequestObtainRequest.callback = onInflateFinishedListener;
        this.mInflateThread.enqueue(inflateRequestObtainRequest);
    }
}
