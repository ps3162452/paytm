.class public final Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zaa:Ljava/util/Set;

.field private zab:Z

.field private zac:Z

.field private zad:Z

.field private zae:Ljava/lang/String;

.field private zaf:Landroid/accounts/Account;

.field private zag:Ljava/lang/String;

.field private zah:Ljava/util/Map;

.field private zai:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zab:Z

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zac:Z

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaa(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zac(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zag:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zai:Ljava/lang/String;

    return-void
.end method

.method private final zaa(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a3e37d"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-object p1

    :cond_1
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x15t
        0x44t
        0xat
        0x13t
        0x53t
        0xdt
        0x7t
        0x55t
        0x0t
        0x41t
        0x52t
        0xat
        0x15t
        0x13t
        0x16t
        0x56t
        0x45t
        0x12t
        0x4t
        0x41t
        0x45t
        0x50t
        0x5bt
        0xdt
        0x4t
        0x5dt
        0x11t
        0x13t
        0x5et
        0x0t
        0x12t
        0x13t
        0x15t
        0x41t
        0x58t
        0x12t
        0x8t
        0x57t
        0x0t
        0x57t
    .end array-data
.end method


# virtual methods
.method public addExtension(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;->getExtensionType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;->getImpliedScopes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;->getExtensionType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    invoke-direct {v2, p1}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "37f52c"

    const-wide/32 v4, -0x5b7bb1aa

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ct
        0x59t
        0xat
        0x4ct
        0x12t
        0xct
        0x5dt
        0x52t
        0x46t
        0x50t
        0x4at
        0x17t
        0x56t
        0x59t
        0x15t
        0x5ct
        0x5dt
        0xdt
        0x13t
        0x47t
        0x3t
        0x47t
        0x12t
        0x17t
        0x4at
        0x47t
        0x3t
        0x15t
        0x5ft
        0x2t
        0x4at
        0x17t
        0x4t
        0x50t
        0x12t
        0x2t
        0x57t
        0x53t
        0x3t
        0x51t
    .end array-data
.end method

.method public build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    const/4 v1, 0x3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zab:Z

    iget-boolean v6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zac:Z

    iget-object v7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zag:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zai:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/zad;)V

    return-object v0
.end method

.method public requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zab:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zac:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    return-object p0
.end method

.method public requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaa:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    return-object p0
.end method

.method public requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zab:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zac:Z

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 6

    new-instance v0, Landroid/accounts/Account;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a6f2bc"

    const-wide v4, -0x3e43092b8e000000L    # -4.8593829E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    return-object p0

    :array_0
    .array-data 1
        0x2t
        0x59t
        0xbt
        0x1ct
        0x5t
        0xct
        0xet
        0x51t
        0xat
        0x57t
    .end array-data
.end method

.method public setHostedDomain(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zag:Ljava/lang/String;

    return-object p0
.end method

.method public setLogSessionId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zai:Ljava/lang/String;

    return-object p0
.end method
