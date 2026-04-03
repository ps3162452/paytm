package androidx.loader.content;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.DateUtils;
import androidx.core.os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes32.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {
    private static final boolean DEBUG = false;
    private static final String TAG = NPStringFog.decode(new byte[]{121, 22, 65, 86, 80, 97, 89, 22, 83, 116, 92, 84, 92, 0, 74}, "8e8835", true);
    private volatile AsyncTaskLoader<D>.LoadTask mCancellingTask;
    private Executor mExecutor;
    private Handler mHandler;
    private long mLastLoadCompleteTime;
    private volatile AsyncTaskLoader<D>.LoadTask mTask;
    private long mUpdateThrottle;

    final class LoadTask extends ModernAsyncTask<D> implements Runnable {
        final AsyncTaskLoader this$0;
        boolean waiting;

        LoadTask(AsyncTaskLoader asyncTaskLoader) {
            this.this$0 = asyncTaskLoader;
        }

        @Override // androidx.loader.content.ModernAsyncTask
        protected D doInBackground() {
            try {
                return (D) this.this$0.onLoadInBackground();
            } catch (OperationCanceledException e) {
                if (isCancelled()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        protected void onCancelled(D d) {
            this.this$0.dispatchOnCancelled(this, d);
        }

        @Override // androidx.loader.content.ModernAsyncTask
        protected void onPostExecute(D d) {
            this.this$0.dispatchOnLoadComplete(this, d);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.waiting = false;
            this.this$0.executePendingTask();
        }
    }

    public AsyncTaskLoader(Context context) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
    }

    public void cancelLoadInBackground() {
    }

    void dispatchOnCancelled(AsyncTaskLoader<D>.LoadTask loadTask, D d) {
        onCanceled(d);
        if (this.mCancellingTask == loadTask) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            deliverCancellation();
            executePendingTask();
        }
    }

    void dispatchOnLoadComplete(AsyncTaskLoader<D>.LoadTask loadTask, D d) {
        if (this.mTask != loadTask) {
            dispatchOnCancelled(loadTask, d);
            return;
        }
        if (isAbandoned()) {
            onCanceled(d);
            return;
        }
        commitContentChanged();
        this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
        this.mTask = null;
        deliverResult(d);
    }

    @Override // androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String strDecode;
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{89, 98, 0, 69, 9, 13}, "46a6b0", 727396423L));
            printWriter.print(this.mTask);
            printWriter.print(NPStringFog.decode(new byte[]{21, 17, 3, 81, 16, 80, 91, 1, 95}, "5fb8d9", true));
            printWriter.println(this.mTask.waiting);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{93, 33, 3, 13, 90, 4, 92, 14, 11, 13, 94, 53, 81, 17, 9, 94}, "0bbc9a", -1.163887842E9d));
            printWriter.print(this.mCancellingTask);
            printWriter.print(NPStringFog.decode(new byte[]{67, 78, 88, 89, 17, 15, 13, 94, 4}, "c990ef", 1.4112216E9f));
            printWriter.println(this.mCancellingTask.waiting);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{89, 54, 19, 5, 7, 68, 81, 55, 11, 19, 9, 68, 64, 15, 6, 92}, "4ccaf0", -1521803820L));
            printWriter.print(DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(this.mUpdateThrottle)));
            printWriter.print(NPStringFog.decode(new byte[]{69, 14, 41, 89, 71, 69, 41, 12, 4, 92, 119, 94, 8, 19, 9, 93, 64, 84, 49, 10, 8, 93, 9}, "ece841", 6463));
            if (this.mLastLoadCompleteTime == -10000) {
                strDecode = NPStringFog.decode(new byte[]{79, 78}, "bc6112", true, true);
            } else {
                strDecode = NPStringFog.decode(new byte[]{24}, "5fbbbb", 1.28108873E9d) + DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(SystemClock.uptimeMillis() - this.mLastLoadCompleteTime));
            }
            printWriter.print(strDecode);
            printWriter.println();
        }
    }

    void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        if (this.mTask.waiting) {
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            this.mTask.waiting = true;
            this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
        } else {
            if (this.mExecutor == null) {
                this.mExecutor = getExecutor();
            }
            this.mTask.executeOnExecutor(this.mExecutor);
        }
    }

    protected Executor getExecutor() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.mCancellingTask != null;
    }

    public abstract D loadInBackground();

    @Override // androidx.loader.content.Loader
    protected boolean onCancelLoad() {
        boolean zCancel = false;
        if (this.mTask != null) {
            if (!isStarted()) {
                onContentChanged();
            }
            if (this.mCancellingTask != null) {
                if (this.mTask.waiting) {
                    this.mTask.waiting = false;
                    this.mHandler.removeCallbacks(this.mTask);
                }
                this.mTask = null;
            } else if (this.mTask.waiting) {
                this.mTask.waiting = false;
                this.mHandler.removeCallbacks(this.mTask);
                this.mTask = null;
            } else {
                zCancel = this.mTask.cancel(false);
                if (zCancel) {
                    this.mCancellingTask = this.mTask;
                    cancelLoadInBackground();
                }
                this.mTask = null;
            }
        }
        return zCancel;
    }

    public void onCanceled(D d) {
    }

    @Override // androidx.loader.content.Loader
    protected void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.mTask = new LoadTask(this);
        executePendingTask();
    }

    protected D onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j) {
        this.mUpdateThrottle = j;
        if (j != 0) {
            this.mHandler = new Handler();
        }
    }
}
