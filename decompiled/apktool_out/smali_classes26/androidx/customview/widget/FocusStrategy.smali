.class Landroidx/customview/widget/FocusStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/FocusStrategy$BoundsAdapter;,
        Landroidx/customview/widget/FocusStrategy$CollectionAdapter;,
        Landroidx/customview/widget/FocusStrategy$SequentialComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x11

    if-eq p0, v2, :cond_2

    const/16 v2, 0x42

    if-eq p0, v2, :cond_2

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    if-ge v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "919607"

    const-wide v4, 0x41df0f7d2dc00000L    # 2.084435127E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 1
        0x5dt
        0x58t
        0x4bt
        0x53t
        0x53t
        0x43t
        0x50t
        0x5et
        0x57t
        0x16t
        0x5dt
        0x42t
        0x4at
        0x45t
        0x19t
        0x54t
        0x55t
        0x17t
        0x56t
        0x5ft
        0x5ct
        0x16t
        0x5ft
        0x51t
        0x19t
        0x4at
        0x7ft
        0x79t
        0x73t
        0x62t
        0x6at
        0x6et
        0x6ct
        0x66t
        0x1ct
        0x17t
        0x7ft
        0x7et
        0x7at
        0x63t
        0x63t
        0x68t
        0x7dt
        0x7et
        0x6et
        0x78t
        0x1ct
        0x17t
        0x7ft
        0x7et
        0x7at
        0x63t
        0x63t
        0x68t
        0x75t
        0x74t
        0x7ft
        0x62t
        0x1ct
        0x17t
        0x7ft
        0x7et
        0x7at
        0x63t
        0x63t
        0x68t
        0x6bt
        0x78t
        0x7et
        0x7et
        0x64t
        0x4at
        0x17t
    .end array-data
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sparse-switch p5, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e579b8"

    const-wide/32 v4, -0x4238a86c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-interface {p1, p0, v2}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_1

    :cond_0
    move-object v0, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0, v5}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p5, p4, v5, v3}, Landroidx/customview/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x1t
        0x5ct
        0x45t
        0x5ct
        0x1t
        0x4ct
        0xct
        0x5at
        0x59t
        0x19t
        0xft
        0x4dt
        0x16t
        0x41t
        0x17t
        0x5bt
        0x7t
        0x18t
        0xat
        0x5bt
        0x52t
        0x19t
        0xdt
        0x5et
        0x45t
        0x4et
        0x71t
        0x76t
        0x21t
        0x6dt
        0x36t
        0x6at
        0x62t
        0x69t
        0x4et
        0x18t
        0x23t
        0x7at
        0x74t
        0x6ct
        0x31t
        0x67t
        0x21t
        0x7at
        0x60t
        0x77t
        0x4et
        0x18t
        0x23t
        0x7at
        0x74t
        0x6ct
        0x31t
        0x67t
        0x29t
        0x70t
        0x71t
        0x6dt
        0x4et
        0x18t
        0x23t
        0x7at
        0x74t
        0x6ct
        0x31t
        0x67t
        0x37t
        0x7ct
        0x70t
        0x71t
        0x36t
        0x45t
        0x4bt
    .end array-data
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;IZZ)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, p0, v0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    invoke-direct {v0, p5, p2}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    packed-switch p4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b4741d"

    const/16 v3, 0x15e8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p3, v2, p6}, Landroidx/customview/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    invoke-static {p3, v2, p6}, Landroidx/customview/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x6t
        0x5dt
        0x45t
        0x51t
        0x52t
        0x10t
        0xbt
        0x5bt
        0x59t
        0x14t
        0x5ct
        0x11t
        0x11t
        0x40t
        0x17t
        0x56t
        0x54t
        0x44t
        0xdt
        0x5at
        0x52t
        0x14t
        0x5et
        0x2t
        0x42t
        0x4ft
        0x71t
        0x7bt
        0x72t
        0x31t
        0x31t
        0x6bt
        0x71t
        0x7bt
        0x63t
        0x33t
        0x23t
        0x66t
        0x73t
        0x18t
        0x11t
        0x22t
        0x2dt
        0x77t
        0x62t
        0x67t
        0x6et
        0x26t
        0x23t
        0x77t
        0x7ct
        0x63t
        0x70t
        0x36t
        0x26t
        0x49t
        0x19t
    .end array-data
.end method

