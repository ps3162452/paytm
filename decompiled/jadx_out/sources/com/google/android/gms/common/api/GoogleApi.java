package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.common.api.internal.zaae;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zabv;
import com.google.android.gms.common.api.internal.zact;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import n.NPStringFog;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: loaded from: classes59.dex */
public abstract class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {
    protected final GoogleApiManager zaa;
    private final Context zab;
    private final String zac;
    private final Api zad;
    private final Api.ApiOptions zae;
    private final ApiKey zaf;
    private final Looper zag;
    private final int zah;

    @NotOnlyInitialized
    private final GoogleApiClient zai;
    private final StatusExceptionMapper zaj;

    public static class Settings {
        public static final Settings DEFAULT_SETTINGS = new Builder().build();
        public final StatusExceptionMapper zaa;
        public final Looper zab;

        public static class Builder {
            private StatusExceptionMapper zaa;
            private Looper zab;

            /* JADX WARN: Multi-variable type inference failed */
            public Settings build() {
                Account account = null;
                Object[] objArr = 0;
                if (this.zaa == null) {
                    this.zaa = new ApiExceptionMapper();
                }
                if (this.zab == null) {
                    this.zab = Looper.getMainLooper();
                }
                return new Settings(this.zaa, this.zab);
            }

            public Builder setLooper(Looper looper) {
                Preconditions.checkNotNull(looper, NPStringFog.decode(new byte[]{124, 94, 13, 73, 85, 74, 16, 92, 23, 74, 68, 24, 94, 94, 22, 25, 82, 93, 16, 95, 23, 85, 92, 22}, "01b908", -1.4995602E9f));
                this.zab = looper;
                return this;
            }

            public Builder setMapper(StatusExceptionMapper statusExceptionMapper) {
                Preconditions.checkNotNull(statusExceptionMapper, NPStringFog.decode(new byte[]{102, 77, 83, 22, 19, 67, 112, 65, 81, 7, 22, 68, 92, 86, 92, 47, 7, 64, 69, 92, 64, 66, 11, 69, 70, 77, 18, 12, 9, 68, 21, 91, 87, 66, 8, 69, 89, 85, 28}, "592bf0", -31815));
                this.zaa = statusExceptionMapper;
                return this;
            }
        }

        private Settings(StatusExceptionMapper statusExceptionMapper, Account account, Looper looper) {
            this.zaa = statusExceptionMapper;
            this.zab = looper;
        }
    }

    public GoogleApi(Activity activity, Api<O> api, O o, Settings settings) {
        this(activity, activity, api, o, settings);
    }

    @Deprecated
    public GoogleApi(Activity activity, Api<O> api, O o, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        builder.setMapper(statusExceptionMapper);
        builder.setLooper(activity.getMainLooper());
        this(activity, (Api) api, (Api.ApiOptions) o, builder.build());
    }

