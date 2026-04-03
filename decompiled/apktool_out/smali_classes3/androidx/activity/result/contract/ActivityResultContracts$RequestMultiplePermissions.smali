.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestMultiplePermissions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<[",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String;

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String;

.field public static final EXTRA_PERMISSION_GRANT_RESULTS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "554802"

    const-wide/32 v2, -0x31f1fac9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->ACTION_REQUEST_PERMISSIONS:Ljava/lang/String;

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "0ee529"

    const-wide v2, -0x3e2b8d0a69c00000L    # -1.372313177E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->EXTRA_PERMISSIONS:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "2993a1"

    const/16 v2, -0x2f56

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->EXTRA_PERMISSION_GRANT_RESULTS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x54t
        0x5bt
        0x50t
        0x4at
        0x5ft
        0x5bt
        0x51t
        0x4dt
        0x1at
        0x59t
        0x53t
        0x46t
        0x5ct
        0x43t
        0x5dt
        0x4ct
        0x49t
        0x1ct
        0x47t
        0x50t
        0x47t
        0x4dt
        0x5ct
        0x46t
        0x1bt
        0x56t
        0x5bt
        0x56t
        0x44t
        0x40t
        0x54t
        0x56t
        0x40t
        0x16t
        0x51t
        0x51t
        0x41t
        0x5ct
        0x5bt
        0x56t
        0x1et
        0x60t
        0x70t
        0x64t
        0x61t
        0x7dt
        0x63t
        0x66t
        0x6at
        0x65t
        0x71t
        0x6at
        0x7dt
        0x7bt
        0x66t
        0x66t
        0x7dt
        0x77t
        0x7et
        0x61t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0xbt
        0x1t
        0x47t
        0x5dt
        0x50t
        0x54t
        0x1dt
        0x4bt
        0x54t
        0x51t
        0x4dt
        0x59t
        0x13t
        0xct
        0x41t
        0x4bt
        0x17t
        0x42t
        0x0t
        0x16t
        0x40t
        0x5et
        0x4dt
        0x1et
        0x6t
        0xat
        0x5bt
        0x46t
        0x4bt
        0x51t
        0x6t
        0x11t
        0x1bt
        0x57t
        0x41t
        0x44t
        0x17t
        0x4t
        0x1bt
        0x62t
        0x7ct
        0x62t
        0x28t
        0x2ct
        0x66t
        0x61t
        0x70t
        0x7ft
        0x2bt
        0x36t
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x57t
        0x5dt
        0x41t
        0xet
        0x58t
        0x56t
        0x41t
        0x17t
        0x52t
        0x2t
        0x45t
        0x5bt
        0x4ft
        0x50t
        0x47t
        0x18t
        0x1ft
        0x40t
        0x5ct
        0x4at
        0x46t
        0xdt
        0x45t
        0x1ct
        0x5at
        0x56t
        0x5dt
        0x15t
        0x43t
        0x53t
        0x5at
        0x4dt
        0x1dt
        0x4t
        0x49t
        0x46t
        0x4bt
        0x58t
        0x1dt
        0x31t
        0x74t
        0x60t
        0x74t
        0x70t
        0x60t
        0x32t
        0x78t
        0x7dt
        0x77t
        0x66t
        0x74t
        0x33t
        0x70t
        0x7ct
        0x6dt
        0x66t
        0x61t
        0x24t
        0x62t
        0x67t
        0x75t
        0x6dt
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method

.method static createIntent([Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->ACTION_REQUEST_PERMISSIONS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->EXTRA_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 1

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    array-length v6, p2

    move v4, v2

    move v3, v1

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p2, v4

    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    invoke-direct {v0, v5}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->parseResult(ILandroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->EXTRA_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->EXTRA_PERMISSION_GRANT_RESULTS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v6, v4

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    aget v0, v5, v3

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method
