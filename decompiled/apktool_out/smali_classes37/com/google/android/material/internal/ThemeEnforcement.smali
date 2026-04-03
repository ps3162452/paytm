.class public final Lcom/google/android/material/internal/ThemeEnforcement;
.super Ljava/lang/Object;


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String;

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "36d7d9"

    const-wide v2, 0x41c0fb0c29000000L    # 5.6977621E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_THEME_NAME:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "fdd033"

    const/16 v2, 0x2f63    # 1.6999E-41f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_THEME_NAME:Ljava/lang/String;

    new-array v0, v5, [I

    sget v1, Lcom/google/android/material/R$attr;->colorPrimary:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    new-array v0, v5, [I

    sget v1, Lcom/google/android/material/R$attr;->colorPrimaryVariant:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void

    :array_0
    .array-data 1
        0x67t
        0x5et
        0x1t
        0x5at
        0x1t
        0x17t
        0x72t
        0x46t
        0x14t
        0x74t
        0xbt
        0x54t
        0x43t
        0x57t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x32t
        0xct
        0x1t
        0x5dt
        0x56t
        0x1dt
        0x2bt
        0x5t
        0x10t
        0x55t
        0x41t
        0x5at
        0x7t
        0x8t
        0x27t
        0x5ft
        0x5et
        0x43t
        0x9t
        0xat
        0x1t
        0x5et
        0x47t
        0x40t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    sget-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_THEME_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$attr;->isMaterialTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    sget-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_THEME_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    sget-object v1, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    invoke-virtual {p0, p1, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    :cond_1
    if-eqz p5, :cond_2

    array-length v2, p5

    if-nez v2, :cond_4

    :cond_2
    sget v2, Lcom/google/android/material/R$styleable;->ThemeEnforcement_android_textAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x9c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6ee94c"

    const v3, -0x311682b5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x62t
        0xdt
        0xct
        0x4at
        0x14t
        0x0t
        0x59t
        0x8t
        0x15t
        0x56t
        0x5at
        0x6t
        0x58t
        0x11t
        0x45t
        0x4bt
        0x51t
        0x12t
        0x43t
        0xct
        0x17t
        0x5ct
        0x47t
        0x43t
        0x42t
        0xdt
        0x4t
        0x4dt
        0x14t
        0x1at
        0x59t
        0x10t
        0x45t
        0x4at
        0x44t
        0x6t
        0x55t
        0xct
        0x3t
        0x40t
        0x14t
        0x2t
        0x16t
        0x13t
        0x4t
        0x55t
        0x5dt
        0x7t
        0x16t
        0x31t
        0x0t
        0x41t
        0x40t
        0x22t
        0x46t
        0x15t
        0x0t
        0x58t
        0x46t
        0x2t
        0x58t
        0x6t
        0x0t
        0x19t
        0x55t
        0x17t
        0x42t
        0x17t
        0xct
        0x5bt
        0x41t
        0x17t
        0x53t
        0x4bt
        0x45t
        0x6ct
        0x44t
        0x7t
        0x57t
        0x11t
        0x0t
        0x19t
        0x4dt
        0xct
        0x43t
        0x17t
        0x45t
        0x58t
        0x44t
        0x13t
        0x16t
        0x11t
        0xdt
        0x5ct
        0x59t
        0x6t
        0x16t
        0x11t
        0xat
        0x19t
        0x5dt
        0xdt
        0x5et
        0x0t
        0x17t
        0x50t
        0x40t
        0x43t
        0x50t
        0x17t
        0xat
        0x54t
        0x14t
        0x37t
        0x5et
        0x0t
        0x8t
        0x5ct
        0x1at
        0x2et
        0x57t
        0x11t
        0x0t
        0x4bt
        0x5dt
        0x2t
        0x5at
        0x26t
        0xat
        0x54t
        0x44t
        0xct
        0x58t
        0x0t
        0xbt
        0x4dt
        0x47t
        0x43t
        0x1et
        0xat
        0x17t
        0x19t
        0x55t
        0x43t
        0x52t
        0x0t
        0x16t
        0x5at
        0x51t
        0xdt
        0x52t
        0x4t
        0xbt
        0x4dt
        0x1dt
        0x4dt
    .end array-data
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b48896"

    const-wide/32 v4, -0x2dda2989

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "91cdd8"

    const/16 v4, -0x684d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x5ct
        0x5dt
        0x18t
        0x4at
        0x42t
        0x1bt
        0x58t
        0x5dt
        0x18t
        0x56t
        0x58t
        0x42t
        0x40t
        0x50t
        0x51t
        0x4at
        0x16t
        0x1t
        0x5bt
        0x55t
        0x48t
        0x56t
        0x58t
        0x7t
        0x5at
        0x4ct
        0x18t
        0x4bt
        0x53t
        0x13t
        0x41t
        0x51t
        0x4at
        0x5ct
        0x45t
        0x42t
        0x4dt
        0x57t
        0x4dt
        0x4bt
        0x16t
        0x3t
        0x44t
        0x48t
        0x18t
        0x4dt
        0x5et
        0x7t
        0x59t
        0x5dt
        0x18t
        0x4dt
        0x59t
        0x42t
        0x56t
        0x5dt
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x19t
        0xct
        0x16t
        0x44t
        0x59t
        0x19t
        0x55t
        0x6t
        0x17t
        0x7t
        0x5dt
        0x57t
        0x55t
        0x2t
        0xat
        0x10t
        0x11t
        0x17t
    .end array-data
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    return v0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    array-length v3, p5

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, p5, v1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v0

    return v0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 1

    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;
    .locals 1

    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    return-object v0
.end method
