.class Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ReflectionHolder"
.end annotation


# static fields
.field private static sContentInsets:Ljava/lang/reflect/Field;

.field private static sReflectionSucceeded:Z

.field private static sStableInsets:Ljava/lang/reflect/Field;

.field private static sViewAttachInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-class v0, Landroid/view/View;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fb31e9"

    const v3, 0x4e4bd683    # 8.549583E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "0dd810"

    const-wide/32 v2, 0x25045430

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "070531"

    const-wide v4, 0x41bc2f6212000000L    # 4.72867346E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "6ac7b4"

    const-wide/32 v4, 0x1255c43d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "13fd6b"

    const-wide v4, -0x3e20182dd6800000L    # -2.141145254E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "64c3c0"

    const-wide/32 v4, 0x11dfcc90

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0xbt
        0x23t
        0x47t
        0x45t
        0x4t
        0x5at
        0xet
        0x2bt
        0x5dt
        0x57t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0xat
        0x0t
        0x4at
        0x5et
        0x59t
        0x54t
        0x4at
        0x12t
        0x51t
        0x54t
        0x47t
        0x1et
        0x32t
        0xdt
        0x5dt
        0x46t
        0x14t
        0x71t
        0x10t
        0x10t
        0x59t
        0x52t
        0x58t
        0x79t
        0xat
        0x2t
        0x57t
    .end array-data

    :array_2
    .array-data 1
        0x5dt
        0x64t
        0x44t
        0x54t
        0x51t
        0x5dt
        0x55t
        0x7et
        0x5et
        0x46t
        0x56t
        0x45t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5bt
        0x22t
        0xct
        0x59t
        0x16t
        0x51t
        0x58t
        0x15t
        0x2at
        0x59t
        0x11t
        0x51t
        0x42t
        0x12t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x77t
        0x52t
        0xft
        0x8t
        0x53t
        0x6t
        0x11t
        0x47t
        0x9t
        0x44t
        0x51t
        0x7t
        0x45t
        0x13t
        0x10t
        0xdt
        0x45t
        0xbt
        0x53t
        0x5ft
        0x3t
        0x44t
        0x5ft
        0xct
        0x42t
        0x56t
        0x12t
        0x17t
        0x16t
        0x4t
        0x43t
        0x5ct
        0xbt
        0x44t
        0x77t
        0x16t
        0x45t
        0x52t
        0x5t
        0xct
        0x7ft
        0xct
        0x57t
        0x5ct
        0x46t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x61t
        0x5dt
        0xdt
        0x57t
        0xct
        0x47t
        0x7ft
        0x5at
        0x10t
        0x56t
        0x17t
        0x43t
        0x75t
        0x5bt
        0xet
        0x43t
        0x2t
        0x44t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8

    const/4 v2, 0x0

    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    invoke-static {v0}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    invoke-static {v1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x26

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "da8673"

    const-wide v6, -0x3e2b62a8f7800000L    # -1.38342301E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "3b634b"

    const v5, -0x32a63d08

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x22t
        0x0t
        0x51t
        0x5at
        0x52t
        0x57t
        0x44t
        0x15t
        0x57t
        0x16t
        0x50t
        0x56t
        0x10t
        0x41t
        0x51t
        0x58t
        0x44t
        0x56t
        0x10t
        0x12t
        0x18t
        0x50t
        0x45t
        0x5ct
        0x9t
        0x41t
        0x79t
        0x42t
        0x43t
        0x52t
        0x7t
        0x9t
        0x71t
        0x58t
        0x51t
        0x5ct
        0x4at
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x64t
        0xbt
        0x58t
        0x57t
        0x5bt
        0x15t
        0x7at
        0xct
        0x45t
        0x56t
        0x40t
        0x11t
        0x70t
        0xdt
        0x5bt
        0x43t
        0x55t
        0x16t
    .end array-data
.end method
