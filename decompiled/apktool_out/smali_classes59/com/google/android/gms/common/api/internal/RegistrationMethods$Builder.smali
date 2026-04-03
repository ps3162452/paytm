.class public Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/RegistrationMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$AnyClient;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

.field private zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

.field private zac:Ljava/lang/Runnable;

.field private zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private zae:[Lcom/google/android/gms/common/Feature;

.field private zaf:Z

.field private zag:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/common/api/internal/zacj;->zaa:Lcom/google/android/gms/common/api/internal/zacj;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zacm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/common/api/internal/zacj;->zaa:Lcom/google/android/gms/common/api/internal/zacj;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    return-void
.end method

.method static bridge synthetic zaa(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;)Lcom/google/android/gms/common/api/internal/RemoteCall;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object v0
.end method

.method static bridge synthetic zab(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;)Lcom/google/android/gms/common/api/internal/RemoteCall;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "31f6f1"

    const/16 v5, -0xfd3

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "7cf216"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_2

    :goto_2
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "2c5ace"

    const v3, -0x31375eb3

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "3ecad4"

    const-wide/32 v4, 0x761a8150

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    new-instance v7, Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zack;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zae:[Lcom/google/android/gms/common/Feature;

    iget-boolean v4, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    iget v5, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zag:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/zack;-><init>(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Lcom/google/android/gms/common/Feature;ZI)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacl;

    invoke-direct {v1, p0, v6}, Lcom/google/android/gms/common/api/internal/zacl;-><init>(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;Lcom/google/android/gms/common/api/internal/zacn;)V

    return-object v7

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :array_0
    .array-data 1
        0x7et
        0x44t
        0x15t
        0x42t
        0x46t
        0x42t
        0x56t
        0x45t
        0x46t
        0x44t
        0x3t
        0x56t
        0x5at
        0x42t
        0x12t
        0x53t
        0x14t
        0x11t
        0x55t
        0x44t
        0x8t
        0x55t
        0x12t
        0x58t
        0x5ct
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7at
        0x16t
        0x15t
        0x46t
        0x11t
        0x45t
        0x52t
        0x17t
        0x46t
        0x47t
        0x5ft
        0x44t
        0x52t
        0x4t
        0xft
        0x41t
        0x45t
        0x53t
        0x45t
        0x43t
        0x0t
        0x47t
        0x5ft
        0x55t
        0x43t
        0xat
        0x9t
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x7ft
        0x16t
        0x46t
        0x15t
        0x43t
        0x16t
        0x57t
        0x17t
        0x15t
        0x9t
        0xct
        0x9t
        0x56t
        0x6t
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x78t
        0x0t
        0x1at
        0x41t
        0x9t
        0x41t
        0x40t
        0x11t
        0x43t
        0xft
        0xbt
        0x40t
        0x13t
        0x7t
        0x6t
        0x41t
        0xat
        0x41t
        0x5ft
        0x9t
    .end array-data
.end method

.method public onConnectionSuspended(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    return-object p0
.end method

.method public register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/RemoteCall",
            "<TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method public setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    return-object p0
.end method

.method public varargs setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/Feature;",
            ")",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zae:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public setMethodKey(I)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zag:I

    return-object p0
.end method

.method public unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/RemoteCall",
            "<TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method public withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder",
            "<T",
            "L;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder",
            "<TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object p0
.end method
