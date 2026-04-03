.class public Lcom/google/android/gms/signin/internal/SignInClientImpl;
.super Lcom/google/android/gms/common/internal/GmsClient;

# interfaces
.implements Lcom/google/android/gms/signin/zae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient",
        "<",
        "Lcom/google/android/gms/signin/internal/zaf;",
        ">;",
        "Lcom/google/android/gms/signin/zae;"
    }
.end annotation


# static fields
.field public static final zaa:I


# instance fields
.field private final zab:Z

.field private final zac:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zad:Landroid/os/Bundle;

.field private final zae:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ClientSettings;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/ClientSettings;->zab()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    return-void
.end method

.method public static createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;
    .locals 10

    const/16 v5, 0x3d

    const/16 v9, 0x33

    const/4 v8, 0x0

    const/16 v7, 0x3f

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa()Lcom/google/android/gms/signin/SignInOptions;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->zab()Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "30e56b"

    const v4, 0x4d4ffefc    # 2.1809965E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_0

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "2e3191"

    const v4, -0x31282c73

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-array v0, v5, [B

    fill-array-data v0, :array_2

    const-string v2, "29c0ce"

    const-wide v4, -0x3e4de00f6c000000L    # -3.04083092E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "895455"

    const-wide v4, -0x3e85b0b390000000L    # -2.7587783E7

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "1e3c91"

    const-wide v4, 0x41c2b93033800000L    # 6.28252775E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v2, "481394"

    const-wide/32 v4, 0x36f0bf25

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-array v0, v7, [B

    fill-array-data v0, :array_6

    const-string v2, "bb2487"

    const-wide/32 v4, 0x69a261b2

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-array v0, v9, [B

    fill-array-data v0, :array_7

    const-string v2, "6da22b"

    const/16 v3, 0x7c34

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v9, [B

    fill-array-data v0, :array_8

    const-string v2, "c95b2e"

    const/16 v3, 0x3726

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v2, "9121d8"

    const/16 v3, -0x3630

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x50t
        0x5ft
        0x8t
        0x1bt
        0x51t
        0xdt
        0x5ct
        0x57t
        0x9t
        0x50t
        0x18t
        0x3t
        0x5dt
        0x54t
        0x17t
        0x5at
        0x5ft
        0x6t
        0x1dt
        0x57t
        0x8t
        0x46t
        0x18t
        0x11t
        0x5at
        0x57t
        0xbt
        0x5ct
        0x58t
        0x4ct
        0x5at
        0x5et
        0x11t
        0x50t
        0x44t
        0xct
        0x52t
        0x5ct
        0x4bt
        0x56t
        0x5at
        0xbt
        0x56t
        0x5et
        0x11t
        0x67t
        0x53t
        0x13t
        0x46t
        0x55t
        0x16t
        0x41t
        0x53t
        0x6t
        0x72t
        0x53t
        0x6t
        0x5at
        0x43t
        0xct
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0xat
        0x5et
        0x1ft
        0x5et
        0x5et
        0x5dt
        0x2t
        0x5ft
        0x54t
        0x17t
        0x50t
        0x5ct
        0x1t
        0x41t
        0x5et
        0x50t
        0x55t
        0x1ct
        0x2t
        0x5et
        0x42t
        0x17t
        0x52t
        0x5dt
        0x8t
        0x5et
        0x5et
        0x57t
        0x1ft
        0x5bt
        0xbt
        0x47t
        0x54t
        0x4bt
        0x5ft
        0x53t
        0x9t
        0x1dt
        0x72t
        0x55t
        0x58t
        0x57t
        0xbt
        0x47t
        0x62t
        0x5ct
        0x45t
        0x46t
        0xct
        0x5dt
        0x56t
        0x4at
        0x1ft
        0x41t
        0x0t
        0x40t
        0x42t
        0x50t
        0x5et
        0x5ct
        0x2ct
        0x57t
    .end array-data

    :array_2
    .array-data 1
        0x51t
        0x56t
        0xet
        0x1et
        0x4t
        0xat
        0x5dt
        0x5et
        0xft
        0x55t
        0x4dt
        0x4t
        0x5ct
        0x5dt
        0x11t
        0x5ft
        0xat
        0x1t
        0x1ct
        0x5et
        0xet
        0x43t
        0x4dt
        0x16t
        0x5bt
        0x5et
        0xdt
        0x59t
        0xdt
        0x4bt
        0x5bt
        0x57t
        0x17t
        0x55t
        0x11t
        0xbt
        0x53t
        0x55t
        0x4dt
        0x5ft
        0x5t
        0x3t
        0x5et
        0x50t
        0xdt
        0x55t
        0x22t
        0x6t
        0x51t
        0x5ct
        0x10t
        0x43t
        0x31t
        0x0t
        0x43t
        0x4ct
        0x6t
        0x43t
        0x17t
        0x0t
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5bt
        0x56t
        0x58t
        0x1at
        0x52t
        0x5at
        0x57t
        0x5et
        0x59t
        0x51t
        0x1bt
        0x54t
        0x56t
        0x5dt
        0x47t
        0x5bt
        0x5ct
        0x51t
        0x16t
        0x5et
        0x58t
        0x47t
        0x1bt
        0x46t
        0x51t
        0x5et
        0x5bt
        0x5dt
        0x5bt
        0x1bt
        0x51t
        0x57t
        0x41t
        0x51t
        0x47t
        0x5bt
        0x59t
        0x55t
        0x1bt
        0x5dt
        0x51t
        0x61t
        0x57t
        0x52t
        0x50t
        0x5at
        0x67t
        0x50t
        0x49t
        0x4ct
        0x50t
        0x47t
        0x41t
        0x50t
        0x5ct
    .end array-data

    :array_4
    .array-data 1
        0x52t
        0xat
        0x5et
        0x4dt
        0x5et
        0x5et
        0x5et
        0x2t
        0x5ft
        0x6t
        0x17t
        0x50t
        0x5ft
        0x1t
        0x41t
        0xct
        0x50t
        0x55t
        0x1ft
        0x2t
        0x5et
        0x10t
        0x17t
        0x42t
        0x58t
        0x2t
        0x5dt
        0xat
        0x57t
        0x1ft
        0x58t
        0xbt
        0x47t
        0x6t
        0x4bt
        0x5ft
        0x50t
        0x9t
        0x1dt
        0x10t
        0x5ct
        0x43t
        0x47t
        0x0t
        0x41t
        0x20t
        0x55t
        0x58t
        0x54t
        0xbt
        0x47t
        0x2at
        0x5dt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x57t
        0x57t
        0x5ct
        0x1dt
        0x5et
        0x5bt
        0x5bt
        0x5ft
        0x5dt
        0x56t
        0x17t
        0x55t
        0x5at
        0x5ct
        0x43t
        0x5ct
        0x50t
        0x50t
        0x1at
        0x5ft
        0x5ct
        0x40t
        0x17t
        0x47t
        0x5dt
        0x5ft
        0x5ft
        0x5at
        0x57t
        0x1at
        0x5dt
        0x56t
        0x45t
        0x56t
        0x4bt
        0x5at
        0x55t
        0x54t
        0x1ft
        0x46t
        0x4at
        0x51t
        0x64t
        0x4at
        0x5et
        0x5et
        0x49t
        0x40t
        0x79t
        0x57t
        0x55t
        0x56t
        0x7ft
        0x5bt
        0x46t
        0x79t
        0x44t
        0x47t
        0x51t
        0x77t
        0x5bt
        0x5ct
        0x54t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0xdt
        0x5ft
        0x1at
        0x5ft
        0x58t
        0xdt
        0x5t
        0x5et
        0x51t
        0x16t
        0x56t
        0xct
        0x6t
        0x40t
        0x5bt
        0x51t
        0x53t
        0x4ct
        0x5t
        0x5ft
        0x47t
        0x16t
        0x44t
        0xbt
        0x5t
        0x5ct
        0x5dt
        0x56t
        0x19t
        0xbt
        0xct
        0x46t
        0x51t
        0x4at
        0x59t
        0x3t
        0xet
        0x1ct
        0x52t
        0x57t
        0x45t
        0x1t
        0x7t
        0x71t
        0x5bt
        0x5ct
        0x52t
        0x24t
        0xdt
        0x40t
        0x66t
        0x5dt
        0x51t
        0x10t
        0x7t
        0x41t
        0x5ct
        0x6ct
        0x58t
        0x9t
        0x7t
        0x5ct
    .end array-data

    :array_7
    .array-data 1
        0x55t
        0xbt
        0xct
        0x1ct
        0x55t
        0xdt
        0x59t
        0x3t
        0xdt
        0x57t
        0x1ct
        0x3t
        0x58t
        0x0t
        0x13t
        0x5dt
        0x5bt
        0x6t
        0x18t
        0x3t
        0xct
        0x41t
        0x1ct
        0x11t
        0x5ft
        0x3t
        0xft
        0x5bt
        0x5ct
        0x4ct
        0x5ft
        0xat
        0x15t
        0x57t
        0x40t
        0xct
        0x57t
        0x8t
        0x4ft
        0x5at
        0x5dt
        0x11t
        0x42t
        0x1t
        0x5t
        0x76t
        0x5dt
        0xft
        0x57t
        0xdt
        0xft
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x56t
        0x58t
        0x4ct
        0x55t
        0xat
        0xct
        0x5et
        0x59t
        0x7t
        0x1ct
        0x4t
        0xdt
        0x5dt
        0x47t
        0xdt
        0x5bt
        0x1t
        0x4dt
        0x5et
        0x58t
        0x11t
        0x1ct
        0x16t
        0xat
        0x5et
        0x5bt
        0xbt
        0x5ct
        0x4bt
        0xat
        0x57t
        0x41t
        0x7t
        0x40t
        0xbt
        0x2t
        0x55t
        0x1bt
        0xet
        0x5dt
        0x2t
        0x30t
        0x5ct
        0x46t
        0x11t
        0x5bt
        0xat
        0xdt
        0x70t
        0x51t
    .end array-data

    :array_9
    .array-data 1
        0x5at
        0x5et
        0x5ft
        0x1ft
        0x3t
        0x57t
        0x56t
        0x56t
        0x5et
        0x54t
        0x4at
        0x59t
        0x57t
        0x55t
        0x40t
        0x5et
        0xdt
        0x5ct
        0x17t
        0x56t
        0x5ft
        0x42t
        0x4at
        0x4bt
        0x50t
        0x56t
        0x5ct
        0x58t
        0xat
        0x16t
        0x50t
        0x5ft
        0x46t
        0x54t
        0x16t
        0x56t
        0x58t
        0x5dt
        0x1ct
        0x46t
        0x5t
        0x51t
        0x4dt
        0x77t
        0x5dt
        0x43t
        0x25t
        0x5bt
        0x5at
        0x54t
        0x41t
        0x42t
        0x30t
        0x57t
        0x52t
        0x54t
        0x5ct
        0x63t
        0x1t
        0x5et
        0x4bt
        0x54t
        0x41t
        0x59t
    .end array-data
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "525b7e"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/signin/internal/zaf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/signin/internal/zaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/signin/internal/zaf;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x56t
        0x5dt
        0x58t
        0x4ct
        0x50t
        0xat
        0x5at
        0x55t
        0x59t
        0x7t
        0x19t
        0x4t
        0x5bt
        0x56t
        0x47t
        0xdt
        0x5et
        0x1t
        0x1bt
        0x55t
        0x58t
        0x11t
        0x19t
        0x16t
        0x5ct
        0x55t
        0x5bt
        0xbt
        0x59t
        0x4bt
        0x5ct
        0x5ct
        0x41t
        0x7t
        0x45t
        0xbt
        0x54t
        0x5et
        0x1bt
        0x2bt
        0x64t
        0xct
        0x52t
        0x5ct
        0x7ct
        0xct
        0x64t
        0x0t
        0x47t
        0x44t
        0x5ct
        0x1t
        0x52t
    .end array-data
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8a2755"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0xet
        0x5ft
        0x19t
        0x52t
        0x5at
        0x57t
        0x6t
        0x5et
        0x52t
        0x1bt
        0x54t
        0x56t
        0x5t
        0x40t
        0x58t
        0x5ct
        0x51t
        0x16t
        0x6t
        0x5ft
        0x44t
        0x1bt
        0x46t
        0x51t
        0x6t
        0x5ct
        0x5et
        0x5bt
        0x1bt
        0x51t
        0xft
        0x46t
        0x52t
        0x47t
        0x5bt
        0x59t
        0xdt
        0x1ct
        0x45t
        0x50t
        0x54t
        0x54t
        0x22t
        0x5et
        0x5et
        0x50t
        0x5bt
        0x4ct
        0x31t
        0x53t
        0x54t
        0x5et
        0x54t
        0x5ft
        0x4t
        0x7ct
        0x56t
        0x58t
        0x50t
    .end array-data
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "47b0ed"

    const-wide v2, 0x418162e1f0000000L    # 3.646163E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x57t
        0x58t
        0xft
        0x1et
        0x2t
        0xbt
        0x5bt
        0x50t
        0xet
        0x55t
        0x4bt
        0x5t
        0x5at
        0x53t
        0x10t
        0x5ft
        0xct
        0x0t
        0x1at
        0x50t
        0xft
        0x43t
        0x4bt
        0x17t
        0x5dt
        0x50t
        0xct
        0x59t
        0xbt
        0x4at
        0x5dt
        0x59t
        0x16t
        0x55t
        0x17t
        0xat
        0x55t
        0x5bt
        0x4ct
        0x79t
        0x36t
        0xdt
        0x53t
        0x59t
        0x2bt
        0x5et
        0x36t
        0x1t
        0x46t
        0x41t
        0xbt
        0x53t
        0x0t
    .end array-data
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f0c4df"

    const v2, 0x4ecce519

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5t
        0x5ft
        0xet
        0x1at
        0x3t
        0x9t
        0x9t
        0x57t
        0xft
        0x51t
        0x4at
        0x7t
        0x8t
        0x54t
        0x11t
        0x5bt
        0xdt
        0x2t
        0x48t
        0x57t
        0xet
        0x47t
        0x4at
        0x15t
        0xft
        0x57t
        0xdt
        0x5dt
        0xat
        0x48t
        0x15t
        0x55t
        0x11t
        0x42t
        0xdt
        0x5t
        0x3t
        0x1et
        0x30t
        0x60t
        0x25t
        0x34t
        0x32t
    .end array-data
.end method

.method public final requiresSignIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Z

    return v0
.end method

.method public final zaa()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/signin/internal/zaf;->zae(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6b3391"

    const-wide/32 v2, 0xab82a46

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "25b679"

    const-wide/32 v4, -0x3ccc498e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x65t
        0xbt
        0x54t
        0x5dt
        0x70t
        0x5ft
        0x75t
        0xet
        0x5at
        0x56t
        0x57t
        0x45t
        0x7ft
        0xft
        0x43t
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x60t
        0x50t
        0xft
        0x59t
        0x43t
        0x5ct
        0x12t
        0x46t
        0x7t
        0x44t
        0x41t
        0x50t
        0x51t
        0x50t
        0x42t
        0x46t
        0x45t
        0x56t
        0x50t
        0x54t
        0x0t
        0x5at
        0x4et
        0x19t
        0x56t
        0x5ct
        0x7t
        0x52t
        0x17t
        0x4et
        0x5at
        0x50t
        0xct
        0x16t
        0x54t
        0x55t
        0x57t
        0x54t
        0x10t
        0x77t
        0x54t
        0x5at
        0x5dt
        0x40t
        0xct
        0x42t
        0x71t
        0x4bt
        0x5dt
        0x58t
        0x31t
        0x53t
        0x44t
        0x4at
        0x5bt
        0x5at
        0xct
        0x65t
        0x43t
        0x56t
        0x40t
        0x50t
        0x42t
        0x5ft
        0x44t
        0x19t
        0x51t
        0x54t
        0xet
        0x5at
        0x52t
        0x5dt
    .end array-data
.end method

.method public final zab()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zaf;->zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1e3490"

    const-wide/32 v2, 0x4802461f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "865068"

    const/16 v3, 0x63be

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x62t
        0xct
        0x54t
        0x5at
        0x70t
        0x5et
        0x72t
        0x9t
        0x5at
        0x51t
        0x57t
        0x44t
        0x78t
        0x8t
        0x43t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x6at
        0x53t
        0x58t
        0x5ft
        0x42t
        0x5dt
        0x18t
        0x45t
        0x50t
        0x42t
        0x40t
        0x51t
        0x5bt
        0x53t
        0x15t
        0x40t
        0x44t
        0x57t
        0x5at
        0x57t
        0x57t
        0x5ct
        0x4ft
        0x18t
        0x5ct
        0x5ft
        0x50t
        0x54t
        0x16t
        0x4ft
        0x50t
        0x53t
        0x5bt
        0x10t
        0x45t
        0x59t
        0x4et
        0x53t
        0x71t
        0x55t
        0x50t
        0x59t
        0x4dt
        0x5at
        0x41t
        0x71t
        0x55t
        0x5bt
        0x57t
        0x43t
        0x5bt
        0x44t
        0x16t
        0x51t
        0x4bt
        0x16t
        0x56t
        0x51t
        0x5at
        0x54t
        0x5dt
        0x52t
    .end array-data
.end method

.method public final zad(Lcom/google/android/gms/signin/internal/zae;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fd0f15"

    const-wide/32 v4, -0x7aa4f63f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccountOrDefault()Landroid/accounts/Account;

    move-result-object v2

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "6d0dcc"

    const-wide/32 v4, 0x54c8b274

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v3, Lcom/google/android/gms/common/internal/zat;

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/common/internal/zat;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    new-instance v1, Lcom/google/android/gms/signin/internal/zai;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/signin/internal/zaf;->zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v7, [B

    fill-array-data v1, :array_2

    const-string v2, "7aaa19"

    const v3, 0x4ec25a72

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "131e29"

    const-wide/32 v4, -0x376731e7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/signin/internal/zak;

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/signin/internal/zae;->zab(Lcom/google/android/gms/signin/internal/zak;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    const-string v2, "ac333c"

    const-wide/32 v4, 0x3a3b6276

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "e7ef48"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :array_0
    .array-data 1
        0x23t
        0x1ct
        0x40t
        0x3t
        0x52t
        0x41t
        0xft
        0xat
        0x57t
        0x46t
        0x50t
        0x15t
        0x10t
        0x5t
        0x5ct
        0xft
        0x55t
        0x15t
        0x2ft
        0x37t
        0x59t
        0x1t
        0x5ft
        0x7ct
        0x8t
        0x27t
        0x51t
        0xat
        0x5dt
        0x57t
        0x7t
        0x7t
        0x5bt
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x58t
        0x54t
        0x1t
        0x5t
        0x2t
        0x43t
        0x8t
        0x44t
        0x44t
        0x2t
        0x0t
        0x55t
        0xbt
        0x45t
        0xat
        0x17t
        0x5dt
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x64t
        0x8t
        0x6t
        0xft
        0x78t
        0x57t
        0x74t
        0xdt
        0x8t
        0x4t
        0x5ft
        0x4dt
        0x7et
        0xct
        0x11t
        0xdt
    .end array-data

    :array_3
    .array-data 1
        0x63t
        0x56t
        0x5ct
        0xat
        0x46t
        0x5ct
        0x11t
        0x40t
        0x54t
        0x17t
        0x44t
        0x50t
        0x52t
        0x56t
        0x11t
        0x15t
        0x40t
        0x56t
        0x53t
        0x52t
        0x53t
        0x9t
        0x4bt
        0x19t
        0x55t
        0x5at
        0x54t
        0x1t
        0x12t
        0x4et
        0x59t
        0x56t
        0x5ft
        0x45t
        0x41t
        0x50t
        0x56t
        0x5dt
        0x78t
        0xbt
        0x12t
        0x50t
        0x42t
        0x13t
        0x52t
        0x4t
        0x5et
        0x55t
        0x54t
        0x57t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x32t
        0xat
        0x54t
        0x5dt
        0x7at
        0xdt
        0x22t
        0xft
        0x5at
        0x56t
        0x5dt
        0x17t
        0x28t
        0xet
        0x43t
        0x5ft
    .end array-data

    :array_5
    .array-data 1
        0x2ct
        0x64t
        0xct
        0x1t
        0x5at
        0x71t
        0xbt
        0x74t
        0x4t
        0xat
        0x58t
        0x5at
        0x4t
        0x54t
        0xet
        0x15t
        0x17t
        0x57t
        0xbt
        0x64t
        0xct
        0x1t
        0x5at
        0x71t
        0xbt
        0x74t
        0xat
        0xbt
        0x44t
        0x54t
        0x0t
        0x43t
        0x0t
        0x46t
        0x47t
        0x50t
        0xat
        0x42t
        0x9t
        0x2t
        0x14t
        0x5at
        0x0t
        0x17t
        0x0t
        0x1et
        0x51t
        0x5bt
        0x10t
        0x43t
        0x0t
        0x2t
        0x14t
        0x5et
        0x17t
        0x58t
        0x8t
        0x46t
        0x40t
        0x50t
        0x0t
        0x17t
        0x16t
        0x7t
        0x59t
        0x5dt
        0x45t
        0x47t
        0x17t
        0x9t
        0x57t
        0x5dt
        0x16t
        0x44t
        0x49t
        0x46t
        0x41t
        0x56t
        0x0t
        0x4ft
        0x15t
        0x3t
        0x57t
        0x4ct
        0x0t
        0x53t
        0x45t
        0x34t
        0x51t
        0x55t
        0xat
        0x43t
        0x0t
        0x23t
        0x4ct
        0x5bt
        0x0t
        0x47t
        0x11t
        0xft
        0x5bt
        0x56t
        0x4bt
    .end array-data
.end method
