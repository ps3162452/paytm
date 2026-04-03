.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;,
        Lcom/google/android/gms/common/api/Api$AnyClient;,
        Lcom/google/android/gms/common/api/Api$AnyClientKey;,
        Lcom/google/android/gms/common/api/Api$ApiOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;,
        Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;,
        Lcom/google/android/gms/common/api/Api$BaseClientBuilder;,
        Lcom/google/android/gms/common/api/Api$Client;,
        Lcom/google/android/gms/common/api/Api$ClientKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private final zab:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private final zac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder",
            "<TC;TO;>;",
            "Lcom/google/android/gms/common/api/Api$ClientKey",
            "<TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d91461"

    const v2, -0x32347547

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "95f38b"

    const/16 v2, -0x7113

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->zac:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object p3, p0, Lcom/google/android/gms/common/api/Api;->zab:Lcom/google/android/gms/common/api/Api$ClientKey;

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x58t
        0x5ft
        0x5at
        0x59t
        0x45t
        0x44t
        0x5at
        0x5et
        0x5at
        0x45t
        0x45t
        0x16t
        0x4ct
        0x52t
        0x40t
        0x16t
        0x50t
        0xat
        0x19t
        0x70t
        0x44t
        0x5ft
        0x11t
        0x13t
        0x50t
        0x45t
        0x5ct
        0x16t
        0x50t
        0x44t
        0x57t
        0x44t
        0x58t
        0x5at
        0x11t
        0x27t
        0x55t
        0x58t
        0x51t
        0x58t
        0x45t
        0x26t
        0x4ct
        0x58t
        0x58t
        0x52t
        0x54t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7at
        0x54t
        0x8t
        0x5dt
        0x57t
        0x16t
        0x19t
        0x56t
        0x9t
        0x5dt
        0x4bt
        0x16t
        0x4bt
        0x40t
        0x5t
        0x47t
        0x18t
        0x3t
        0x57t
        0x15t
        0x27t
        0x43t
        0x51t
        0x42t
        0x4et
        0x5ct
        0x12t
        0x5bt
        0x18t
        0x3t
        0x19t
        0x5bt
        0x13t
        0x5ft
        0x54t
        0x42t
        0x7at
        0x59t
        0xft
        0x56t
        0x56t
        0x16t
        0x72t
        0x50t
        0x1ft
    .end array-data
.end method


# virtual methods
.method public final zaa()Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-object v0
.end method

.method public final zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zab:Lcom/google/android/gms/common/api/Api$ClientKey;

    return-object v0
.end method

.method public final zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-object v0
.end method

.method public final zad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zac:Ljava/lang/String;

    return-object v0
.end method