    private GoogleApi(Context context, Activity activity, Api api, Api.ApiOptions apiOptions, Settings settings) {
        String str;
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{44, 68, 95, 95, 20, 85, 13, 95, 71, 86, 76, 66, 66, 88, 64, 19, 90, 89, 22, 17, 67, 86, 70, 91, 11, 69, 71, 86, 80, 24}, "b13346", 7909));
        Preconditions.checkNotNull(api, NPStringFog.decode(new byte[]{121, 67, 81, 67, 88, 22, 75, 71, 24, 13, 90, 23, 24, 81, 93, 67, 91, 22, 84, 95, 22}, "838c5c", -1618770452L));
        Preconditions.checkNotNull(settings, NPStringFog.decode(new byte[]{103, 4, 67, 69, 90, 88, 83, 18, 23, 92, 70, 69, 64, 65, 89, 94, 71, 22, 86, 4, 23, 95, 70, 90, 88, 90, 23, 68, 64, 83, 20, 50, 82, 69, 71, 95, 90, 6, 68, 31, 119, 115, 114, 32, 98, 125, 103, 105, 103, 36, 99, 101, 122, 120, 115, 50, 23, 88, 93, 69, 64, 4, 86, 85, 29}, "4a7136", -8.23010045E8d));
        this.zab = (Context) Preconditions.checkNotNull(context.getApplicationContext(), NPStringFog.decode(new byte[]{99, 90, 7, 66, 20, 23, 88, 68, 11, 6, 1, 1, 23, 81, 13, 12, 16, 0, 79, 70, 66, 6, 13, 1, 23, 92, 13, 22, 68, 13, 86, 68, 7, 66, 5, 11, 23, 83, 18, 18, 8, 12, 84, 83, 22, 11, 11, 11, 23, 81, 13, 12, 16, 0, 79, 70, 76}, "72bbde", -2.0704044E9f));
        if (PlatformVersion.isAtLeastR()) {
            try {
                str = (String) Context.class.getMethod(NPStringFog.decode(new byte[]{86, 4, 65, 35, 21, 77, 67, 8, 87, 23, 21, 80, 94, 15, 97, 3, 6}, "1a5ba9", 1.666797E8f), new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException e) {
                str = null;
            } catch (NoSuchMethodException e2) {
                str = null;
            } catch (InvocationTargetException e3) {
                str = null;
            }
        } else {
            str = null;
        }
        this.zac = str;
        this.zad = api;
        this.zae = apiOptions;
        this.zag = settings.zab;
        ApiKey sharedApiKey = ApiKey.getSharedApiKey(api, apiOptions, str);
        this.zaf = sharedApiKey;
        this.zai = new zabv(this);
        GoogleApiManager googleApiManagerZak = GoogleApiManager.zak(this.zab);
        this.zaa = googleApiManagerZak;
        this.zah = googleApiManagerZak.zaa();
        this.zaj = settings.zaa;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            zaae.zad(activity, googleApiManagerZak, sharedApiKey);
        }
        googleApiManagerZak.zaz(this);
    }

    @Deprecated
    public GoogleApi(Context context, Api<O> api, O o, Looper looper, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        builder.setLooper(looper);
        builder.setMapper(statusExceptionMapper);
        this(context, api, o, builder.build());
    }

    public GoogleApi(Context context, Api<O> api, O o, Settings settings) {
        this(context, (Activity) null, api, o, settings);
    }

    @Deprecated
    public GoogleApi(Context context, Api<O> api, O o, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        builder.setMapper(statusExceptionMapper);
        this(context, api, o, builder.build());
    }

    private final BaseImplementation.ApiMethodImpl zad(int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        apiMethodImpl.zak();
        this.zaa.zau(this, i, apiMethodImpl);
        return apiMethodImpl;
    }

    private final Task zae(int i, TaskApiCall taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zaa.zav(this, i, taskApiCall, taskCompletionSource, this.zaj);
        return taskCompletionSource.getTask();
    }

    public GoogleApiClient asGoogleApiClient() {
        return this.zai;
    }

    protected ClientSettings.Builder createClientSettingsBuilder() {
        Account account;
        GoogleSignInAccount googleSignInAccount;
        GoogleSignInAccount googleSignInAccount2;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        Api.ApiOptions apiOptions = this.zae;
        if (!(apiOptions instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccount2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).getGoogleSignInAccount()) == null) {
            Api.ApiOptions apiOptions2 = this.zae;
            account = apiOptions2 instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) apiOptions2).getAccount() : null;
        } else {
            account = googleSignInAccount2.getAccount();
        }
        builder.zab(account);
        Api.ApiOptions apiOptions3 = this.zae;
        Set<Scope> setEmptySet = (!(apiOptions3 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccount = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions3).getGoogleSignInAccount()) == null) ? Collections.emptySet() : googleSignInAccount.getRequestedScopes();
        builder.zaa(setEmptySet);
        builder.zac(this.zab.getClass().getName());
        builder.setRealClientPackageName(this.zab.getPackageName());
        return builder;
    }

    protected Task<Boolean> disconnectService() {
        return this.zaa.zan(this);
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doBestEffortWrite(T t) {
        zad(2, t);
        return t;
    }

    @ResultIgnorabilityUnspecified
    public <TResult, A extends Api.AnyClient> Task<TResult> doBestEffortWrite(TaskApiCall<A, TResult> taskApiCall) {
        return zae(2, taskApiCall);
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doRead(T t) {
        zad(0, t);
        return t;
    }

    @ResultIgnorabilityUnspecified
    public <TResult, A extends Api.AnyClient> Task<TResult> doRead(TaskApiCall<A, TResult> taskApiCall) {
        return zae(0, taskApiCall);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public <A extends Api.AnyClient, T extends RegisterListenerMethod<A, ?>, U extends UnregisterListenerMethod<A, ?>> Task<Void> doRegisterEventListener(T t, U u) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(u);
        Preconditions.checkNotNull(t.getListenerKey(), NPStringFog.decode(new byte[]{126, 13, 67, 21, 93, 13, 87, 22, 16, 9, 89, 16, 18, 5, 92, 19, 93, 2, 86, 29, 16, 3, 93, 6, 92, 68, 66, 4, 84, 6, 83, 23, 85, 5, 22}, "2d0a8c", -7.7946708E8d));
        Preconditions.checkNotNull(u.getListenerKey(), NPStringFog.decode(new byte[]{126, 89, 64, 65, 4, 13, 87, 66, 19, 93, 0, 16, 18, 81, 95, 71, 4, 2, 86, 73, 19, 87, 4, 6, 92, 16, 65, 80, 13, 6, 83, 67, 86, 81, 79}, "2035ac", true, false));
        Preconditions.checkArgument(Objects.equal(t.getListenerKey(), u.getListenerKey()), NPStringFog.decode(new byte[]{122, 12, 75, 17, 84, 89, 83, 23, 24, 23, 84, 80, 95, 22, 76, 23, 80, 67, 95, 10, 86, 69, 80, 89, 82, 69, 77, 11, 67, 82, 81, 12, 75, 17, 67, 86, 66, 12, 87, 11, 17, 90, 83, 17, 80, 10, 85, 68, 22, 8, 77, 22, 69, 23, 84, 0, 24, 6, 94, 89, 69, 17, 74, 16, 82, 67, 83, 1, 24, 18, 88, 67, 94, 69, 76, 13, 84, 23, 69, 4, 85, 0, 17, 123, 95, 22, 76, 0, 95, 82, 68, 45, 87, 9, 85, 82, 68, 75}, "6e8e17", -1.1075656E9f));
        return this.zaa.zao(this, t, u, new Runnable() { // from class: com.google.android.gms.common.api.zad
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    @ResultIgnorabilityUnspecified
    public <A extends Api.AnyClient> Task<Void> doRegisterEventListener(RegistrationMethods<A, ?> registrationMethods) {
        Preconditions.checkNotNull(registrationMethods);
        Preconditions.checkNotNull(registrationMethods.register.getListenerKey(), NPStringFog.decode(new byte[]{42, 90, 69, 66, 82, 92, 3, 65, 22, 94, 86, 65, 70, 82, 90, 68, 82, 83, 2, 74, 22, 84, 82, 87, 8, 19, 68, 83, 91, 87, 7, 64, 83, 82, 25}, "f36672", false, true));
        Preconditions.checkNotNull(registrationMethods.zaa.getListenerKey(), NPStringFog.decode(new byte[]{122, 11, 64, 71, 3, 88, 83, 16, 19, 91, 7, 69, 22, 3, 95, 65, 3, 87, 82, 27, 19, 81, 3, 83, 88, 66, 65, 86, 10, 83, 87, 17, 86, 87, 72}, "6b33f6", -16951));
        return this.zaa.zao(this, registrationMethods.register, registrationMethods.zaa, registrationMethods.zab);
    }

    @ResultIgnorabilityUnspecified
    public Task<Boolean> doUnregisterEventListener(ListenerHolder.ListenerKey<?> listenerKey) {
        return doUnregisterEventListener(listenerKey, 0);
    }

    @ResultIgnorabilityUnspecified
    public Task<Boolean> doUnregisterEventListener(ListenerHolder.ListenerKey<?> listenerKey, int i) {
        Preconditions.checkNotNull(listenerKey, NPStringFog.decode(new byte[]{122, 13, 18, 76, 85, 12, 83, 22, 65, 83, 85, 27, 22, 7, 0, 86, 94, 13, 66, 68, 3, 93, 16, 12, 67, 8, 13, 22}, "6da80b", -1432752839L));
        return this.zaa.zap(this, listenerKey, i);
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doWrite(T t) {
        zad(1, t);
        return t;
    }

    @ResultIgnorabilityUnspecified
    public <TResult, A extends Api.AnyClient> Task<TResult> doWrite(TaskApiCall<A, TResult> taskApiCall) {
        return zae(1, taskApiCall);
    }

    @Override // com.google.android.gms.common.api.HasApiKey
    public final ApiKey<O> getApiKey() {
        return this.zaf;
    }

    public O getApiOptions() {
        return (O) this.zae;
    }

    public Context getApplicationContext() {
        return this.zab;
    }

    protected String getContextAttributionTag() {
        return this.zac;
    }

    @Deprecated
    protected String getContextFeatureId() {
        return this.zac;
    }

    public Looper getLooper() {
        return this.zag;
    }

    public <L> ListenerHolder<L> registerListener(L l, String str) {
        return ListenerHolders.createListenerHolder(l, this.zag, str);
    }

    public final int zaa() {
        return this.zah;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Api.Client zab(Looper looper, zabq zabqVar) {
        Api.Client clientBuildClient = ((Api.AbstractClientBuilder) Preconditions.checkNotNull(this.zad.zaa())).buildClient(this.zab, looper, createClientSettingsBuilder().build(), this.zae, (GoogleApiClient.ConnectionCallbacks) zabqVar, (GoogleApiClient.OnConnectionFailedListener) zabqVar);
        String contextAttributionTag = getContextAttributionTag();
        if (contextAttributionTag != null && (clientBuildClient instanceof BaseGmsClient)) {
            ((BaseGmsClient) clientBuildClient).setAttributionTag(contextAttributionTag);
        }
        if (contextAttributionTag != null && (clientBuildClient instanceof NonGmsServiceBrokerClient)) {
            ((NonGmsServiceBrokerClient) clientBuildClient).zac(contextAttributionTag);
        }
        return clientBuildClient;
    }

    public final zact zac(Context context, Handler handler) {
        return new zact(context, handler, createClientSettingsBuilder().build());
    }
}
