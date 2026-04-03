.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String;

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String;

.field private static final PROPNAME_MATRIX:Ljava/lang/String;

.field private static final PROPNAME_PARENT:Ljava/lang/String;

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String;

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String;

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x24

    const/16 v8, 0x22

    const/16 v6, 0x1e

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "7a92df"

    const-wide v4, -0x3e2b7a547bc00000L    # -1.377218065E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String;

    const/16 v2, 0x30

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e5a2ca"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String;

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "734f08"

    const v4, -0x31d19c22    # -7.314451E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "432bff"

    const v4, 0x4e43d7ed    # 8.21427E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    new-array v2, v9, [B

    fill-array-data v2, :array_4

    const-string v3, "966539"

    const v4, -0x31313fda

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT_MATRIX:Ljava/lang/String;

    new-array v2, v8, [B

    fill-array-data v2, :array_5

    const-string v3, "e854f4"

    const v4, -0x330352c2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_TRANSFORMS:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    new-array v3, v6, [B

    fill-array-data v3, :array_6

    const-string v4, "182d74"

    const-wide v6, -0x3e21456bce000000L    # -2.062176456E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-array v3, v8, [B

    fill-array-data v3, :array_7

    const-string v4, "af09a0"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-array v4, v9, [B

    fill-array-data v4, :array_8

    const-string v5, "5b0b07"

    invoke-static {v4, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sput-object v2, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    new-instance v2, Landroidx/transition/ChangeTransform$1;

    const-class v3, [F

    const/16 v4, 0xf

    new-array v4, v4, [B

    fill-array-data v4, :array_9

    const-string v5, "db7eb6"

    const-wide v6, 0x41d660dc89c00000L    # 1.501786663E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v2, Landroidx/transition/ChangeTransform$2;

    const-class v3, Landroid/graphics/PointF;

    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_a

    const-string v5, "ea3e65"

    const v6, -0x328cd014    # -2.5500026E8f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x56t
        0xft
        0x5dt
        0x40t
        0xbt
        0xft
        0x53t
        0x5bt
        0x5at
        0x5at
        0x5t
        0x8t
        0x50t
        0x4t
        0x6dt
        0x40t
        0x5t
        0x8t
        0x44t
        0x7t
        0x56t
        0x40t
        0x9t
        0x5ct
        0x5et
        0xft
        0x4dt
        0x57t
        0x16t
        0xbt
        0x52t
        0x5t
        0x50t
        0x53t
        0x10t
        0x3t
        0x7at
        0x0t
        0x4dt
        0x40t
        0xdt
        0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x5bt
        0x5t
        0x40t
        0xct
        0x8t
        0x1t
        0xft
        0x2t
        0x5at
        0x2t
        0xft
        0x2t
        0x50t
        0x35t
        0x40t
        0x2t
        0xft
        0x16t
        0x53t
        0xet
        0x40t
        0xet
        0x5bt
        0xct
        0x5bt
        0x15t
        0x57t
        0x11t
        0xct
        0x0t
        0x51t
        0x8t
        0x53t
        0x17t
        0x4t
        0x35t
        0x54t
        0x13t
        0x57t
        0xdt
        0x15t
        0x28t
        0x54t
        0x15t
        0x40t
        0xat
        0x19t
    .end array-data

    :array_2
    .array-data 1
        0x56t
        0x5dt
        0x50t
        0x14t
        0x5ft
        0x51t
        0x53t
        0x9t
        0x57t
        0xet
        0x51t
        0x56t
        0x50t
        0x56t
        0x60t
        0x14t
        0x51t
        0x56t
        0x44t
        0x55t
        0x5bt
        0x14t
        0x5dt
        0x2t
        0x5at
        0x52t
        0x40t
        0x14t
        0x59t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x5dt
        0x56t
        0x10t
        0x9t
        0xft
        0x50t
        0x9t
        0x51t
        0xat
        0x7t
        0x8t
        0x53t
        0x56t
        0x66t
        0x10t
        0x7t
        0x8t
        0x47t
        0x55t
        0x5dt
        0x10t
        0xbt
        0x5ct
        0x44t
        0x52t
        0x40t
        0x7t
        0x8t
        0x12t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x58t
        0x58t
        0x52t
        0x47t
        0x5ct
        0x50t
        0x5dt
        0xct
        0x55t
        0x5dt
        0x52t
        0x57t
        0x5et
        0x53t
        0x62t
        0x47t
        0x52t
        0x57t
        0x4at
        0x50t
        0x59t
        0x47t
        0x5et
        0x3t
        0x49t
        0x57t
        0x44t
        0x50t
        0x5dt
        0x4dt
        0x74t
        0x57t
        0x42t
        0x47t
        0x5at
        0x41t
    .end array-data

    :array_5
    .array-data 1
        0x4t
        0x56t
        0x51t
        0x46t
        0x9t
        0x5dt
        0x1t
        0x2t
        0x56t
        0x5ct
        0x7t
        0x5at
        0x2t
        0x5dt
        0x61t
        0x46t
        0x7t
        0x5at
        0x16t
        0x5et
        0x5at
        0x46t
        0xbt
        0xet
        0x11t
        0x4at
        0x54t
        0x5at
        0x15t
        0x52t
        0xat
        0x4at
        0x58t
        0x47t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x50t
        0x56t
        0x56t
        0x16t
        0x58t
        0x5dt
        0x55t
        0x2t
        0x51t
        0xct
        0x56t
        0x5at
        0x56t
        0x5dt
        0x66t
        0x16t
        0x56t
        0x5at
        0x42t
        0x5et
        0x5dt
        0x16t
        0x5at
        0xet
        0x5ct
        0x59t
        0x46t
        0x16t
        0x5et
        0x4ct
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x8t
        0x54t
        0x4bt
        0xet
        0x59t
        0x5t
        0x5ct
        0x53t
        0x51t
        0x0t
        0x5et
        0x6t
        0x3t
        0x64t
        0x4bt
        0x0t
        0x5et
        0x12t
        0x0t
        0x5ft
        0x4bt
        0xct
        0xat
        0x15t
        0x14t
        0x51t
        0x57t
        0x12t
        0x56t
        0xet
        0x14t
        0x5dt
        0x4at
    .end array-data

    nop

    :array_8
    .array-data 1
        0x54t
        0xct
        0x54t
        0x10t
        0x5ft
        0x5et
        0x51t
        0x58t
        0x53t
        0xat
        0x51t
        0x59t
        0x52t
        0x7t
        0x64t
        0x10t
        0x51t
        0x59t
        0x46t
        0x4t
        0x5ft
        0x10t
        0x5dt
        0xdt
        0x45t
        0x3t
        0x42t
        0x7t
        0x5et
        0x43t
        0x78t
        0x3t
        0x44t
        0x10t
        0x59t
        0x4ft
    .end array-data

    :array_9
    .array-data 1
        0xat
        0xdt
        0x59t
        0x31t
        0x10t
        0x57t
        0xat
        0x11t
        0x5bt
        0x4t
        0x16t
        0x5ft
        0xbt
        0xct
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x11t
        0x13t
        0x52t
        0xbt
        0x45t
        0x59t
        0x4t
        0x15t
        0x5at
        0xat
        0x58t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    iput-boolean v4, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "30647f"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v4, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "8b8473"

    invoke-static {v0, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, p2, v0, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x55t
        0x46t
        0x55t
        0x45t
        0x3t
        0x5dt
        0x44t
        0x61t
        0x5dt
        0x43t
        0xet
        0x7ct
        0x46t
        0x53t
        0x46t
        0x5bt
        0x7t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x7t
        0x48t
        0x55t
        0x45t
        0x56t
        0x56t
        0x16t
    .end array-data
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/transition/ChangeTransform$Transforms;

    invoke-direct {v0, v1}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_TRANSFORMS:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT_MATRIX:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String;

    sget v3, Landroidx/transition/R$id;->transition_transform:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String;

    sget v3, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 4

    iget-object v1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT_MATRIX:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-direct {v2, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-static {p1, v2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-static {v1, p1, v2}, Landroidx/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v2, v0, v3}, Landroidx/transition/GhostView;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/transition/ChangeTransform$GhostListener;

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 11

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_0
    if-nez v1, :cond_2

    sget-object v3, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_TRANSFORMS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/ChangeTransform$Transforms;

    iget-object v4, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v4}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v6, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v6, v4, v1}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    sget-object v2, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v7, Landroidx/transition/FloatArrayEvaluator;

    const/16 v8, 0x9

    new-array v8, v8, [F

    invoke-direct {v7, v8}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 v8, 0x2

    new-array v8, v8, [[F

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v2, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/transition/ChangeTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v1, v8

    const/4 v9, 0x5

    aget v1, v1, v9

    const/4 v9, 0x2

    aget v9, v0, v9

    const/4 v10, 0x5

    aget v0, v0, v10

    invoke-virtual {v7, v8, v1, v9, v0}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    const/4 v2, 0x1

    sget-object v7, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v7, v0}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v0, Landroidx/transition/ChangeTransform$3;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v7, v0}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object v0, v7

    goto :goto_1

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-ne p1, p2, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1, v1}, Landroidx/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .locals 9

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT_MATRIX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    iget-object v1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v2, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT_MATRIX:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5
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

    if-eqz p3, :cond_0

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0, v1}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v4, Landroidx/transition/ChangeTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeTransform;->PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v4, Landroidx/transition/ChangeTransform;->PROPNAME_PARENT_MATRIX:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0, p2, p3}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    :cond_4
    invoke-direct {p0, p2, p3, v2}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    :cond_6
    sget-boolean v2, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v2, :cond_7

    iget-object v2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public getReparent()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return-void
.end method
