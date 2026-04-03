.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;


# instance fields
.field drawHorizontallyInverse:Z

.field public indeterminateAnimationType:I

.field public indicatorDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator:[I

    sget v3, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    sget v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indeterminateAnimationType:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    sget v1, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indicatorDirectionLinear:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    if-ne v0, v6, :cond_0

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    return-void

    :cond_0
    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method validateSpec()V
    .locals 6

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x50

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2cea2e"

    const-wide v4, -0x3e5ec9b176000000L    # -1.44385861E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x48

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9be358"

    const-wide/32 v4, -0x49044ece

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x71t
        0xct
        0xbt
        0x15t
        0x5bt
        0x2t
        0x47t
        0xct
        0x10t
        0x12t
        0x12t
        0xct
        0x5ct
        0x7t
        0x0t
        0x15t
        0x57t
        0x17t
        0x5ft
        0xat
        0xbt
        0x0t
        0x46t
        0x0t
        0x12t
        0x2t
        0xbt
        0x8t
        0x5ft
        0x4t
        0x46t
        0xat
        0xat
        0xft
        0x12t
        0x8t
        0x47t
        0x10t
        0x11t
        0x41t
        0x50t
        0x0t
        0x12t
        0x16t
        0x16t
        0x4t
        0x56t
        0x45t
        0x45t
        0xat
        0x11t
        0x9t
        0x12t
        0x56t
        0x12t
        0xct
        0x17t
        0x41t
        0x5ft
        0xat
        0x40t
        0x6t
        0x45t
        0x8t
        0x5ct
        0x1t
        0x5bt
        0x0t
        0x4t
        0x15t
        0x5dt
        0x17t
        0x12t
        0x0t
        0xat
        0xdt
        0x5dt
        0x17t
        0x41t
        0x4dt
    .end array-data

    :array_1
    .array-data 1
        0x6bt
        0xdt
        0x10t
        0x5dt
        0x51t
        0x5dt
        0x5dt
        0x42t
        0x6t
        0x5ct
        0x47t
        0x56t
        0x5ct
        0x10t
        0x16t
        0x13t
        0x54t
        0x4at
        0x5ct
        0x42t
        0xbt
        0x5ct
        0x41t
        0x18t
        0x4at
        0x17t
        0x15t
        0x43t
        0x5at
        0x4at
        0x4dt
        0x7t
        0x1t
        0x13t
        0x5ct
        0x56t
        0x19t
        0x1t
        0xat
        0x5dt
        0x41t
        0x51t
        0x5et
        0x17t
        0xat
        0x46t
        0x46t
        0x18t
        0x50t
        0xct
        0x1t
        0x56t
        0x41t
        0x5dt
        0x4bt
        0xft
        0xct
        0x5dt
        0x54t
        0x4ct
        0x5ct
        0x42t
        0x4t
        0x5dt
        0x5ct
        0x55t
        0x58t
        0x16t
        0xct
        0x5ct
        0x5bt
        0x16t
    .end array-data
.end method
