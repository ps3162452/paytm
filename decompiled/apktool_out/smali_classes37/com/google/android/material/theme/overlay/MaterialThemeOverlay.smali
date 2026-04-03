.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/R$attr;->theme:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 4

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    instance-of v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    move-object p0, v0

    goto :goto_1
.end method
