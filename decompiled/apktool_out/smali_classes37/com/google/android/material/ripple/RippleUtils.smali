.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ENABLED_PRESSED_STATE_SET:[I

.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field static final LOG_TAG:Ljava/lang/String;

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field static final TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String;

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x61

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "f94a44"

    const-wide/32 v4, -0xc8336f5

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x1010367

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    new-array v0, v1, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    const-class v0, Lcom/google/android/material/ripple/RippleUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x33t
        0x4at
        0x51t
        0x41t
        0x55t
        0x14t
        0x8t
        0x56t
        0x5at
        0x4ct
        0x40t
        0x46t
        0x7t
        0x57t
        0x47t
        0x11t
        0x55t
        0x46t
        0x3t
        0x57t
        0x40t
        0x41t
        0x57t
        0x5bt
        0xat
        0x56t
        0x46t
        0x41t
        0x52t
        0x5bt
        0x14t
        0x19t
        0x40t
        0x9t
        0x51t
        0x14t
        0x2t
        0x5ct
        0x52t
        0x0t
        0x41t
        0x58t
        0x12t
        0x19t
        0x57t
        0xet
        0x58t
        0x5bt
        0x14t
        0x19t
        0x55t
        0x12t
        0x14t
        0x5dt
        0x12t
        0x19t
        0x43t
        0x8t
        0x58t
        0x58t
        0x46t
        0x5bt
        0x51t
        0x41t
        0x41t
        0x47t
        0x3t
        0x5dt
        0x14t
        0x15t
        0x5bt
        0x14t
        0x0t
        0x50t
        0x5at
        0x8t
        0x47t
        0x5ct
        0x46t
        0x4bt
        0x5dt
        0x11t
        0x44t
        0x58t
        0x3t
        0x19t
        0x55t
        0xft
        0x5dt
        0x59t
        0x7t
        0x4dt
        0x5dt
        0xet
        0x5at
        0x47t
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_3
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_4
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_5
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    :array_6
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6

    const/16 v2, 0xa

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_0

    new-array v1, v3, [[I

    new-array v2, v3, [I

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v0, v1, v4

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {p0, v0}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v4

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    aput-object v0, v1, v5

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {p0, v0}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v5

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v2, [[I

    new-array v2, v2, [I

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    aput-object v0, v1, v4

    invoke-static {p0, v0}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v4

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    aput-object v0, v1, v5

    invoke-static {p0, v0}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v5

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    aput-object v0, v1, v3

    invoke-static {p0, v0}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x3

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    aput-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x4

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v3, v1, v0

    aput v4, v2, v0

    const/4 v0, 0x5

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    aput-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x6

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    aput-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x7

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    aput-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    const/16 v0, 0x8

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    aput-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    const/16 v0, 0x9

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v1, v0

    aput v4, v2, v0

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method private static doubleAlpha(I)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    invoke-virtual {p0, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    array-length v5, p0

    move v4, v3

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget v6, p0, v4

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const v7, 0x101009c

    if-ne v6, v7, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const v7, 0x10100a7

    if-ne v6, v7, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    const v7, 0x1010367

    if-ne v6, v7, :cond_0

    move v2, v1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    :goto_2
    return v1

    :cond_5
    move v1, v3

    goto :goto_2
.end method
