package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {
    public final RegisterListenerMethod<A, L> register;
    public final UnregisterListenerMethod zaa;
    public final Runnable zab;

    public static class Builder<A extends Api.AnyClient, L> {
        private RemoteCall zaa;
        private RemoteCall zab;
        private ListenerHolder zad;
        private Feature[] zae;
        private int zag;
        private Runnable zac = zacj.zaa;
        private boolean zaf = true;

        private Builder() {
        }

        /* synthetic */ Builder(zacm zacmVar) {
        }

        public RegistrationMethods<A, L> build() {
            Preconditions.checkArgument(this.zaa != null, NPStringFog.decode(new byte[]{126, 68, 21, 66, 70, 66, 86, 69, 70, 68, 3, 86, 90, 66, 18, 83, 20, 17, 85, 68, 8, 85, 18, 88, 92, 95}, "31f6f1", -4051));
            Preconditions.checkArgument(this.zab != null, NPStringFog.decode(new byte[]{122, 22, 21, 70, 17, 69, 82, 23, 70, 71, 95, 68, 82, 4, 15, 65, 69, 83, 69, 67, 0, 71, 95, 85, 67, 10, 9, 92}, "7cf216", true));
            Preconditions.checkArgument(this.zad != null, NPStringFog.decode(new byte[]{127, 22, 70, 21, 67, 22, 87, 23, 21, 9, 12, 9, 86, 6, 71}, "2c5ace", -1.6830071E9f));
            return new RegistrationMethods<>(new zack(this, this.zad, this.zae, this.zaf, this.zag), new zacl(this, (ListenerHolder.ListenerKey) Preconditions.checkNotNull(this.zad.getListenerKey(), NPStringFog.decode(new byte[]{120, 0, 26, 65, 9, 65, 64, 17, 67, 15, 11, 64, 19, 7, 6, 65, 10, 65, 95, 9}, "3ecad4", 1981448528L))), this.zac, null);
        }

        public Builder<A, L> onConnectionSuspended(Runnable runnable) {
            this.zac = runnable;
            return this;
        }

        public Builder<A, L> register(RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.zaa = remoteCall;
            return this;
        }

        public Builder<A, L> setAutoResolveMissingFeatures(boolean z) {
            this.zaf = z;
            return this;
        }

        public Builder<A, L> setFeatures(Feature... featureArr) {
            this.zae = featureArr;
            return this;
        }

        public Builder<A, L> setMethodKey(int i) {
            this.zag = i;
            return this;
        }

        public Builder<A, L> unregister(RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.zab = remoteCall;
            return this;
        }

        public Builder<A, L> withHolder(ListenerHolder<L> listenerHolder) {
            this.zad = listenerHolder;
            return this;
        }
    }

    /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable, zacn zacnVar) {
        this.register = registerListenerMethod;
        this.zaa = unregisterListenerMethod;
        this.zab = runnable;
    }

    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        return new Builder<>(null);
    }
}
