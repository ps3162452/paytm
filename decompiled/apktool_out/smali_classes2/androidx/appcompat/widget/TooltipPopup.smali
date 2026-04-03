.class Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "006dc9"

    const v2, 0x4d67b68f    # 2.4296882E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/TooltipPopup;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x5ft
        0x59t
        0x8t
        0x17t
        0x50t
        0x40t
        0x60t
        0x59t
        0x14t
        0x16t
        0x49t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$layout;->abc_tooltip:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    sget v2, Landroidx/appcompat/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 v0, 0x3ea

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    sget v0, Landroidx/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v1, p3, v0

    sub-int v0, p3, v0

    :goto_1
    const/16 v2, 0x31

    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p4, :cond_2

    sget v2, Landroidx/appcompat/R$dimen;->tooltip_y_offset_touch:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {p1}, Landroidx/appcompat/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v0, Landroidx/appcompat/widget/TooltipPopup;->TAG:Ljava/lang/String;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "945a22"

    const-wide/32 v4, 0x39e233e8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 p2, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget v2, Landroidx/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v6, "28823e"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v2, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "84638b"

    const-wide v8, 0x418b75d568000000L    # 5.7588397E7

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [B

    fill-array-data v7, :array_3

    const-string v8, "65d198"

    const v9, 0x4da1939f    # 3.3885078E8f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7, v2, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v5, 0x0

    aget v5, v2, v5

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v6, v8

    sub-int/2addr v5, v8

    aput v5, v2, v7

    const/4 v5, 0x1

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v6, v6, v8

    sub-int v6, v7, v6

    aput v6, v2, v5

    const/4 v5, 0x0

    aget v2, v2, v5

    add-int/2addr v2, p2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v5, 0x1

    aget v5, v4, v5

    add-int/2addr v0, v5

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    if-eqz p4, :cond_7

    if-ltz v0, :cond_6

    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    iput v1, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_7
    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_8

    iput v1, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_8
    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    nop

    :array_0
    .array-data 1
        0x7at
        0x55t
        0x5bt
        0xft
        0x5dt
        0x46t
        0x19t
        0x52t
        0x5ct
        0xft
        0x56t
        0x12t
        0x58t
        0x44t
        0x45t
        0x41t
        0x44t
        0x5bt
        0x5ct
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x4ct
        0x59t
        0x46t
        0x46t
        0x16t
        0x6dt
        0x5at
        0x59t
        0x40t
        0x6ct
        0xdt
        0x57t
        0x51t
        0x5ft
        0x5at
        0x47t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5ct
        0x5dt
        0x5bt
        0x56t
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x57t
        0x5bt
        0x0t
        0x43t
        0x56t
        0x51t
        0x52t
    .end array-data
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3849db"

    const v3, -0x3145728f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x44t
        0x51t
        0x5at
        0x5dt
        0xbt
        0x15t
    .end array-data
.end method

.method isShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "eda555"

    const-wide v4, -0x3e49e7e11d000000L    # -3.70679523E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x12t
        0xdt
        0xft
        0x51t
        0x5at
        0x42t
    .end array-data
.end method
