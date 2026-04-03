package com.google.android.gms.common.moduleinstall;

import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class ModuleInstallRequest {
    private final List zaa;
    private final InstallStatusListener zab;
    private final Executor zac;

    public static class Builder {
        private final List zaa = new ArrayList();
        private InstallStatusListener zab;
        private Executor zac;

        public Builder addApi(OptionalModuleApi optionalModuleApi) {
            this.zaa.add(optionalModuleApi);
            return this;
        }

        public ModuleInstallRequest build() {
            return new ModuleInstallRequest(this.zaa, this.zab, this.zac, true, null);
        }

        public Builder setListener(InstallStatusListener installStatusListener) {
            return setListener(installStatusListener, null);
        }

        public Builder setListener(InstallStatusListener installStatusListener, Executor executor) {
            this.zab = installStatusListener;
            this.zac = executor;
            return this;
        }
    }

    /* synthetic */ ModuleInstallRequest(List list, InstallStatusListener installStatusListener, Executor executor, boolean z, zac zacVar) {
        Preconditions.checkNotNull(list, NPStringFog.decode(new byte[]{32, 102, 126, 68, 70, 91, 20, 69, 67, 23, 8, 89, 21, 22, 85, 82, 70, 88, 20, 90, 91, 25}, "a677f6", -7.00025084E8d));
        Preconditions.checkArgument(!list.isEmpty(), NPStringFog.decode(new byte[]{121, 52, 44, 75, 16, 94, 77, 23, 17, 24, 94, 92, 76, 68, 7, 93, 16, 86, 85, 20, 17, 65, 30}, "8de803", true));
        if (executor != null) {
            Preconditions.checkNotNull(installStatusListener, NPStringFog.decode(new byte[]{123, 12, 65, 23, 85, 91, 82, 23, 18, 14, 69, 70, 67, 69, 92, 12, 68, 21, 85, 0, 18, 13, 69, 89, 91, 69, 69, 11, 85, 91, 23, 9, 91, 16, 68, 80, 89, 0, 64, 67, 85, 77, 82, 6, 71, 23, 95, 71, 23, 12, 65, 67, 67, 80, 67, 75}, "7e2c05", 1390744048L));
        }
        this.zaa = list;
        this.zab = installStatusListener;
        this.zac = executor;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public List<OptionalModuleApi> getApis() {
        return this.zaa;
    }

    public InstallStatusListener getListener() {
        return this.zab;
    }

    public Executor getListenerExecutor() {
        return this.zac;
    }
}