.method private static getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-lez v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-lez v1, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getWeightedDistanceFor(II)I
    .locals 2

    mul-int/lit8 v0, p0, 0xd

    mul-int/2addr v0, p0

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p3, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1, p2, p3}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1, p3, p2}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3e15e6"

    const v3, 0x4ed246b6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x57t
        0xct
        0x43t
        0x50t
        0x6t
        0x42t
        0x5at
        0xat
        0x5ft
        0x15t
        0x8t
        0x43t
        0x40t
        0x11t
        0x11t
        0x57t
        0x0t
        0x16t
        0x5ct
        0xbt
        0x54t
        0x15t
        0xat
        0x50t
        0x13t
        0x1et
        0x77t
        0x7at
        0x26t
        0x63t
        0x60t
        0x3at
        0x64t
        0x65t
        0x49t
        0x16t
        0x75t
        0x2at
        0x72t
        0x60t
        0x36t
        0x69t
        0x77t
        0x2at
        0x66t
        0x7bt
        0x49t
        0x16t
        0x75t
        0x2at
        0x72t
        0x60t
        0x36t
        0x69t
        0x7ft
        0x20t
        0x77t
        0x61t
        0x49t
        0x16t
        0x75t
        0x2at
        0x72t
        0x60t
        0x36t
        0x69t
        0x61t
        0x2ct
        0x76t
        0x7dt
        0x31t
        0x4bt
        0x1dt
    .end array-data
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "602b3a"

    const/16 v3, -0xec4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    goto :goto_0

    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x52t
        0x59t
        0x40t
        0x7t
        0x50t
        0x15t
        0x5ft
        0x5ft
        0x5ct
        0x42t
        0x5et
        0x14t
        0x45t
        0x44t
        0x12t
        0x0t
        0x56t
        0x41t
        0x59t
        0x5et
        0x57t
        0x42t
        0x5ct
        0x7t
        0x16t
        0x4bt
        0x74t
        0x2dt
        0x70t
        0x34t
        0x65t
        0x6ft
        0x67t
        0x32t
        0x1ft
        0x41t
        0x70t
        0x7ft
        0x71t
        0x37t
        0x60t
        0x3et
        0x72t
        0x7ft
        0x65t
        0x2ct
        0x1ft
        0x41t
        0x70t
        0x7ft
        0x71t
        0x37t
        0x60t
        0x3et
        0x7at
        0x75t
        0x74t
        0x36t
        0x1ft
        0x41t
        0x70t
        0x7ft
        0x71t
        0x37t
        0x60t
        0x3et
        0x64t
        0x79t
        0x75t
        0x2at
        0x67t
        0x1ct
        0x18t
    .end array-data
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "66597d"

    const/16 v3, 0x7219

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x52t
        0x5ft
        0x47t
        0x5ct
        0x54t
        0x10t
        0x5ft
        0x59t
        0x5bt
        0x19t
        0x5at
        0x11t
        0x45t
        0x42t
        0x15t
        0x5bt
        0x52t
        0x44t
        0x59t
        0x58t
        0x50t
        0x19t
        0x58t
        0x2t
        0x16t
        0x4dt
        0x73t
        0x76t
        0x74t
        0x31t
        0x65t
        0x69t
        0x60t
        0x69t
        0x1bt
        0x44t
        0x70t
        0x79t
        0x76t
        0x6ct
        0x64t
        0x3bt
        0x72t
        0x79t
        0x62t
        0x77t
        0x1bt
        0x44t
        0x70t
        0x79t
        0x76t
        0x6ct
        0x64t
        0x3bt
        0x7at
        0x73t
        0x73t
        0x6dt
        0x1bt
        0x44t
        0x70t
        0x79t
        0x76t
        0x6ct
        0x64t
        0x3bt
        0x64t
        0x7ft
        0x72t
        0x71t
        0x63t
        0x19t
        0x18t
    .end array-data
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "03ab3d"

    const-wide/32 v4, 0x62d242b0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x54t
        0x5at
        0x13t
        0x7t
        0x50t
        0x10t
        0x59t
        0x5ct
        0xft
        0x42t
        0x5et
        0x11t
        0x43t
        0x47t
        0x41t
        0x0t
        0x56t
        0x44t
        0x5ft
        0x5dt
        0x4t
        0x42t
        0x5ct
        0x2t
        0x10t
        0x48t
        0x27t
        0x2dt
        0x70t
        0x31t
        0x63t
        0x6ct
        0x34t
        0x32t
        0x1ft
        0x44t
        0x76t
        0x7ct
        0x22t
        0x37t
        0x60t
        0x3bt
        0x74t
        0x7ct
        0x36t
        0x2ct
        0x1ft
        0x44t
        0x76t
        0x7ct
        0x22t
        0x37t
        0x60t
        0x3bt
        0x7ct
        0x76t
        0x27t
        0x36t
        0x1ft
        0x44t
        0x76t
        0x7ct
        0x22t
        0x37t
        0x60t
        0x3bt
        0x62t
        0x7at
        0x26t
        0x2at
        0x67t
        0x19t
        0x1et
    .end array-data
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2584fc"

    const/16 v3, 0x71f8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    return v0

    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 1
        0x56t
        0x5ct
        0x4at
        0x51t
        0x5t
        0x17t
        0x5bt
        0x5at
        0x56t
        0x14t
        0xbt
        0x16t
        0x41t
        0x41t
        0x18t
        0x56t
        0x3t
        0x43t
        0x5dt
        0x5bt
        0x5dt
        0x14t
        0x9t
        0x5t
        0x12t
        0x4et
        0x7et
        0x7bt
        0x25t
        0x36t
        0x61t
        0x6at
        0x6dt
        0x64t
        0x4at
        0x43t
        0x74t
        0x7at
        0x7bt
        0x61t
        0x35t
        0x3ct
        0x76t
        0x7at
        0x6ft
        0x7at
        0x4at
        0x43t
        0x74t
        0x7at
        0x7bt
        0x61t
        0x35t
        0x3ct
        0x7et
        0x70t
        0x7et
        0x60t
        0x4at
        0x43t
        0x74t
        0x7at
        0x7bt
        0x61t
        0x35t
        0x3ct
        0x60t
        0x7ct
        0x7ft
        0x7ct
        0x32t
        0x1et
        0x1ct
    .end array-data
.end method
