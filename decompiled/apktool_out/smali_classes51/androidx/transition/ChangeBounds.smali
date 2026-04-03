.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String;

.field private static final PROPNAME_CLIP:Ljava/lang/String;

.field private static final PROPNAME_PARENT:Ljava/lang/String;

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String;

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String;

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x7

    const/16 v9, 0x1c

    const/16 v8, 0x1b

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "bda056"

    const v2, 0x4ce1b93f    # 1.18344184E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->PROPNAME_BOUNDS:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "01a242"

    const-wide v2, 0x41aa5c8fe2000000L    # 2.21136881E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->PROPNAME_CLIP:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_2

    const-string v1, "c63b7b"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->PROPNAME_PARENT:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_3

    const-string v1, "e0e832"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_X:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_4

    const-string v1, "fc47cb"

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_Y:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_5

    const-string v2, "ce1f0a"

    const-wide v4, -0x3e24beb498400000L    # -1.829055903E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "0e524f"

    const/16 v3, -0x5c0d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-array v2, v8, [B

    fill-array-data v2, :array_7

    const-string v3, "fe2343"

    const-wide/32 v4, 0x37e36e7f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v9, [B

    fill-array-data v2, :array_8

    const-string v3, "e99087"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [B

    fill-array-data v2, :array_9

    const-string v3, "6694b6"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroidx/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "461899"

    const-wide/32 v4, 0x568fdb6c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    new-array v2, v10, [B

    fill-array-data v2, :array_b

    const-string v3, "411456"

    const-wide/32 v4, 0x75bf5be8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "c5e516"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const-string v3, "1e5c5d"

    const-wide/32 v4, -0x4f2f5de7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    new-array v2, v10, [B

    fill-array-data v2, :array_e

    const-string v3, "22d8a1"

    const v4, 0x4e0bf920    # 5.870899E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v3, "f15ba1"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroidx/transition/RectEvaluator;

    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0xat
        0x5t
        0x42t
        0x5at
        0x5ft
        0x6t
        0x5et
        0x2t
        0x58t
        0x54t
        0x58t
        0x5t
        0x1t
        0x23t
        0x5ft
        0x40t
        0x58t
        0x6t
        0x17t
        0x5bt
        0x52t
        0x5at
        0x43t
        0xct
        0x0t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x5ft
        0x5t
        0x40t
        0x5bt
        0x5bt
        0x54t
        0xbt
        0x2t
        0x5at
        0x55t
        0x5ct
        0x57t
        0x54t
        0x23t
        0x5dt
        0x41t
        0x5ct
        0x54t
        0x42t
        0x5bt
        0x51t
        0x58t
        0x5bt
        0x40t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x58t
        0x57t
        0x10t
        0x58t
        0xbt
        0x7t
        0xct
        0x50t
        0xat
        0x56t
        0xct
        0x4t
        0x53t
        0x71t
        0xdt
        0x42t
        0xct
        0x7t
        0x45t
        0x9t
        0x12t
        0x56t
        0x10t
        0x6t
        0x58t
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x4t
        0x5et
        0x1t
        0x4at
        0x5ct
        0x5bt
        0x1t
        0xat
        0x6t
        0x50t
        0x52t
        0x5ct
        0x2t
        0x55t
        0x27t
        0x57t
        0x46t
        0x5ct
        0x1t
        0x43t
        0x5ft
        0x4ft
        0x5at
        0x5ct
        0x1t
        0x5ft
        0x12t
        0x60t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0xdt
        0x50t
        0x45t
        0xct
        0xbt
        0x2t
        0x59t
        0x57t
        0x5ft
        0x2t
        0xct
        0x1t
        0x6t
        0x76t
        0x58t
        0x16t
        0xct
        0x2t
        0x10t
        0xet
        0x40t
        0xat
        0xct
        0x2t
        0xct
        0x43t
        0x6et
    .end array-data

    :array_5
    .array-data 1
        0x2t
        0xbt
        0x55t
        0x14t
        0x5ft
        0x8t
        0x7t
        0x5ft
        0x52t
        0xet
        0x51t
        0xft
        0x4t
        0x0t
        0x73t
        0x9t
        0x45t
        0xft
        0x7t
        0x16t
        0xbt
        0x4t
        0x5ft
        0x14t
        0xdt
        0x1t
        0x42t
    .end array-data

    :array_6
    .array-data 1
        0x51t
        0xbt
        0x51t
        0x40t
        0x5bt
        0xft
        0x54t
        0x5ft
        0x56t
        0x5at
        0x55t
        0x8t
        0x57t
        0x0t
        0x77t
        0x5dt
        0x41t
        0x8t
        0x54t
        0x16t
        0xft
        0x51t
        0x58t
        0xft
        0x40t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x7t
        0xbt
        0x56t
        0x41t
        0x5bt
        0x5at
        0x2t
        0x5ft
        0x51t
        0x5bt
        0x55t
        0x5dt
        0x1t
        0x0t
        0x70t
        0x5ct
        0x41t
        0x5dt
        0x2t
        0x16t
        0x8t
        0x43t
        0x55t
        0x41t
        0x3t
        0xbt
        0x46t
    .end array-data

    :array_8
    .array-data 1
        0x4t
        0x57t
        0x5dt
        0x42t
        0x57t
        0x5et
        0x1t
        0x3t
        0x5at
        0x58t
        0x59t
        0x59t
        0x2t
        0x5ct
        0x7bt
        0x5ft
        0x4dt
        0x59t
        0x1t
        0x4at
        0x3t
        0x47t
        0x51t
        0x59t
        0x1t
        0x56t
        0x4et
        0x68t
    .end array-data

    :array_9
    .array-data 1
        0x57t
        0x58t
        0x5dt
        0x46t
        0xdt
        0x5ft
        0x52t
        0xct
        0x5at
        0x5ct
        0x3t
        0x58t
        0x51t
        0x53t
        0x7bt
        0x5bt
        0x17t
        0x58t
        0x52t
        0x45t
        0x3t
        0x43t
        0xbt
        0x58t
        0x52t
        0x59t
        0x4et
        0x6dt
    .end array-data

    :array_a
    .array-data 1
        0x56t
        0x59t
        0x44t
        0x56t
        0x5dt
        0x4at
        0x7bt
        0x44t
        0x58t
        0x5ft
        0x50t
        0x57t
    .end array-data

    :array_b
    .array-data 1
        0x40t
        0x5et
        0x41t
        0x78t
        0x50t
        0x50t
        0x40t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x5at
        0x11t
        0x41t
        0x5et
        0x5bt
        0x31t
        0x5ct
        0x2t
        0x5dt
        0x45t
    .end array-data

    :array_d
    .array-data 1
        0x53t
        0xat
        0x41t
        0x17t
        0x5at
        0x9t
        0x63t
        0xct
        0x52t
        0xbt
        0x41t
    .end array-data

    :array_e
    .array-data 1
        0x46t
        0x5dt
        0x14t
        0x74t
        0x4t
        0x57t
        0x46t
    .end array-data

    :array_f
    .array-data 1
        0x16t
        0x5et
        0x46t
        0xbt
        0x15t
        0x58t
        0x9t
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    iput-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    iput-boolean v3, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v3, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    sget-object v0, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4905e6"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1, v3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroidx/transition/ChangeBounds;->setResizeClip(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x46t
        0x5ct
        0x43t
        0x5ct
        0x1ft
        0x53t
        0x77t
        0x55t
        0x59t
        0x45t
    .end array-data
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 8

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeBounds;->PROPNAME_BOUNDS:Ljava/lang/String;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeBounds;->PROPNAME_PARENT:Ljava/lang/String;

    iget-object v3, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_X:Ljava/lang/String;

    iget-object v3, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_Y:Ljava/lang/String;

    iget-object v3, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeBounds;->PROPNAME_CLIP:Ljava/lang/String;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v2

    if-nez v2, :cond_2

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v4, Landroidx/transition/ChangeBounds;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v4, Landroidx/transition/ChangeBounds;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget-object v4, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroidx/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeBounds;->PROPNAME_BOUNDS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v5, Landroidx/transition/ChangeBounds;->PROPNAME_BOUNDS:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v13, v11

    sub-int v16, v14, v12

    sub-int v17, v8, v6

    sub-int v18, v9, v7

    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeBounds;->PROPNAME_CLIP:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v5, Landroidx/transition/ChangeBounds;->PROPNAME_CLIP:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-eqz v15, :cond_4

    if-nez v16, :cond_5

    :cond_4
    if-eqz v17, :cond_8

    if-eqz v18, :cond_8

    :cond_5
    if-ne v11, v6, :cond_6

    if-eq v12, v7, :cond_1a

    :cond_6
    const/4 v3, 0x1

    :goto_1
    if-ne v13, v8, :cond_7

    if-eq v14, v9, :cond_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    if-nez v2, :cond_b

    if-eqz v5, :cond_b

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    if-lez v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-nez v10, :cond_10

    invoke-static {v4, v11, v12, v13, v14}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    const/4 v2, 0x2

    if-ne v3, v2, :cond_d

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v11

    int-to-float v5, v12

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v4, v3, v2}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_15

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    new-instance v4, Landroidx/transition/ChangeBounds$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/transition/ChangeBounds;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-object v2, v3

    goto/16 :goto_0

    :cond_c
    new-instance v2, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v2, v4}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v5, v11

    int-to-float v10, v12

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-virtual {v3, v5, v10, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v5, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v5, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v6, v13

    int-to-float v7, v14

    int-to-float v8, v8

    int-to-float v9, v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v6, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v6, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v5, Landroidx/transition/ChangeBounds$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_d
    if-ne v11, v6, :cond_e

    if-eq v12, v7, :cond_f

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v11

    int-to-float v5, v12

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v4, v3, v2}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v13

    int-to-float v5, v14

    int-to-float v6, v8

    int-to-float v7, v9

    invoke-virtual {v2, v3, v5, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v4, v3, v2}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto/16 :goto_2

    :cond_10
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v11

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v12

    invoke-static {v4, v11, v12, v3, v10}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    const/4 v3, 0x0

    if-ne v11, v6, :cond_11

    if-eq v12, v7, :cond_19

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v10, v11

    int-to-float v11, v12

    int-to-float v12, v6

    int-to-float v13, v7

    invoke-virtual {v3, v10, v11, v12, v13}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v10, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v4, v10, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object v11, v3

    :goto_3
    if-nez v2, :cond_18

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v10, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v3, v10, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v2

    :goto_4
    if-nez v5, :cond_17

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v12, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v3, v12, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-static {v4, v10}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v12, "dcecdd"

    const/16 v13, 0x55cc

    invoke-static {v3, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v10, 0x1

    aput-object v2, v13, v10

    invoke-static {v4, v3, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v2, Landroidx/transition/ChangeBounds$8;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v10

    :goto_6
    invoke-static {v11, v2}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_X:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v5, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_Y:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p3

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v6, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_X:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p3

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v7, Landroidx/transition/ChangeBounds;->PROPNAME_WINDOW_Y:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v6, :cond_13

    if-eq v5, v2, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v10

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    move-result-object v7

    invoke-interface {v7, v8}, Landroidx/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    sub-int/2addr v3, v9

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    sub-int/2addr v5, v9

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    sub-int/2addr v6, v9

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    sub-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {v7, v3, v5, v6, v2}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    invoke-static {v6, v2}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v5, Landroidx/transition/ChangeBounds$10;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroidx/transition/ChangeBounds$10;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_15
    move-object v2, v3

    goto/16 :goto_0

    :cond_16
    move-object v2, v3

    goto/16 :goto_6

    :cond_17
    move-object v2, v5

    goto/16 :goto_5

    :cond_18
    move-object v10, v2

    goto/16 :goto_4

    :cond_19
    move-object v11, v3

    goto/16 :goto_3

    :cond_1a
    move v3, v10

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x7t
        0xft
        0xct
        0x13t
        0x26t
        0xbt
        0x11t
        0xdt
        0x1t
        0x10t
    .end array-data
.end method

.method public getResizeClip()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method
