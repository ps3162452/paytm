.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final WRAP_CONTENT:I = -0x2

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x47

    const/16 v7, 0xf

    const/4 v6, 0x1

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "971fee"

    const-wide v2, 0x41d2fb5339400000L    # 1.273842917E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1e863d"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "e4df20"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "faf5a2"

    const v3, -0x3142f8e2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "9f1971"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [B

    fill-array-data v1, :array_5

    const-string v2, "8c1b46"

    const-wide v4, 0x41d5b2b553c00000L    # 1.456133455E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v0, v7, [B

    fill-array-data v0, :array_6

    const-string v1, "02dd76"

    const-wide/32 v2, 0xcc26675

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [B

    fill-array-data v1, :array_7

    const-string v2, "7bde80"

    const v3, 0x4ef8ea47

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    new-array v0, v7, [B

    fill-array-data v0, :array_8

    const-string v1, "db5a32"

    const v2, 0x4e0d4197    # 5.924715E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x58

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "d6d8c0"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :array_0
    .array-data 1
        0x75t
        0x5et
        0x42t
        0x12t
        0x35t
        0xat
        0x49t
        0x42t
        0x41t
        0x31t
        0xct
        0xbt
        0x5dt
        0x58t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x0t
        0x4ct
        0x75t
        0x5ft
        0xdt
        0x41t
        0x31t
        0x57t
        0x65t
        0x50t
        0x16t
        0x54t
        0x0t
        0x56t
        0x73t
        0x5dt
        0x5t
        0x53t
        0x9t
        0x5dt
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x51t
        0x10t
        0x23t
        0x42t
        0x59t
        0x6t
        0x51t
        0xat
        0x12t
        0x57t
        0x42t
        0x27t
        0x5bt
        0x11t
        0x8t
        0x56t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x4t
        0x12t
        0x78t
        0x0t
        0x4at
        0x27t
        0x17t
        0x7t
        0x5ct
        0xdt
        0x53t
        0x4t
        0xdt
        0x3t
        0x7dt
        0x4t
        0x5bt
        0x1t
        0x9t
        0x12t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x75t
        0xft
        0x42t
        0x4dt
        0x67t
        0x5et
        0x49t
        0x13t
        0x41t
        0x6et
        0x5et
        0x5ft
        0x5dt
        0x9t
        0x46t
    .end array-data

    :array_5
    .array-data 1
        0x7bt
        0xct
        0x44t
        0xet
        0x50t
        0x16t
        0x56t
        0xct
        0x45t
        0x42t
        0x52t
        0x5ft
        0x56t
        0x7t
        0x11t
        0xft
        0x51t
        0x42t
        0x50t
        0xct
        0x55t
        0x42t
        0x47t
        0x53t
        0x4ct
        0x20t
        0x5dt
        0xbt
        0x44t
        0x62t
        0x57t
        0x30t
        0x52t
        0x10t
        0x51t
        0x53t
        0x56t
        0x26t
        0x5ft
        0x3t
        0x56t
        0x5at
        0x5dt
        0x7t
        0x19t
        0x4bt
        0x14t
        0x59t
        0x56t
        0x43t
        0x61t
        0xdt
        0x44t
        0x43t
        0x48t
        0x34t
        0x58t
        0xct
        0x50t
        0x59t
        0x4ft
        0x4dt
        0x11t
        0x2dt
        0x5ct
        0x16t
        0x4ft
        0x6t
        0x5dt
        0xet
        0x1at
    .end array-data

    :array_6
    .array-data 1
        0x7ct
        0x5bt
        0x17t
        0x10t
        0x67t
        0x59t
        0x40t
        0x47t
        0x14t
        0x33t
        0x5et
        0x58t
        0x54t
        0x5dt
        0x13t
    .end array-data

    :array_7
    .array-data 1
        0x74t
        0xdt
        0x11t
        0x9t
        0x5ct
        0x10t
        0x59t
        0xdt
        0x10t
        0x45t
        0x5et
        0x59t
        0x59t
        0x6t
        0x44t
        0x8t
        0x5dt
        0x44t
        0x5ft
        0xdt
        0x0t
        0x45t
        0x4bt
        0x55t
        0x43t
        0x27t
        0x14t
        0xct
        0x5bt
        0x55t
        0x59t
        0x16t
        0x1t
        0x17t
        0x7at
        0x5ft
        0x42t
        0xct
        0x0t
        0x16t
        0x10t
        0x62t
        0x52t
        0x1t
        0x10t
        0x4ct
        0x18t
        0x5ft
        0x59t
        0x42t
        0x34t
        0xat
        0x48t
        0x45t
        0x47t
        0x35t
        0xdt
        0xbt
        0x5ct
        0x5ft
        0x40t
        0x4ct
        0x44t
        0x2at
        0x50t
        0x10t
        0x40t
        0x7t
        0x8t
        0x9t
        0x16t
    .end array-data

    :array_8
    .array-data 1
        0x28t
        0xbt
        0x46t
        0x15t
        0x63t
        0x5dt
        0x14t
        0x17t
        0x45t
        0x36t
        0x5at
        0x5ct
        0x0t
        0xdt
        0x42t
    .end array-data

    :array_9
    .array-data 1
        0x27t
        0x59t
        0x11t
        0x54t
        0x7t
        0x10t
        0xat
        0x59t
        0x10t
        0x18t
        0x5t
        0x59t
        0xat
        0x52t
        0x44t
        0x55t
        0x6t
        0x44t
        0xct
        0x59t
        0x0t
        0x18t
        0x4t
        0x55t
        0x10t
        0x7bt
        0x5t
        0x40t
        0x22t
        0x46t
        0x5t
        0x5ft
        0x8t
        0x59t
        0x1t
        0x5ct
        0x1t
        0x7et
        0x1t
        0x51t
        0x4t
        0x58t
        0x10t
        0x1et
        0x32t
        0x51t
        0x6t
        0x47t
        0x48t
        0x16t
        0xdt
        0x56t
        0x17t
        0x1ct
        0x44t
        0x54t
        0xbt
        0x57t
        0xft
        0x55t
        0x5t
        0x58t
        0x4dt
        0x18t
        0xct
        0x5et
        0x44t
        0x66t
        0xbt
        0x48t
        0x16t
        0x40t
        0x33t
        0x5ft
        0xat
        0x5ct
        0xct
        0x47t
        0x4at
        0x16t
        0x2bt
        0x50t
        0x43t
        0x47t
        0x1t
        0x5at
        0x8t
        0x16t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    sget-object v0, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    sget v1, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private buildDropDown()I
    .locals 12

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-nez v0, :cond_4

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v4, v0}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/DropDownListView;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    new-instance v5, Landroidx/appcompat/widget/ListPopupWindow$3;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_b

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x16

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v7, "7b7098"

    const-wide/32 v10, 0x4ebf05f9

    invoke-static {v4, v7, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/appcompat/widget/ListPopupWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    move v4, v0

    move v0, v1

    :goto_1
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    move v4, v0

    move-object v0, v5

    :goto_2
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v4

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iget-boolean v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v7, v0

    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    move v0, v8

    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-direct {p0, v4, v5, v0}, Landroidx/appcompat/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_6

    :cond_2
    add-int v0, v4, v7

    :goto_6
    return v0

    :pswitch_0
    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v0, v2

    move v4, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    move v6, v4

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    goto :goto_4

    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v0, :pswitch_data_1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_7
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    sub-int/2addr v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    add-int/2addr v6, v1

    :cond_7
    add-int/2addr v0, v6

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_7

    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    sub-int/2addr v0, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v7, v0

    goto/16 :goto_4

    :cond_a
    move v6, v2

    goto/16 :goto_3

    :cond_b
    move v4, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x7et
        0xct
        0x41t
        0x51t
        0x55t
        0x51t
        0x53t
        0x42t
        0x5ft
        0x59t
        0x57t
        0x4ct
        0x17t
        0x12t
        0x58t
        0x43t
        0x50t
        0x4ct
        0x5et
        0xdt
        0x59t
        0x10t
    .end array-data

    nop

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->TAG:Ljava/lang/String;

    const/16 v1, 0x68

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6eebbd"

    invoke-static {v1, v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x75t
        0xat
        0x10t
        0xet
        0x6t
        0x44t
        0x58t
        0xat
        0x11t
        0x42t
        0x1t
        0x5t
        0x5at
        0x9t
        0x45t
        0x5t
        0x7t
        0x10t
        0x7bt
        0x4t
        0x1dt
        0x23t
        0x14t
        0x5t
        0x5ft
        0x9t
        0x4t
        0x0t
        0xet
        0x1t
        0x7et
        0x0t
        0xct
        0x5t
        0xat
        0x10t
        0x7bt
        0x0t
        0x11t
        0xat
        0xdt
        0x0t
        0x1et
        0x33t
        0xct
        0x7t
        0x15t
        0x48t
        0x16t
        0xct
        0xbt
        0x16t
        0x4et
        0x44t
        0x54t
        0xat
        0xat
        0xet
        0x7t
        0x5t
        0x58t
        0x4ct
        0x45t
        0xdt
        0xct
        0x44t
        0x66t
        0xat
        0x15t
        0x17t
        0x12t
        0x33t
        0x5ft
        0xbt
        0x1t
        0xdt
        0x15t
        0x4at
        0x16t
        0x30t
        0x16t
        0xbt
        0xct
        0x3t
        0x16t
        0x11t
        0xdt
        0x7t
        0x42t
        0x14t
        0x43t
        0x7t
        0x9t
        0xbt
        0x1t
        0x44t
        0x40t
        0x0t
        0x17t
        0x11t
        0xbt
        0xbt
        0x58t
        0x4bt
    .end array-data
.end method

.method private static isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->TAG:Ljava/lang/String;

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f9dcea"

    const/16 v3, 0x4bfe

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    goto :goto_0

    :array_0
    .array-data 1
        0x25t
        0x56t
        0x11t
        0xft
        0x1t
        0x41t
        0x8t
        0x56t
        0x10t
        0x43t
        0x6t
        0x0t
        0xat
        0x55t
        0x44t
        0x10t
        0x0t
        0x15t
        0x25t
        0x55t
        0xdt
        0x13t
        0x31t
        0xet
        0x35t
        0x5at
        0x16t
        0x6t
        0x0t
        0xft
        0x23t
        0x57t
        0x5t
        0x1t
        0x9t
        0x4t
        0x2t
        0x11t
        0x4dt
        0x43t
        0xat
        0xft
        0x46t
        0x69t
        0xbt
        0x13t
        0x10t
        0x11t
        0x31t
        0x50t
        0xat
        0x7t
        0xat
        0x16t
        0x48t
        0x19t
        0x2bt
        0xbt
        0x45t
        0x16t
        0x3t
        0x55t
        0x8t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x3e

    if-eq p1, v2, :cond_7

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v2

    if-gez v2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v3, 0x7fffffff

    const/high16 v2, -0x80000000

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    if-ne p1, v7, :cond_2

    if-le v4, v3, :cond_3

    :cond_2
    if-nez v5, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v4, v2, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :goto_2
    :sswitch_0
    return v0

    :cond_4
    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v3, v1, v0}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6, v1}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v2

    goto :goto_1

    :cond_6
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    if-ne p1, v8, :cond_9

    if-ne v4, v2, :cond_7

    goto :goto_2

    :cond_9
    if-nez v5, :cond_7

    if-ne p1, v7, :cond_7

    if-ne v4, v3, :cond_7

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 4

    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x48

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b6a11"

    const v3, -0x31bbd388    # -8.2281216E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x78t
        0xct
        0x40t
        0x0t
        0x5dt
        0x58t
        0x55t
        0x42t
        0x5et
        0x4t
        0x58t
        0x56t
        0x59t
        0x16t
        0x18t
        0x41t
        0x7ct
        0x44t
        0x42t
        0x16t
        0x16t
        0x3t
        0x54t
        0x11t
        0x50t
        0x42t
        0x46t
        0xet
        0x42t
        0x58t
        0x45t
        0xbt
        0x40t
        0x4t
        0x11t
        0x47t
        0x50t
        0xet
        0x43t
        0x4t
        0x1dt
        0x11t
        0x7ct
        0x23t
        0x62t
        0x22t
        0x79t
        0x6et
        0x61t
        0x23t
        0x64t
        0x24t
        0x7ft
        0x65t
        0x1dt
        0x42t
        0x59t
        0x13t
        0x11t
        0x66t
        0x63t
        0x23t
        0x66t
        0x3et
        0x72t
        0x7et
        0x7ft
        0x36t
        0x73t
        0x2ft
        0x65t
        0x1ft
    .end array-data
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    return-void
.end method

.method public show()V
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v6

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v0, v4}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_4

    move v4, v5

    :goto_1
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_a

    if-eqz v6, :cond_6

    :goto_2
    if-eqz v6, :cond_8

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_7

    move v0, v5

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v4, :cond_3

    move v4, v5

    :cond_3
    if-gez v6, :cond_17

    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    move v4, v0

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_9

    move v0, v5

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    if-ne v0, v7, :cond_b

    move v6, v2

    goto :goto_4

    :cond_b
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    move v6, v0

    goto :goto_4

    :cond_c
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_12

    move v0, v5

    :goto_7
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v5, :cond_14

    move v2, v5

    :cond_d
    :goto_8
    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_15

    move v0, v3

    :goto_9
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-static {v0, v2}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_16

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v7, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_a
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    :cond_11
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_12
    if-ne v0, v7, :cond_13

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto/16 :goto_7

    :cond_13
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    goto/16 :goto_7

    :cond_14
    if-eq v4, v7, :cond_d

    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    goto/16 :goto_8

    :cond_15
    move v0, v1

    goto :goto_9

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/appcompat/widget/ListPopupWindow;->TAG:Ljava/lang/String;

    const/16 v4, 0x32

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v6, "bc3075"

    invoke-static {v4, v6, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_17
    move v5, v6

    goto/16 :goto_5

    :array_0
    .array-data 1
        0x21t
        0xct
        0x46t
        0x5ct
        0x53t
        0x15t
        0xct
        0xct
        0x47t
        0x10t
        0x5et
        0x5bt
        0x14t
        0xct
        0x58t
        0x55t
        0x17t
        0x46t
        0x7t
        0x17t
        0x76t
        0x40t
        0x5et
        0x56t
        0x7t
        0xdt
        0x47t
        0x55t
        0x45t
        0x77t
        0xdt
        0x16t
        0x5dt
        0x54t
        0x44t
        0x15t
        0xdt
        0xdt
        0x13t
        0x60t
        0x58t
        0x45t
        0x17t
        0x13t
        0x64t
        0x59t
        0x59t
        0x51t
        0xdt
        0x14t
    .end array-data
.end method
