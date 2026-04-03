package com.google.android.gms.common.moduleinstall.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.moduleinstall.InstallStatusListener;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallClient;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallRequest;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zay extends GoogleApi implements ModuleInstallClient {
    public static final int zab = 0;
    private static final Api.ClientKey zac;
    private static final Api.AbstractClientBuilder zad;
    private static final Api zae;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zac = clientKey;
        zaq zaqVar = new zaq();
        zad = zaqVar;
        zae = new Api(NPStringFog.decode(new byte[]{125, 88, 7, 67, 94, 82, 121, 89, 16, 66, 83, 91, 92, 25, 34, 102, 123}, "07c627", 1.6967863E9f), zaqVar, clientKey);
    }

    public zay(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) zae, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public zay(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zae, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    static final ApiFeatureRequest zad(boolean z, OptionalModuleApi... optionalModuleApiArr) {
        Preconditions.checkNotNull(optionalModuleApiArr, NPStringFog.decode(new byte[]{97, 1, 21, 19, 80, 71, 71, 1, 0, 70, 116, 100, 122, 23, 68, 11, 64, 71, 71, 68, 10, 9, 65, 20, 81, 1, 68, 8, 64, 88, 95, 74}, "3ddf54", true));
        Preconditions.checkArgument(optionalModuleApiArr.length > 0, NPStringFog.decode(new byte[]{49, 89, 81, 87, 67, 84, 65, 69, 70, 89, 70, 88, 5, 80, 20, 87, 68, 17, 13, 80, 85, 69, 68, 17, 14, 91, 81, 22, 127, 65, 21, 92, 91, 88, 81, 93, 44, 90, 80, 67, 92, 84, 32, 69, 93, 24}, "a54601", false));
        for (OptionalModuleApi optionalModuleApi : optionalModuleApiArr) {
            Preconditions.checkNotNull(optionalModuleApi, NPStringFog.decode(new byte[]{97, 1, 67, 19, 4, 23, 71, 1, 86, 70, 32, 52, 122, 68, 95, 19, 18, 16, 19, 10, 93, 18, 65, 6, 86, 68, 92, 19, 13, 8, 29}, "3d2fad", false));
        }
        return ApiFeatureRequest.zaa(Arrays.asList(optionalModuleApiArr), z);
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final Task<ModuleAvailabilityResponse> areModulesAvailable(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest apiFeatureRequestZad = zad(false, optionalModuleApiArr);
        if (apiFeatureRequestZad.getApiFeatures().isEmpty()) {
            return Tasks.forResult(new ModuleAvailabilityResponse(true, 0));
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27301);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new RemoteCall(this, apiFeatureRequestZad) { // from class: com.google.android.gms.common.moduleinstall.internal.zap
            public final zay zaa;
            public final ApiFeatureRequest zab;

            {
                this.zaa = this;
                this.zab = apiFeatureRequestZad;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zay zayVar = this.zaa;
                ApiFeatureRequest apiFeatureRequest = this.zab;
                ((zaf) ((zaz) obj).getService()).zae(new zar(zayVar, (TaskCompletionSource) obj2), apiFeatureRequest);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final Task<Void> deferredInstall(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest apiFeatureRequestZad = zad(false, optionalModuleApiArr);
        if (apiFeatureRequestZad.getApiFeatures().isEmpty()) {
            return Tasks.forResult(null);
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27302);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new RemoteCall(this, apiFeatureRequestZad) { // from class: com.google.android.gms.common.moduleinstall.internal.zan
            public final zay zaa;
            public final ApiFeatureRequest zab;

            {
                this.zaa = this;
                this.zab = apiFeatureRequestZad;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zay zayVar = this.zaa;
                ApiFeatureRequest apiFeatureRequest = this.zab;
                ((zaf) ((zaz) obj).getService()).zag(new zas(zayVar, (TaskCompletionSource) obj2), apiFeatureRequest, null);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final Task<ModuleInstallIntentResponse> getInstallModulesIntent(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest apiFeatureRequestZad = zad(true, optionalModuleApiArr);
        if (apiFeatureRequestZad.getApiFeatures().isEmpty()) {
            return Tasks.forResult(new ModuleInstallIntentResponse(null));
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27307);
        builder.run(new RemoteCall(this, apiFeatureRequestZad) { // from class: com.google.android.gms.common.moduleinstall.internal.zam
            public final zay zaa;
            public final ApiFeatureRequest zab;

            {
                this.zaa = this;
                this.zab = apiFeatureRequestZad;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zay zayVar = this.zaa;
                ApiFeatureRequest apiFeatureRequest = this.zab;
                ((zaf) ((zaz) obj).getService()).zaf(new zaw(zayVar, (TaskCompletionSource) obj2), apiFeatureRequest);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final Task<ModuleInstallResponse> installModules(ModuleInstallRequest moduleInstallRequest) {
        final ApiFeatureRequest apiFeatureRequestFromModuleInstallRequest = ApiFeatureRequest.fromModuleInstallRequest(moduleInstallRequest);
        final InstallStatusListener listener = moduleInstallRequest.getListener();
        Executor listenerExecutor = moduleInstallRequest.getListenerExecutor();
        if (apiFeatureRequestFromModuleInstallRequest.getApiFeatures().isEmpty()) {
            return Tasks.forResult(new ModuleInstallResponse(0));
        }
        if (listener == null) {
            TaskApiCall.Builder builder = TaskApiCall.builder();
            builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
            builder.setAutoResolveMissingFeatures(true);
            builder.setMethodKey(27304);
            builder.run(new RemoteCall(this, apiFeatureRequestFromModuleInstallRequest) { // from class: com.google.android.gms.common.moduleinstall.internal.zao
                public final zay zaa;
                public final ApiFeatureRequest zab;

                {
                    this.zaa = this;
                    this.zab = apiFeatureRequestFromModuleInstallRequest;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) throws RemoteException {
                    zay zayVar = this.zaa;
                    ApiFeatureRequest apiFeatureRequest = this.zab;
                    ((zaf) ((zaz) obj).getService()).zag(new zat(zayVar, (TaskCompletionSource) obj2), apiFeatureRequest, null);
                }
            });
            return doRead(builder.build());
        }
        Preconditions.checkNotNull(listener);
        ListenerHolder listenerHolderRegisterListener = listenerExecutor == null ? registerListener(listener, InstallStatusListener.class.getSimpleName()) : ListenerHolders.createListenerHolder(listener, listenerExecutor, InstallStatusListener.class.getSimpleName());
        final zaab zaabVar = new zaab(listenerHolderRegisterListener);
        final AtomicReference atomicReference = new AtomicReference();
        RemoteCall remoteCall = new RemoteCall(this, atomicReference, listener, apiFeatureRequestFromModuleInstallRequest, zaabVar) { // from class: com.google.android.gms.common.moduleinstall.internal.zai
            public final zay zaa;
            public final AtomicReference zab;
            public final InstallStatusListener zac;
            public final ApiFeatureRequest zad;
            public final zaab zae;

            {
                this.zaa = this;
                this.zab = atomicReference;
                this.zac = listener;
                this.zad = apiFeatureRequestFromModuleInstallRequest;
                this.zae = zaabVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zay zayVar = this.zaa;
                AtomicReference atomicReference2 = this.zab;
                InstallStatusListener installStatusListener = this.zac;
                ApiFeatureRequest apiFeatureRequest = this.zad;
                zaab zaabVar2 = this.zae;
                ((zaf) ((zaz) obj).getService()).zag(new zau(zayVar, atomicReference2, (TaskCompletionSource) obj2, installStatusListener), apiFeatureRequest, zaabVar2);
            }
        };
        RemoteCall remoteCall2 = new RemoteCall(this, zaabVar) { // from class: com.google.android.gms.common.moduleinstall.internal.zaj
            public final zay zaa;
            public final zaab zab;

            {
                this.zaa = this;
                this.zab = zaabVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zay zayVar = this.zaa;
                zaab zaabVar2 = this.zab;
                ((zaf) ((zaz) obj).getService()).zai(new zav(zayVar, (TaskCompletionSource) obj2), zaabVar2);
            }
        };
        RegistrationMethods.Builder builder2 = RegistrationMethods.builder();
        builder2.withHolder(listenerHolderRegisterListener);
        builder2.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder2.setAutoResolveMissingFeatures(true);
        builder2.register(remoteCall);
        builder2.unregister(remoteCall2);
        builder2.setMethodKey(27305);
        return doRegisterEventListener(builder2.build()).onSuccessTask(new SuccessContinuation(atomicReference) { // from class: com.google.android.gms.common.moduleinstall.internal.zak
            public final AtomicReference zaa;

            {
                this.zaa = atomicReference;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                AtomicReference atomicReference2 = this.zaa;
                int i = zay.zab;
                return atomicReference2.get() != null ? Tasks.forResult((ModuleInstallResponse) atomicReference2.get()) : Tasks.forException(new ApiException(Status.RESULT_INTERNAL_ERROR));
            }
        });
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    public final Task<Void> releaseModules(OptionalModuleApi... optionalModuleApiArr) {
        final ApiFeatureRequest apiFeatureRequestZad = zad(false, optionalModuleApiArr);
        if (apiFeatureRequestZad.getApiFeatures().isEmpty()) {
            return Tasks.forResult(null);
        }
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zav.zaa);
        builder.setMethodKey(27303);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new RemoteCall(this, apiFeatureRequestZad) { // from class: com.google.android.gms.common.moduleinstall.internal.zal
            public final zay zaa;
            public final ApiFeatureRequest zab;

            {
                this.zaa = this;
                this.zab = apiFeatureRequestZad;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zay zayVar = this.zaa;
                ApiFeatureRequest apiFeatureRequest = this.zab;
                ((zaf) ((zaz) obj).getService()).zah(new zax(zayVar, (TaskCompletionSource) obj2), apiFeatureRequest);
            }
        });
        return doRead(builder.build());
    }

    @Override // com.google.android.gms.common.moduleinstall.ModuleInstallClient
    @ResultIgnorabilityUnspecified
    public final Task<Boolean> unregisterListener(InstallStatusListener installStatusListener) {
        return doUnregisterEventListener(ListenerHolders.createListenerKey(installStatusListener, InstallStatusListener.class.getSimpleName()), 27306);
    }
}
