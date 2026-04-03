package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes59.dex */
final class zacd implements OnCompleteListener {
    private final GoogleApiManager zaa;
    private final int zab;
    private final ApiKey zac;
    private final long zad;
    private final long zae;

    zacd(GoogleApiManager googleApiManager, int i, ApiKey apiKey, long j, long j2, String str, String str2) {
        this.zaa = googleApiManager;
        this.zab = i;
        this.zac = apiKey;
        this.zad = j;
        this.zae = j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.common.api.internal.zacd zaa(com.google.android.gms.common.api.internal.GoogleApiManager r10, int r11, com.google.android.gms.common.api.internal.ApiKey r12) {
        /*
            r6 = 0
            r8 = 0
            boolean r0 = r10.zaD()
            if (r0 != 0) goto La
        L9:
            return r8
        La:
            com.google.android.gms.common.internal.RootTelemetryConfigManager r0 = com.google.android.gms.common.internal.RootTelemetryConfigManager.getInstance()
            com.google.android.gms.common.internal.RootTelemetryConfiguration r0 = r0.getConfig()
            if (r0 == 0) goto L62
            boolean r1 = r0.getMethodInvocationTelemetryEnabled()
            if (r1 == 0) goto L9
            boolean r1 = r0.getMethodTimingTelemetryEnabled()
            com.google.android.gms.common.api.internal.zabq r2 = r10.zai(r12)
            if (r2 == 0) goto L66
            com.google.android.gms.common.api.Api$Client r0 = r2.zaf()
            boolean r0 = r0 instanceof com.google.android.gms.common.internal.BaseGmsClient
            if (r0 == 0) goto L9
            com.google.android.gms.common.api.Api$Client r0 = r2.zaf()
            com.google.android.gms.common.internal.BaseGmsClient r0 = (com.google.android.gms.common.internal.BaseGmsClient) r0
            boolean r3 = r0.hasConnectionInfo()
            if (r3 == 0) goto L66
            boolean r3 = r0.isConnecting()
            if (r3 != 0) goto L66
            com.google.android.gms.common.internal.ConnectionTelemetryConfiguration r0 = zab(r2, r0, r11)
            if (r0 == 0) goto L9
            r2.zaq()
            boolean r0 = r0.getMethodTimingTelemetryEnabled()
        L4b:
            if (r0 == 0) goto L64
            long r4 = java.lang.System.currentTimeMillis()
        L51:
            if (r0 == 0) goto L57
            long r6 = android.os.SystemClock.elapsedRealtime()
        L57:
            com.google.android.gms.common.api.internal.zacd r0 = new com.google.android.gms.common.api.internal.zacd
            r1 = r10
            r2 = r11
            r3 = r12
            r9 = r8
            r0.<init>(r1, r2, r3, r4, r6, r8, r9)
            r8 = r0
            goto L9
        L62:
            r0 = 1
            goto L4b
        L64:
            r4 = r6
            goto L51
        L66:
            r0 = r1
            goto L4b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zacd.zaa(com.google.android.gms.common.api.internal.GoogleApiManager, int, com.google.android.gms.common.api.internal.ApiKey):com.google.android.gms.common.api.internal.zacd");
    }

    private static ConnectionTelemetryConfiguration zab(zabq zabqVar, BaseGmsClient baseGmsClient, int i) {
        int[] methodInvocationMethodKeyAllowlist;
        int[] methodInvocationMethodKeyDisallowlist;
        ConnectionTelemetryConfiguration telemetryConfiguration = baseGmsClient.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled() || ((methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist()) != null ? !ArrayUtils.contains(methodInvocationMethodKeyAllowlist, i) : !((methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist()) == null || !ArrayUtils.contains(methodInvocationMethodKeyDisallowlist, i)))) {
            return null;
        }
        if (zabqVar.zac() < telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return telemetryConfiguration;
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        zabq zabqVarZai;
        int i;
        int i2;
        int i3;
        int statusCode;
        int errorCode;
        long jCurrentTimeMillis;
        int iElapsedRealtime;
        long j;
        boolean z;
        int maxMethodInvocationsLogged;
        if (this.zaa.zaD()) {
            RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
            if ((config == null || config.getMethodInvocationTelemetryEnabled()) && (zabqVarZai = this.zaa.zai(this.zac)) != null && (zabqVarZai.zaf() instanceof BaseGmsClient)) {
                BaseGmsClient baseGmsClient = (BaseGmsClient) zabqVarZai.zaf();
                boolean z2 = this.zad > 0;
                int gCoreServiceId = baseGmsClient.getGCoreServiceId();
                if (config != null) {
                    boolean methodTimingTelemetryEnabled = z2 & config.getMethodTimingTelemetryEnabled();
                    int batchPeriodMillis = config.getBatchPeriodMillis();
                    int maxMethodInvocationsInBatch = config.getMaxMethodInvocationsInBatch();
                    int version = config.getVersion();
                    if (!baseGmsClient.hasConnectionInfo() || baseGmsClient.isConnecting()) {
                        z = methodTimingTelemetryEnabled;
                        maxMethodInvocationsLogged = maxMethodInvocationsInBatch;
                    } else {
                        ConnectionTelemetryConfiguration connectionTelemetryConfigurationZab = zab(zabqVarZai, baseGmsClient, this.zab);
                        if (connectionTelemetryConfigurationZab == null) {
                            return;
                        }
                        z = connectionTelemetryConfigurationZab.getMethodTimingTelemetryEnabled() && this.zad > 0;
                        maxMethodInvocationsLogged = connectionTelemetryConfigurationZab.getMaxMethodInvocationsLogged();
                    }
                    i = version;
                    i2 = maxMethodInvocationsLogged;
                    i3 = batchPeriodMillis;
                    z2 = z;
                } else {
                    i = 0;
                    i2 = 100;
                    i3 = 5000;
                }
                GoogleApiManager googleApiManager = this.zaa;
                if (task.isSuccessful()) {
                    statusCode = 0;
                    errorCode = 0;
                } else if (task.isCanceled()) {
                    statusCode = 100;
                    errorCode = -1;
                } else {
                    Exception exception = task.getException();
                    if (exception instanceof ApiException) {
                        Status status = ((ApiException) exception).getStatus();
                        statusCode = status.getStatusCode();
                        ConnectionResult connectionResult = status.getConnectionResult();
                        errorCode = connectionResult == null ? -1 : connectionResult.getErrorCode();
                    } else {
                        statusCode = 101;
                        errorCode = -1;
                    }
                }
                if (z2) {
                    j = this.zad;
                    jCurrentTimeMillis = System.currentTimeMillis();
                    iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.zae);
                } else {
                    jCurrentTimeMillis = 0;
                    iElapsedRealtime = -1;
                    j = 0;
                }
                googleApiManager.zaw(new MethodInvocation(this.zab, statusCode, errorCode, j, jCurrentTimeMillis, null, null, gCoreServiceId, iElapsedRealtime), i, i3, i2);
            }
        }
    }
}
