.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;,
        Lcom/google/android/material/navigation/NavigationView$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field private bottomInsetScrimEnabled:Z

.field private drawerLayoutCornerSize:I

.field private layoutGravity:I

.field listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Lcom/google/android/material/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private final shapeClipBounds:Landroid/graphics/RectF;

.field private shapeClipPath:Landroid/graphics/Path;

.field private final tmpLocation:[I

.field private topInsetScrimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    sget v7, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v7}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v10, Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {v10}, Lcom/google/android/material/internal/NavigationMenuPresenter;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->layoutGravity:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v11, Lcom/google/android/material/internal/NavigationMenu;

    invoke-direct {v11, v3}, Lcom/google/android/material/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    sget-object v5, Lcom/google/android/material/R$styleable;->NavigationView:[I

    const/4 v4, 0x0

    new-array v8, v4, [I

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_android_layout_gravity:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/navigation/NavigationView;->layoutGravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_3

    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v6, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v6, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {v6, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    :cond_4
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    const/4 v4, 0x0

    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_5
    const/4 v5, 0x0

    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v12, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_13

    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    move v9, v5

    :goto_0
    if-nez v9, :cond_6

    if-nez v4, :cond_6

    const v4, 0x1010038

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_6
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_12

    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_7

    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    const/4 v7, 0x0

    invoke-virtual {v12, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    :cond_7
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_8

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    const/4 v8, 0x0

    invoke-virtual {v12, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_8
    const/4 v7, 0x0

    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    const v7, 0x1010036

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_a
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/material/navigation/NavigationView;->hasShapeAppearance(Landroidx/appcompat/widget/TintTypedArray;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemBackground(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemRippleColor:I

    invoke-static {v3, v12, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_b

    if-eqz v13, :cond_b

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    new-instance v15, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v13}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0, v14}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v15}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V

    :cond_b
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_c

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    :cond_c
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_d

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    :cond_d
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    new-instance v14, Lcom/google/android/material/navigation/NavigationView$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/material/navigation/NavigationView$1;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/NavigationMenu;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setId(I)V

    invoke-virtual {v10, v3, v11}, Lcom/google/android/material/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    if-eqz v9, :cond_e

    invoke-virtual {v10, v9}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderTextAppearance(I)V

    :cond_e
    invoke-virtual {v10, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v10, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getOverScrollMode()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    if-eqz v6, :cond_f

    invoke-virtual {v10, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    :cond_f
    invoke-virtual {v10, v7}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    invoke-virtual {v11, v10}, Lcom/google/android/material/internal/NavigationMenu;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->addView(Landroid/view/View;)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v12, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_10

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v12, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_11

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    :cond_11
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V

    return-void

    :cond_12
    const v5, 0x1010038

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto/16 :goto_1

    :cond_13
    move v9, v5

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    return-object v0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 12

    const/4 v0, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v3, v4, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    sget-object v4, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    sget-object v5, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v7, v11, [[I

    aput-object v4, v7, v9

    aput-object v5, v7, v8

    aput-object v6, v7, v10

    new-array v4, v11, [I

    aput v2, v4, v9

    aput v1, v4, v8

    aput v3, v4, v10

    invoke-direct {v0, v7, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method private createDefaultItemBackground(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-virtual {v1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, v2, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, v3, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, v4, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private hasShapeAppearance(Landroidx/appcompat/widget/TintTypedArray;)Z
    .locals 1

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpdateCornerSizeForDrawerLayout(II)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->layoutGravity:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    :goto_1
    return-void

    :cond_1
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_1
.end method

.method private setupInsetScrimsListener()V
    .locals 2

    new-instance v0, Lcom/google/android/material/navigation/NavigationView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$2;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemMaxLines()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemVerticalPadding()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetEnd()I

    move-result v0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetStart()I

    move-result v0

    return v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    return-void

    :sswitch_1
    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x4d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "38591b"

    const v3, -0x32675a6b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x70t
        0x59t
        0x59t
        0x55t
        0x54t
        0x6t
        0x13t
        0x4bt
        0x50t
        0x4dt
        0x72t
        0xat
        0x56t
        0x5bt
        0x5et
        0x5ct
        0x55t
        0x2bt
        0x47t
        0x5dt
        0x58t
        0x11t
        0x7ct
        0x7t
        0x5dt
        0x4dt
        0x7ct
        0x4dt
        0x54t
        0xft
        0x1at
        0x18t
        0x42t
        0x50t
        0x45t
        0xat
        0x13t
        0x59t
        0x5bt
        0x19t
        0x58t
        0x16t
        0x56t
        0x55t
        0x15t
        0x4dt
        0x59t
        0x3t
        0x47t
        0x18t
        0x5ct
        0x4at
        0x11t
        0xct
        0x5ct
        0x4ct
        0x15t
        0x50t
        0x5ft
        0x42t
        0x47t
        0x50t
        0x50t
        0x19t
        0x52t
        0x17t
        0x41t
        0x4at
        0x50t
        0x57t
        0x45t
        0x42t
        0x5et
        0x5dt
        0x5bt
        0x4ct
        0x1ft
    .end array-data
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetEnd(I)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetStart(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setElevation(F)V

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    return-void
.end method
