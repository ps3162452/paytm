package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes55.dex */
public final class RootTelemetryConfigManager {
    private static RootTelemetryConfigManager zza = null;
    private static final RootTelemetryConfiguration zzb = new RootTelemetryConfiguration(0, false, false, 0, 0);
    private RootTelemetryConfiguration zzc;

    private RootTelemetryConfigManager() {
    }

    public static RootTelemetryConfigManager getInstance() {
        RootTelemetryConfigManager rootTelemetryConfigManager;
        synchronized (RootTelemetryConfigManager.class) {
            try {
                if (zza == null) {
                    zza = new RootTelemetryConfigManager();
                }
                rootTelemetryConfigManager = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rootTelemetryConfigManager;
    }

    public RootTelemetryConfiguration getConfig() {
        return this.zzc;
    }

    public final void zza(RootTelemetryConfiguration rootTelemetryConfiguration) {
        synchronized (this) {
            if (rootTelemetryConfiguration == null) {
                rootTelemetryConfiguration = zzb;
            } else {
                RootTelemetryConfiguration rootTelemetryConfiguration2 = this.zzc;
                if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
                }
            }
            this.zzc = rootTelemetryConfiguration;
        }
    }
}
