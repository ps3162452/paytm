.class public final Landroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "070bb4"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/CompoundButtonCompat;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x58t
        0x5dt
        0x12t
        0xdt
        0x41t
        0x5et
        0x53t
        0x72t
        0x17t
        0x16t
        0x40t
        0x5ft
        0x59t
        0x73t
        0xdt
        0xft
        0x44t
        0x51t
        0x43t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/widget/CompoundButton;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "33c5c9"

    const-wide v4, 0x41bf7d48c0000000L    # 5.2830432E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v6, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    :cond_1
    sget-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/core/widget/CompoundButtonCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x28

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "809ba3"

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Landroidx/core/widget/CompoundButtonCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x2c

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "f7c5fd"

    const-wide/32 v6, 0x4eaa93f8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v1, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    :cond_2
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x5et
        0x71t
        0x16t
        0x41t
        0x17t
        0x56t
        0x5dt
        0x77t
        0x11t
        0x54t
        0x14t
        0x58t
        0x51t
        0x5ft
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x7et
        0x51t
        0x50t
        0xet
        0x4t
        0x57t
        0x18t
        0x44t
        0x56t
        0x42t
        0x13t
        0x56t
        0x4ct
        0x42t
        0x50t
        0x7t
        0x17t
        0x56t
        0x18t
        0x5dt
        0x7bt
        0x17t
        0x15t
        0x47t
        0x57t
        0x5et
        0x7dt
        0x10t
        0x0t
        0x44t
        0x59t
        0x52t
        0x55t
        0x7t
        0x41t
        0x55t
        0x51t
        0x55t
        0x55t
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x56t
        0xat
        0x59t
        0x3t
        0x0t
        0x46t
        0x43t
        0xct
        0x15t
        0x1t
        0x1t
        0x12t
        0x17t
        0x1t
        0x40t
        0x12t
        0x10t
        0x9t
        0x59t
        0x43t
        0x51t
        0x14t
        0x5t
        0x11t
        0x56t
        0x1t
        0x59t
        0x3t
        0x44t
        0x10t
        0x5et
        0x2t
        0x15t
        0x14t
        0x1t
        0x0t
        0x5bt
        0x6t
        0x56t
        0x12t
        0xdt
        0x9t
        0x59t
    .end array-data
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
