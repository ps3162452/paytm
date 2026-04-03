.class final Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseGuard"
.end annotation


# instance fields
.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    .locals 9

    const/4 v1, 0x0

    const/16 v0, 0x18

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "e4b7f8"

    const v3, -0x31eec94b    # -6.090704E8f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "38b0bc"

    const-wide/32 v4, -0x57dcc6d6

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v4, "0f42e8"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "636655"

    const-wide/32 v6, -0x2f2b9c6d

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_0
    new-instance v3, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-direct {v3, v1, v0, v2}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v3

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x1t
        0x55t
        0xet
        0x41t
        0xft
        0x53t
        0x4bt
        0x47t
        0x1bt
        0x44t
        0x12t
        0x5dt
        0x8t
        0x1at
        0x21t
        0x5bt
        0x9t
        0x4bt
        0x0t
        0x73t
        0x17t
        0x56t
        0x14t
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x5dt
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x5ft
        0x16t
        0x51t
        0x5ct
    .end array-data

    :array_3
    .array-data 1
        0x41t
        0x52t
        0x44t
        0x58t
        0x7ct
        0x53t
        0x79t
        0x43t
        0x53t
        0x58t
    .end array-data
.end method


# virtual methods
.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
