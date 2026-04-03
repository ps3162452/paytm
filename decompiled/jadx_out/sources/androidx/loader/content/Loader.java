package androidx.loader.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes32.dex */
public class Loader<D> {
    private Context mContext;
    private int mId;
    private OnLoadCompleteListener<D> mListener;
    private OnLoadCanceledListener<D> mOnLoadCanceledListener;
    private boolean mStarted = false;
    private boolean mAbandoned = false;
    private boolean mReset = true;
    private boolean mContentChanged = false;
    private boolean mProcessingChange = false;

    public final class ForceLoadContentObserver extends ContentObserver {
        final Loader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ForceLoadContentObserver(Loader loader) {
            super(new Handler());
            this.this$0 = loader;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.this$0.onContentChanged();
        }
    }

    public interface OnLoadCanceledListener<D> {
        void onLoadCanceled(Loader<D> loader);
    }

    public interface OnLoadCompleteListener<D> {
        void onLoadComplete(Loader<D> loader, D d);
    }

    public Loader(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public void abandon() {
        this.mAbandoned = true;
        onAbandon();
    }

    public boolean cancelLoad() {
        return onCancelLoad();
    }

    public void commitContentChanged() {
        this.mProcessingChange = false;
    }

    public String dataToString(D d) {
        StringBuilder sb = new StringBuilder(64);
        if (d == null) {
            sb.append(NPStringFog.decode(new byte[]{95, 71, 88, 13}, "124af7", 2.05672224E8d));
        } else {
            Class<?> cls = d.getClass();
            sb.append(cls.getSimpleName());
            sb.append(NPStringFog.decode(new byte[]{72}, "3fc04d", false));
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append(NPStringFog.decode(new byte[]{76}, "130e1d", 1.4284279E9f));
        }
        return sb.toString();
    }

    public void deliverCancellation() {
        OnLoadCanceledListener<D> onLoadCanceledListener = this.mOnLoadCanceledListener;
        if (onLoadCanceledListener != null) {
            onLoadCanceledListener.onLoadCanceled(this);
        }
    }

    public void deliverResult(D d) {
        OnLoadCompleteListener<D> onLoadCompleteListener = this.mListener;
        if (onLoadCompleteListener != null) {
            onLoadCompleteListener.onLoadComplete(this, d);
        }
    }

    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print(NPStringFog.decode(new byte[]{92, 113, 2, 91}, "18ff05", 295338459L));
        printWriter.print(this.mId);
        printWriter.print(NPStringFog.decode(new byte[]{18, 14, 117, 91, 22, 16, 87, 13, 92, 64, 88}, "2c92ed", false, false));
        printWriter.println(this.mListener);
        if (this.mStarted || this.mContentChanged || this.mProcessingChange) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{14, 96, 18, 0, 64, 69, 6, 87, 91}, "c3fa21", 1.696772E9f));
            printWriter.print(this.mStarted);
            printWriter.print(NPStringFog.decode(new byte[]{25, 93, 37, 11, 93, 68, 92, 94, 18, 39, 91, 81, 87, 87, 3, 0, 14}, "90fd30", true, false));
            printWriter.print(this.mContentChanged);
            printWriter.print(NPStringFog.decode(new byte[]{65, 14, 102, 16, 9, 0, 4, 16, 69, 11, 8, 4, 34, 11, 87, 12, 1, 6, 92}, "ac6bfc", true, false));
            printWriter.println(this.mProcessingChange);
        }
        if (this.mAbandoned || this.mReset) {
            printWriter.print(str);
            printWriter.print(NPStringFog.decode(new byte[]{92, 36, 3, 84, 93, 7, 94, 11, 4, 81, 14}, "1ea53c", -10699));
            printWriter.print(this.mAbandoned);
            printWriter.print(NPStringFog.decode(new byte[]{22, 93, 98, 83, 17, 92, 66, 13}, "6006b9", -17094));
            printWriter.println(this.mReset);
        }
    }

    public void forceLoad() {
        onForceLoad();
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getId() {
        return this.mId;
    }

    public boolean isAbandoned() {
        return this.mAbandoned;
    }

    public boolean isReset() {
        return this.mReset;
    }

    public boolean isStarted() {
        return this.mStarted;
    }

    protected void onAbandon() {
    }

    protected boolean onCancelLoad() {
        return false;
    }

    public void onContentChanged() {
        if (this.mStarted) {
            forceLoad();
        } else {
            this.mContentChanged = true;
        }
    }

    protected void onForceLoad() {
    }

    protected void onReset() {
    }

    protected void onStartLoading() {
    }

    protected void onStopLoading() {
    }

    public void registerListener(int i, OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.mListener != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{109, 80, 6, 71, 80, 17, 80, 75, 67, 84, 89, 67, 92, 89, 7, 76, 21, 80, 25, 84, 10, 70, 65, 84, 87, 93, 17, 21, 71, 84, 94, 81, 16, 65, 80, 67, 92, 92}, "98c551", 1607812231L));
        }
        this.mListener = onLoadCompleteListener;
        this.mId = i;
    }

    public void registerOnLoadCanceledListener(OnLoadCanceledListener<D> onLoadCanceledListener) {
        if (this.mOnLoadCanceledListener != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{55, 11, 0, 65, 83, 22, 10, 16, 69, 82, 90, 68, 6, 2, 1, 74, 22, 87, 67, 15, 12, 64, 66, 83, 13, 6, 23, 19, 68, 83, 4, 10, 22, 71, 83, 68, 6, 7}, "cce366", 9.178891E8f));
        }
        this.mOnLoadCanceledListener = onLoadCanceledListener;
    }

    public void reset() {
        onReset();
        this.mReset = true;
        this.mStarted = false;
        this.mAbandoned = false;
        this.mContentChanged = false;
        this.mProcessingChange = false;
    }

    public void rollbackContentChanged() {
        if (this.mProcessingChange) {
            onContentChanged();
        }
    }

    public final void startLoading() {
        this.mStarted = true;
        this.mReset = false;
        this.mAbandoned = false;
        onStartLoading();
    }

    public void stopLoading() {
        this.mStarted = false;
        onStopLoading();
    }

    public boolean takeContentChanged() {
        boolean z = this.mContentChanged;
        this.mContentChanged = false;
        this.mProcessingChange |= z;
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        Class<?> cls = getClass();
        sb.append(cls.getSimpleName());
        sb.append(NPStringFog.decode(new byte[]{74}, "15f46b", -1996));
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append(NPStringFog.decode(new byte[]{25, 81, 81, 91}, "985f38", -2956));
        sb.append(this.mId);
        sb.append(NPStringFog.decode(new byte[]{75}, "6437e4", -283384318L));
        return sb.toString();
    }

    public void unregisterListener(OnLoadCompleteListener<D> onLoadCompleteListener) {
        OnLoadCompleteListener<D> onLoadCompleteListener2 = this.mListener;
        if (onLoadCompleteListener2 == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 88, 21, 10, 94, 74, 65, 82, 91, 3, 69, 25, 71, 82, 82, 15, 68, 77, 80, 69}, "575f79", -1695904288L));
        }
        if (onLoadCompleteListener2 != onLoadCompleteListener) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 77, 23, 93, 11, 65, 16, 80, 13, 95, 70, 69, 11, 25, 22, 86, 20, 84, 3, 80, 16, 76, 3, 67, 68, 77, 11, 93, 70, 70, 22, 86, 13, 95, 70, 93, 13, 74, 23, 93, 8, 84, 22}, "d9c8f1", true));
        }
        this.mListener = null;
    }

    public void unregisterOnLoadCanceledListener(OnLoadCanceledListener<D> onLoadCanceledListener) {
        OnLoadCanceledListener<D> onLoadCanceledListener2 = this.mOnLoadCanceledListener;
        if (onLoadCanceledListener2 == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{122, 95, 70, 91, 90, 17, 64, 85, 8, 82, 65, 66, 70, 85, 1, 94, 64, 22, 81, 66}, "40f73b", -35470396L));
        }
        if (onLoadCanceledListener2 != onLoadCanceledListener) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{117, 70, 66, 87, 95, 20, 64, 91, 88, 85, 18, 16, 91, 18, 67, 92, 64, 1, 83, 91, 69, 70, 87, 22, 20, 70, 94, 87, 18, 19, 70, 93, 88, 85, 18, 8, 93, 65, 66, 87, 92, 1, 70}, "42622d", 8.163704E8f));
        }
        this.mOnLoadCanceledListener = null;
    }
}
