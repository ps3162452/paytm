.class public Landroidx/constraintlayout/widget/ConstraintProperties;
.super Ljava/lang/Object;


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final END:I = 0x7

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x38

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8fdb5a"

    const-wide v4, 0x41d5ebca3e800000L    # 1.471097082E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x77t
        0x8t
        0x8t
        0x1bt
        0x15t
        0x2t
        0x50t
        0xft
        0x8t
        0x6t
        0x47t
        0x4t
        0x56t
        0x46t
        0xbt
        0x4t
        0x15t
        0x22t
        0x57t
        0x8t
        0x17t
        0x16t
        0x47t
        0x0t
        0x51t
        0x8t
        0x10t
        0x2et
        0x54t
        0x18t
        0x57t
        0x13t
        0x10t
        0x4ct
        0x79t
        0x0t
        0x41t
        0x9t
        0x11t
        0x16t
        0x65t
        0x0t
        0x4at
        0x7t
        0x9t
        0x11t
        0x15t
        0x12t
        0x4dt
        0x16t
        0x14t
        0xdt
        0x47t
        0x15t
        0x5dt
        0x2t
    .end array-data
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x5

    const/4 v0, 0x3

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "34c946"

    const-wide/32 v2, 0x31582c02

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c2ad9f"

    const/16 v2, 0x5a4f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    const-string v1, "8c8a4e"

    const-wide/32 v2, -0x60f7a59e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "307787"

    const-wide v2, 0x41daea8ac2800000L    # 1.80631425E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "9165be"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "1dccdb"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    const-string v1, "6c98ba"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "86206b"

    const v2, -0x3274f9bb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x46t
        0x5at
        0x7t
        0x5ct
        0x52t
        0x5ft
        0x5dt
        0x51t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x5ct
        0x5t
    .end array-data

    :array_2
    .array-data 1
        0x4bt
        0x17t
        0x59t
        0x13t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x51t
        0x51t
        0x44t
        0x52t
        0x54t
        0x5et
        0x5dt
        0x55t
    .end array-data

    :array_4
    .array-data 1
        0x5bt
        0x5et
        0x42t
        0x41t
        0xdt
        0x8t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0xbt
        0x13t
    .end array-data

    :array_6
    .array-data 1
        0x44t
        0xat
        0x5et
        0x50t
        0x16t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x54t
        0x53t
        0x54t
        0x44t
    .end array-data
.end method


