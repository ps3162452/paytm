.class Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->forAuthenticatedAccess(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Lcom/google/firebase/database/core/AuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/InternalAuthProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;->val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$2(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/internal/InternalTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$3(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$getToken$0(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Lcom/google/firebase/auth/GetTokenResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getToken$1(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->access$000(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$3;->lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Lcom/google/firebase/auth/internal/IdTokenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;->val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-interface {v1, v0}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;->val$authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 0

    return-void
.end method
