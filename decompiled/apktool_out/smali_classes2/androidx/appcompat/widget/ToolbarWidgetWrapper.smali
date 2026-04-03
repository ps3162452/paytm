.class public Landroidx/appcompat/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Landroidx/appcompat/widget/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c0c888"

    const v2, -0x31b86f99

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x5ft
        0xct
        0x54t
        0x5at
        0x59t
        0x11t
        0x67t
        0xat
        0x5ct
        0x5ft
        0x5dt
        0x17t
        0x67t
        0x11t
        0x59t
        0x48t
        0x48t
        0x6t
        0x42t
    .end array-data
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 2

    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    iput v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_d

    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    iget v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    :cond_5
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v2

    if-lez v2, :cond_6

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    :cond_7
    iget-object v4, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_8
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_9
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :cond_a
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    :cond_b
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method private detectDisplayOptions()I
    .locals 2

    const/16 v0, 0xb

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 5

    const/4 v4, -0x2

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v4, v4, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 4

    sget-object v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->TAG:Ljava/lang/String;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c99814"

    const/16 v3, 0x7f0a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x4bt
        0x56t
        0x5ft
        0x43t
        0x51t
        0x10t
        0x4at
        0x19t
        0x5ct
        0x58t
        0x47t
        0x13t
        0x55t
        0x58t
        0x41t
        0x11t
        0x41t
        0xdt
        0x4at
        0x4ct
        0x48t
        0x41t
        0x5bt
        0x11t
        0x4dt
        0x5ct
        0x5ct
    .end array-data
.end method

.method public initProgress()V
    .locals 4

    sget-object v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->TAG:Ljava/lang/String;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "936ec6"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x69t
        0x41t
        0x59t
        0x2t
        0x11t
        0x53t
        0x4at
        0x40t
        0x16t
        0x1t
        0xat
        0x45t
        0x49t
        0x5ft
        0x57t
        0x1ct
        0x43t
        0x43t
        0x57t
        0x40t
        0x43t
        0x15t
        0x13t
        0x59t
        0x4bt
        0x47t
        0x53t
        0x1t
    .end array-data
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    if-eqz v0, :cond_4

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_4

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x37

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "951df2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7at
        0x54t
        0x5ft
        0x43t
        0x12t
        0x12t
        0x4at
        0x50t
        0x45t
        0x44t
        0x2t
        0x40t
        0x56t
        0x45t
        0x55t
        0xbt
        0x11t
        0x5ct
        0x19t
        0x46t
        0x54t
        0x8t
        0x3t
        0x51t
        0x4dt
        0x50t
        0x55t
        0x44t
        0x16t
        0x5dt
        0x4at
        0x5ct
        0x45t
        0xdt
        0x9t
        0x5ct
        0x19t
        0x42t
        0x58t
        0x10t
        0xet
        0x5dt
        0x4ct
        0x41t
        0x11t
        0x5t
        0x8t
        0x12t
        0x58t
        0x51t
        0x50t
        0x14t
        0x12t
        0x57t
        0x4bt
    .end array-data
.end method

.method public setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iput v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    iput v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    const v1, 0x800053

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    sget v1, Landroidx/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setId(I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    if-eq p1, v0, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9b2c84"

    const v3, 0x4ea00135

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iput v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    iput v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    const v1, 0x800053

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    :cond_1
    :goto_1
    :pswitch_3
    return-void

    :pswitch_4
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x70t
        0xct
        0x44t
        0x2t
        0x54t
        0x5dt
        0x5dt
        0x42t
        0x5ct
        0x2t
        0x4et
        0x5dt
        0x5et
        0x3t
        0x46t
        0xat
        0x57t
        0x5at
        0x19t
        0xft
        0x5dt
        0x7t
        0x5dt
        0x14t
    .end array-data
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
