.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z

.field private static sConsumedField:Ljava/lang/reflect/Field;

.field private static sConsumedFieldFetched:Z


# instance fields
.field private mPlatformInsets:Landroid/view/WindowInsets;

.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method private static createWindowInsetsInstance()Landroid/view/WindowInsets;
    .locals 9

    const/4 v2, 0x0

    const/16 v8, 0x12

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/WindowInsets;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "fc2f2c"

    const-wide v4, -0x3e338b6e68800000L    # -9.54802991E8

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    :cond_0
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v3, "f6a5eb"

    invoke-static {v1, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "482201"

    const/16 v5, 0x3614

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v3, "3f520c"

    const v4, -0x325c28c4

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "f8effc"

    const/16 v5, 0x6b11

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    if-nez v0, :cond_2

    :try_start_2
    const-class v0, Landroid/view/WindowInsets;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    sput-boolean v6, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    :cond_2
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    :try_start_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_5

    const-string v3, "dfc6ac"

    const/16 v4, 0x3b18

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x31

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "240c28"

    const/16 v5, 0x6611

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_7

    const-string v3, "21778a"

    const v4, -0x3174009f

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_8

    const-string v4, "171703"

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v2

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x25t
        0x2ct
        0x7ct
        0x35t
        0x67t
        0x2et
        0x23t
        0x27t
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x5ft
        0xft
        0x51t
        0xat
        0x15t
        0x2ft
        0x58t
        0x12t
        0x50t
        0x11t
        0x11t
        0x25t
        0x59t
        0xct
        0x45t
        0x4t
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x57t
        0x47t
        0x5et
        0x54t
        0x11t
        0x5at
        0x57t
        0x46t
        0x12t
        0x42t
        0x54t
        0x40t
        0x4at
        0x5bt
        0x57t
        0x46t
        0x54t
        0x14t
        0x6ft
        0x5bt
        0x5ct
        0x54t
        0x5et
        0x43t
        0x71t
        0x5ct
        0x41t
        0x55t
        0x45t
        0x47t
        0x16t
        0x71t
        0x7dt
        0x7et
        0x62t
        0x61t
        0x75t
        0x77t
        0x76t
        0x10t
        0x57t
        0x5dt
        0x5dt
        0x5et
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0xft
        0x5bt
        0x56t
        0x5ft
        0x14t
        0x7at
        0x8t
        0x46t
        0x57t
        0x44t
        0x10t
        0x70t
        0x9t
        0x58t
        0x42t
        0x51t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x25t
        0x57t
        0x10t
        0xat
        0x2t
        0x43t
        0x8t
        0x57t
        0x11t
        0x46t
        0x1t
        0x6t
        0x12t
        0x18t
        0x13t
        0x7t
        0xat
        0x16t
        0x3t
        0x18t
        0x3t
        0x14t
        0x9t
        0xet
        0x46t
        0x6ft
        0xct
        0x8t
        0x2t
        0xct
        0x11t
        0x71t
        0xbt
        0x15t
        0x3t
        0x17t
        0x15t
        0x16t
        0x26t
        0x29t
        0x28t
        0x30t
        0x33t
        0x75t
        0x20t
        0x22t
        0x46t
        0x5t
        0xft
        0x5dt
        0x9t
        0x2t
    .end array-data

    :array_5
    .array-data 1
        0x33t
        0xft
        0xdt
        0x52t
        0xet
        0x14t
        0x2dt
        0x8t
        0x10t
        0x53t
        0x15t
        0x10t
        0x27t
        0x9t
        0xet
        0x46t
        0x0t
        0x17t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x71t
        0x5bt
        0x45t
        0xft
        0x56t
        0x18t
        0x5ct
        0x5bt
        0x44t
        0x43t
        0x40t
        0x5dt
        0x46t
        0x46t
        0x59t
        0x6t
        0x44t
        0x5dt
        0x12t
        0x63t
        0x59t
        0xdt
        0x56t
        0x57t
        0x45t
        0x7dt
        0x5et
        0x10t
        0x57t
        0x4ct
        0x41t
        0x1ct
        0x62t
        0x6t
        0x51t
        0x4ct
        0x1bt
        0x14t
        0x53t
        0xct
        0x5ct
        0x4bt
        0x46t
        0x46t
        0x45t
        0x0t
        0x46t
        0x57t
        0x40t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x59t
        0x53t
        0x57t
        0x16t
        0x7bt
        0x5ft
        0x44t
        0x52t
        0x4ct
        0x12t
        0x71t
        0x5et
        0x5at
        0x47t
        0x59t
        0x15t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x72t
        0x58t
        0x44t
        0x5bt
        0x54t
        0x13t
        0x5ft
        0x58t
        0x45t
        0x17t
        0x59t
        0x5dt
        0x47t
        0x58t
        0x5at
        0x52t
        0x10t
        0x64t
        0x58t
        0x59t
        0x55t
        0x58t
        0x47t
        0x7at
        0x5ft
        0x44t
        0x54t
        0x43t
        0x43t
        0x1bt
        0x63t
        0x52t
        0x52t
        0x43t
        0x19t
        0x13t
        0x52t
        0x58t
        0x5ft
        0x44t
        0x44t
        0x41t
        0x44t
        0x54t
        0x45t
        0x58t
        0x42t
    .end array-data
.end method


# virtual methods
.method build()Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setStableInsets(Landroidx/core/graphics/Insets;)V

    return-object v0
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .locals 5

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    iget v4, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
