package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class BaseImplementation {

    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {
        private final Api<?> mApi;
        private final Api.AnyClientKey<A> mClientKey;

        @Deprecated
        protected ApiMethodImpl(Api.AnyClientKey<A> anyClientKey, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, NPStringFog.decode(new byte[]{118, 89, 12, 2, 89, 85, 112, 70, 10, 38, 89, 89, 84, 88, 23, 69, 88, 69, 66, 66, 67, 11, 90, 68, 17, 84, 6, 69, 91, 69, 93, 90}, "16ce50", 1.691317962E9d)));
            this.mClientKey = (Api.AnyClientKey) Preconditions.checkNotNull(anyClientKey);
            this.mApi = null;
        }

        protected ApiMethodImpl(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, NPStringFog.decode(new byte[]{118, 10, 10, 80, 14, 82, 112, 21, 12, 116, 14, 94, 84, 11, 17, 23, 15, 66, 66, 17, 69, 89, 13, 67, 17, 7, 0, 23, 12, 66, 93, 9}, "1ee7b7", -8.1792966E8f)));
            Preconditions.checkNotNull(api, NPStringFog.decode(new byte[]{112, 18, 8, 68, 94, 67, 66, 22, 65, 10, 92, 66, 17, 0, 4, 68, 93, 67, 93, 14}, "1bad36", -5.07009867E8d));
            this.mClientKey = api.zab();
            this.mApi = api;
        }

        protected ApiMethodImpl(BasePendingResult.CallbackHandler<R> callbackHandler) {
            super(callbackHandler);
            this.mClientKey = new Api.AnyClientKey<>();
            this.mApi = null;
        }

        private void setFailedResult(RemoteException remoteException) {
            setFailedResult(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        protected abstract void doExecute(A a) throws RemoteException;

        public final Api<?> getApi() {
            return this.mApi;
        }

        public final Api.AnyClientKey<A> getClientKey() {
            return this.mClientKey;
        }

        protected void onSetFailedResult(R r) {
        }

        public final void run(A a) throws DeadObjectException {
            try {
                doExecute(a);
            } catch (DeadObjectException e) {
                setFailedResult(e);
                throw e;
            } catch (RemoteException e2) {
                setFailedResult(e2);
            }
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        public final void setFailedResult(Status status) {
            Preconditions.checkArgument(!status.isSuccess(), NPStringFog.decode(new byte[]{32, 3, 81, 15, 1, 84, 70, 16, 93, 16, 17, 92, 18, 66, 85, 22, 23, 68, 70, 12, 87, 23, 68, 82, 3, 66, 75, 22, 7, 83, 3, 17, 75}, "fb8cd0", false));
            R rCreateFailedResult = createFailedResult(status);
            setResult((Result) rCreateFailedResult);
            onSetFailedResult(rCreateFailedResult);
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        public /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((Result) obj);
        }
    }

    public interface ResultHolder<R> {
        void setFailedResult(Status status);

        void setResult(R r);
    }
}
