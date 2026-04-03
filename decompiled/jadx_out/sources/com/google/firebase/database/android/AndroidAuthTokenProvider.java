package com.google.firebase.database.android;

import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.database.core.AuthTokenProvider;
import com.google.firebase.internal.InternalTokenResult;
import com.google.firebase.internal.api.FirebaseNoSignedInUserException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes57.dex */
public abstract class AndroidAuthTokenProvider implements AuthTokenProvider {

    /* JADX INFO: renamed from: com.google.firebase.database.android.AndroidAuthTokenProvider$1, reason: invalid class name */
    class AnonymousClass1 implements AuthTokenProvider {
        final InternalAuthProvider val$authProvider;

        AnonymousClass1(InternalAuthProvider internalAuthProvider) {
            this.val$authProvider = internalAuthProvider;
        }

        static /* synthetic */ void lambda$addTokenChangeListener$2(AuthTokenProvider.TokenChangeListener tokenChangeListener, InternalTokenResult internalTokenResult) {
            tokenChangeListener.onTokenChange(internalTokenResult.getToken());
        }

        static /* synthetic */ void lambda$addTokenChangeListener$3(ExecutorService executorService, AuthTokenProvider.TokenChangeListener tokenChangeListener, InternalTokenResult internalTokenResult) {
            executorService.execute(AndroidAuthTokenProvider$1$$Lambda$4.lambdaFactory$(tokenChangeListener, internalTokenResult));
        }

        static /* synthetic */ void lambda$getToken$0(AuthTokenProvider.GetTokenCompletionListener getTokenCompletionListener, GetTokenResult getTokenResult) {
            getTokenCompletionListener.onSuccess(getTokenResult.getToken());
        }

        static /* synthetic */ void lambda$getToken$1(AuthTokenProvider.GetTokenCompletionListener getTokenCompletionListener, Exception exc) {
            if (AndroidAuthTokenProvider.isUnauthenticatedUsage(exc)) {
                getTokenCompletionListener.onSuccess(null);
            } else {
                getTokenCompletionListener.onError(exc.getMessage());
            }
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider
        public void addTokenChangeListener(ExecutorService executorService, AuthTokenProvider.TokenChangeListener tokenChangeListener) {
            this.val$authProvider.addIdTokenListener(AndroidAuthTokenProvider$1$$Lambda$3.lambdaFactory$(executorService, tokenChangeListener));
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider
        public void getToken(boolean z, AuthTokenProvider.GetTokenCompletionListener getTokenCompletionListener) {
            this.val$authProvider.getAccessToken(z).addOnSuccessListener(AndroidAuthTokenProvider$1$$Lambda$1.lambdaFactory$(getTokenCompletionListener)).addOnFailureListener(AndroidAuthTokenProvider$1$$Lambda$2.lambdaFactory$(getTokenCompletionListener));
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider
        public void removeTokenChangeListener(AuthTokenProvider.TokenChangeListener tokenChangeListener) {
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.database.android.AndroidAuthTokenProvider$2, reason: invalid class name */
    class AnonymousClass2 implements AuthTokenProvider {
        AnonymousClass2() {
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider
        public void addTokenChangeListener(ExecutorService executorService, AuthTokenProvider.TokenChangeListener tokenChangeListener) {
            executorService.execute(AndroidAuthTokenProvider$2$$Lambda$1.lambdaFactory$(tokenChangeListener));
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider
        public void getToken(boolean z, AuthTokenProvider.GetTokenCompletionListener getTokenCompletionListener) {
            getTokenCompletionListener.onSuccess(null);
        }

        @Override // com.google.firebase.database.core.AuthTokenProvider
        public void removeTokenChangeListener(AuthTokenProvider.TokenChangeListener tokenChangeListener) {
        }
    }

    public static AuthTokenProvider forAuthenticatedAccess(InternalAuthProvider internalAuthProvider) {
        return new AnonymousClass1(internalAuthProvider);
    }

    public static AuthTokenProvider forUnauthenticatedAccess() {
        return new AnonymousClass2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isUnauthenticatedUsage(Exception exc) {
        return (exc instanceof FirebaseApiNotAvailableException) || (exc instanceof FirebaseNoSignedInUserException);
    }
}
