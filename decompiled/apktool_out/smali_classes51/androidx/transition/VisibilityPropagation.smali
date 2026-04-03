.class public abstract Landroidx/transition/VisibilityPropagation;
.super Landroidx/transition/TransitionPropagation;


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String;

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String;

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v2, 0x28

    const/16 v5, 0x24

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "62712c"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/VisibilityPropagation;->PROPNAME_VIEW_CENTER:Ljava/lang/String;

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "eb1360"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/VisibilityPropagation;->PROPNAME_VISIBILITY:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    const-string v2, "21af39"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "5830ff"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x57t
        0x5ct
        0x53t
        0x43t
        0x5dt
        0xat
        0x52t
        0x8t
        0x41t
        0x58t
        0x41t
        0xat
        0x54t
        0x5bt
        0x5bt
        0x58t
        0x46t
        0x1at
        0x66t
        0x40t
        0x58t
        0x41t
        0x53t
        0x4t
        0x57t
        0x46t
        0x5et
        0x5et
        0x5ct
        0x59t
        0x55t
        0x57t
        0x59t
        0x45t
        0x57t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0xct
        0x55t
        0x41t
        0x59t
        0x59t
        0x1t
        0x58t
        0x47t
        0x5at
        0x45t
        0x59t
        0x7t
        0xbt
        0x5dt
        0x5at
        0x42t
        0x49t
        0x35t
        0x10t
        0x5et
        0x43t
        0x57t
        0x57t
        0x4t
        0x16t
        0x58t
        0x5ct
        0x58t
        0xat
        0x13t
        0xbt
        0x42t
        0x5at
        0x54t
        0x59t
        0x9t
        0xbt
        0x45t
        0x4at
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x5ft
        0x5t
        0x14t
        0x5ct
        0x50t
        0x56t
        0xbt
        0x17t
        0xft
        0x40t
        0x50t
        0x50t
        0x58t
        0xdt
        0xft
        0x47t
        0x40t
        0x62t
        0x43t
        0xet
        0x16t
        0x52t
        0x5et
        0x53t
        0x45t
        0x8t
        0x9t
        0x5dt
        0x3t
        0x44t
        0x58t
        0x12t
        0xft
        0x51t
        0x50t
        0x5et
        0x58t
        0x15t
        0x1ft
    .end array-data

    :array_3
    .array-data 1
        0x54t
        0x56t
        0x57t
        0x42t
        0x9t
        0xft
        0x51t
        0x2t
        0x45t
        0x59t
        0x15t
        0xft
        0x57t
        0x51t
        0x5ft
        0x59t
        0x12t
        0x1ft
        0x65t
        0x4at
        0x5ct
        0x40t
        0x7t
        0x1t
        0x54t
        0x4ct
        0x5at
        0x5ft
        0x8t
        0x5ct
        0x56t
        0x5dt
        0x5dt
        0x44t
        0x3t
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/TransitionPropagation;-><init>()V

    return-void
.end method

.method private static getViewCoordinate(Landroidx/transition/TransitionValues;I)I
    .locals 3

    const/4 v1, -0x1

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/VisibilityPropagation;->PROPNAME_VIEW_CENTER:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c55f9d"

    const/16 v4, 0x257

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/VisibilityPropagation;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v6

    aget v2, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v6

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/VisibilityPropagation;->PROPNAME_VIEW_CENTER:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x2t
        0x5bt
        0x51t
        0x14t
        0x56t
        0xdt
        0x7t
        0xft
        0x43t
        0xft
        0x4at
        0xdt
        0x1t
        0x5ct
        0x59t
        0xft
        0x4dt
        0x1dt
        0x59t
        0x43t
        0x5ct
        0x15t
        0x50t
        0x6t
        0xat
        0x59t
        0x5ct
        0x12t
        0x40t
    .end array-data
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public getViewVisibility(Landroidx/transition/TransitionValues;)I
    .locals 3

    const/16 v1, 0x8

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/VisibilityPropagation;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getViewX(Landroidx/transition/TransitionValues;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method

.method public getViewY(Landroidx/transition/TransitionValues;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method
