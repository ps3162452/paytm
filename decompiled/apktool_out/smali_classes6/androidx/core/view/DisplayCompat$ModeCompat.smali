.class public final Landroidx/core/view/DisplayCompat$ModeCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeCompat"
.end annotation


# instance fields
.field private final mIsNative:Z

.field private final mMode:Landroid/view/Display$Mode;

.field private final mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/graphics/Point;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c6f448"

    const v2, 0x4eb9e11d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        0x5et
        0x1ft
        0x47t
        0x5dt
        0x5bt
        0x2t
        0x5at
        0x35t
        0x5dt
        0x4et
        0x5dt
        0x43t
        0xbt
        0x5bt
        0x14t
        0x5at
        0x4dt
        0xft
        0x5at
    .end array-data
.end method

.method constructor <init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ddc73d"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "49d420"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return-void

    :array_0
    .array-data 1
        0x9t
        0xbt
        0x7t
        0x52t
        0x13t
        0x59t
        0x59t
        0x44t
        0xdt
        0x42t
        0x5ft
        0x8t
        0x48t
        0x44t
        0x0t
        0x56t
        0x5dt
        0x43t
        0x10t
        0x44t
        0x14t
        0x45t
        0x52t
        0x14t
        0x44t
        0x5t
        0x43t
        0x59t
        0x46t
        0x8t
        0x8t
        0x44t
        0x11t
        0x52t
        0x55t
        0x1t
        0x16t
        0x1t
        0xdt
        0x54t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x51t
        0x1dt
        0x47t
        0x5bt
        0x53t
        0x55t
        0x55t
        0x37t
        0x5dt
        0x48t
        0x55t
        0x14t
        0x4t
        0x59t
        0x14t
        0x5ct
        0x45t
        0x58t
        0x55t
    .end array-data
.end method

.method constructor <init>(Landroid/view/Display$Mode;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "59b19c"

    const-wide/32 v2, 0x3cb72945

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    iput-boolean p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return-void

    :array_0
    .array-data 1
        0x58t
        0x56t
        0x6t
        0x54t
        0x19t
        0x5et
        0x8t
        0x19t
        0xct
        0x44t
        0x55t
        0xft
        0x19t
        0x19t
        0x1t
        0x50t
        0x57t
        0x44t
        0x41t
        0x19t
        0x15t
        0x43t
        0x58t
        0x13t
        0x15t
        0x58t
        0x42t
        0x5ft
        0x4ct
        0xft
        0x59t
        0x19t
        0x10t
        0x54t
        0x5ft
        0x6t
        0x47t
        0x5ct
        0xct
        0x52t
        0x5ct
    .end array-data
.end method


# virtual methods
.method public getPhysicalHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public isNative()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return v0
.end method

.method public toMode()Landroid/view/Display$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-object v0
.end method