# virtual methods
.method public addToHorizontalChain(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, p1, v0, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-nez p2, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {p0, v2, p2, v0, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-eqz p1, :cond_0

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0, v2, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public addToHorizontalChainRTL(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x6

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, p1, v0, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-nez p2, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {p0, v2, p2, v0, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-eqz p1, :cond_0

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0, v2, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public addToVerticalChain(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x3

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, p1, v0, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-nez p2, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {p0, v2, p2, v0, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    if-eqz p1, :cond_0

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0, v2, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public alpha(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p0
.end method

.method public apply()V
    .locals 0

    return-void
.end method

.method public center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 6

    const/16 v5, 0x12

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-ltz p3, :cond_6

    if-ltz p6, :cond_5

    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    if-gtz v0, :cond_4

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-virtual {p0, v2, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    :goto_0
    return-object p0

    :cond_1
    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_3

    :cond_2
    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-virtual {p0, v4, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2a9b8b"

    const-wide/32 v4, 0x717c07e0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "25fcde"

    const v3, -0x3163644d    # -1.3137248E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v5, [B

    fill-array-data v1, :array_2

    const-string v2, "df78fb"

    const v3, -0x313c5157

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x50t
        0x8t
        0x58t
        0x11t
        0x18t
        0xft
        0x47t
        0x12t
        0x4dt
        0x42t
        0x5at
        0x7t
        0x12t
        0x3t
        0x5ct
        0x16t
        0x4ft
        0x7t
        0x57t
        0xft
        0x19t
        0x52t
        0x18t
        0x3t
        0x5ct
        0x5t
        0x19t
        0x53t
        0x18t
        0xbt
        0x5ct
        0x2t
        0x55t
        0x17t
        0x4bt
        0xbt
        0x44t
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ft
        0x54t
        0x14t
        0x4t
        0xdt
        0xbt
        0x12t
        0x58t
        0x13t
        0x10t
        0x10t
        0x45t
        0x50t
        0x50t
        0x46t
        0x5dt
        0x44t
        0x55t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x9t
        0x7t
        0x45t
        0x5ft
        0xft
        0xct
        0x44t
        0xbt
        0x42t
        0x4bt
        0x12t
        0x42t
        0x6t
        0x3t
        0x17t
        0x6t
        0x46t
        0x52t
    .end array-data
.end method

.method public centerHorizontally(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_0
    return-object p0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0
.end method

.method public centerHorizontally(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public centerHorizontallyRtl(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_0
    return-object p0

    :cond_0
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0
.end method

.method public centerHorizontallyRtl(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public centerVertically(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_0
    return-object p0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0
.end method

.method public centerVertically(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    return-object p0
.end method

.method public connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 8

    const/4 v5, 0x4

    const/16 v3, 0x9

    const/4 v7, 0x1

    const/16 v6, 0xa

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v3, "e64188"

    const v4, 0x4de82119    # 4.868104E8f

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "1dfd3a"

    const v3, -0x31910a67

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x7

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    const-string v3, "98cc2b"

    const v4, 0x4ec3c215    # 1.6421382E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v2, "4ee5cc"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x6

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_2

    :cond_4
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    const-string v3, "9de976"

    const-wide/32 v4, -0x3ba148e0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v2, "8c7ef3"

    const v3, 0x4ed289dd

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    :cond_5
    const/4 v0, 0x3

    if-ne p3, v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    goto/16 :goto_1

    :cond_6
    if-ne p3, v5, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_3

    :cond_7
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    const-string v3, "b702b8"

    const-wide v4, -0x3e21626529c00000L    # -2.054581081E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v2, "7fc86d"

    invoke-static {v0, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-ne p3, v5, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x3

    if-ne p3, v0, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    goto :goto_4

    :cond_9
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    const-string v3, "8c587c"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_9

    const-string v2, "795621"

    invoke-static {v0, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_a

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_a
    if-ne p3, v5, :cond_b

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    goto :goto_5

    :cond_b
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    const-string v3, "8499cd"

    const/16 v4, 0x5553

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_b

    const-string v2, "f1ef0f"

    const v3, 0x4e3a089d    # 7.8028166E8f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne p3, v7, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x2

    if-ne p3, v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto :goto_6

    :cond_d
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    const-string v3, "f8a882"

    const-wide v4, 0x4190ec56dc000000L    # 7.0981047E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_d

    const-string v2, "496ad1"

    const-wide/32 v4, 0x77b4f3d4

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    if-ne p3, v7, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x2

    if-ne p3, v0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto :goto_7

    :cond_f
    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v3, "a2eb77"

    const/16 v4, 0x52f3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_f

    const-string v2, "66e691"

    const-wide/32 v4, -0x330827c4

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x45t
        0x42t
        0x5bt
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x11t
        0x8t
        0xft
        0x5dt
        0xet
        0x46t
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x4bt
        0x51t
        0x4t
        0xbt
        0x46t
        0x42t
        0x4dt
        0x57t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x14t
        0x10t
        0xbt
        0x51t
        0x6t
        0x5t
        0x5dt
        0xbt
        0x0t
        0x51t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x4bt
        0xdt
        0x2t
        0x51t
        0x43t
        0x16t
        0x4dt
        0xbt
        0x45t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x18t
        0x16t
        0x59t
        0x1t
        0x3t
        0x55t
        0x51t
        0xdt
        0x52t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x10t
        0x5et
        0x57t
        0x5at
        0x16t
        0x18t
        0x16t
        0x58t
        0x10t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x17t
        0x13t
        0xdt
        0x5ct
        0x53t
        0x2t
        0x5et
        0x8t
        0x6t
        0x5ct
    .end array-data

    nop

    :array_8
    .array-data 1
        0x4at
        0xat
        0x52t
        0x50t
        0x43t
        0x43t
        0x4ct
        0xct
        0x15t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x17t
        0x4ct
        0x5bt
        0x52t
        0x57t
        0x57t
        0x5et
        0x57t
        0x50t
        0x52t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x4at
        0x5dt
        0x5et
        0x51t
        0x17t
        0x44t
        0x4ct
        0x5bt
        0x19t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x46t
        0x44t
        0xbt
        0x2t
        0x55t
        0x0t
        0xft
        0x5ft
        0x0t
        0x2t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x14t
        0x51t
        0x6t
        0x50t
        0x4ct
        0x12t
        0x12t
        0x57t
        0x41t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x14t
        0x4ct
        0x58t
        0x5t
        0x1t
        0x57t
        0x5dt
        0x57t
        0x53t
        0x5t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x2dt
        0x57t
        0x3t
        0x16t
        0x17t
        0x43t
        0xet
        0x12t
    .end array-data

    :array_f
    .array-data 1
        0x16t
        0x43t
        0xbt
        0x52t
        0x5ct
        0x57t
        0x5ft
        0x58t
        0x0t
        0x52t
    .end array-data
.end method

.method public constrainDefaultHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    return-object p0
.end method

.method public constrainDefaultWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    return-object p0
.end method

.method public constrainHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public constrainMaxHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    return-object p0
.end method

.method public constrainMaxWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    return-object p0
.end method

.method public constrainMinHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    return-object p0
.end method

.method public constrainMinWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    return-object p0
.end method

.method public constrainWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    return-object p0
.end method

.method public dimensionRatio(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    return-object p0
.end method

.method public elevation(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-object p0
.end method

.method public goneMargin(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 5

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d3222e"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    :goto_0
    return-object p0

    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5fdf9c"

    const v3, -0x3119779c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x11t
        0x5dt
        0x59t
        0x5ct
        0x5dt
        0x12t
        0xat
        0x13t
        0x51t
        0x5dt
        0x5ct
        0x16t
        0x10t
        0x41t
        0x53t
        0x5bt
        0x5ct
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0x7t
        0x17t
        0x3t
        0x55t
        0xat
        0x5bt
        0x3t
        0x44t
        0x2t
        0x56t
        0x6t
        0x46t
        0x46t
        0xat
        0x9t
        0x4dt
        0x43t
        0x46t
        0x13t
        0x14t
        0x16t
        0x56t
        0x11t
        0x41t
        0x46t
        0x9t
        0x7t
        0x4bt
        0x4t
        0x5ct
        0x8t
        0x17t
    .end array-data
.end method

.method public horizontalBias(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    return-object p0
.end method

.method public horizontalChainStyle(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    return-object p0
.end method

.method public horizontalWeight(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    return-object p0
.end method

.method public margin(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 4

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6fe78a"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    :goto_0
    return-object p0

    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "da64ae"

    const v3, 0x4e550cb7    # 8.935951E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x43t
        0x8t
        0xet
        0x59t
        0x57t
        0x16t
        0x58t
        0x46t
        0x6t
        0x58t
        0x56t
        0x12t
        0x42t
        0x14t
        0x4t
        0x5et
        0x56t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x0t
        0x45t
        0x51t
        0xdt
        0xct
        0xat
        0x4t
        0x16t
        0x50t
        0xet
        0x0t
        0x17t
        0x41t
        0x58t
        0x5bt
        0x15t
        0x45t
        0x17t
        0x14t
        0x46t
        0x44t
        0xet
        0x17t
        0x10t
        0x41t
        0x5bt
        0x55t
        0x13t
        0x2t
        0xdt
        0xft
        0x45t
    .end array-data
.end method

.method public removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 4

    const/high16 v2, -0x80000000

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1c1552"

    const/16 v3, 0x7278

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    :goto_0
    return-object p0

    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x44t
        0xdt
        0x5at
        0x5bt
        0x5at
        0x45t
        0x5ft
        0x43t
        0x52t
        0x5at
        0x5bt
        0x41t
        0x45t
        0x11t
        0x50t
        0x5ct
        0x5bt
        0x46t
    .end array-data
.end method

.method public removeFromHorizontalChain()Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_2

    :cond_0
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v1, v6, :cond_8

    if-eq v2, v6, :cond_8

    invoke-virtual {v3, v8, v2, v5, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-virtual {v4, v5, v1, v8, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    :goto_1
    return-object p0

    :cond_2
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v2, v6, :cond_3

    if-eq v3, v6, :cond_4

    :cond_3
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    new-instance v5, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v5, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v2, v6, :cond_5

    if-eq v3, v6, :cond_5

    const/4 v0, 0x7

    invoke-virtual {v4, v0, v3, v9, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 v0, 0x7

    invoke-virtual {v5, v9, v1, v0, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_4
    :goto_2
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_6

    if-eq v3, v6, :cond_4

    :cond_6
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v6, :cond_7

    const/4 v0, 0x7

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    const/4 v2, 0x7

    invoke-virtual {v4, v0, v1, v2, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_2

    :cond_7
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v6, :cond_4

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v5, v9, v0, v9, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_2

    :cond_8
    if-ne v1, v6, :cond_9

    if-eq v2, v6, :cond_1

    :cond_9
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v6, :cond_a

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v3, v8, v0, v8, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_a
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v6, :cond_1

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v4, v5, v0, v5, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto/16 :goto_0
.end method

.method public removeFromVerticalChain()Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, -0x1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v1, v5, :cond_0

    if-eq v2, v5, :cond_1

    :cond_0
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v1, v5, :cond_2

    if-eq v2, v5, :cond_2

    invoke-virtual {v3, v7, v2, v6, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-virtual {v4, v6, v1, v7, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    return-object p0

    :cond_2
    if-ne v1, v5, :cond_3

    if-eq v2, v5, :cond_1

    :cond_3
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v5, :cond_4

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v3, v7, v0, v7, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0

    :cond_4
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eq v0, v5, :cond_1

    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v4, v6, v0, v6, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_0
.end method

.method public rotation(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-object p0
.end method

.method public rotationX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    return-object p0
.end method

.method public rotationY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    return-object p0
.end method

.method public scaleX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-object p0
.end method

.method public scaleY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 0

    return-object p0
.end method

.method public transformPivot(FF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    return-object p0
.end method

.method public transformPivotX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    return-object p0
.end method

.method public transformPivotY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    return-object p0
.end method

.method public translation(FF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-object p0
.end method

.method public translationX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-object p0
.end method

.method public translationY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-object p0
.end method

.method public translationZ(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-object p0
.end method

.method public verticalBias(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    return-object p0
.end method

.method public verticalChainStyle(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    return-object p0
.end method

.method public verticalWeight(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    return-object p0
.end method

.method public visibility(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
