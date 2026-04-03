.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;


# static fields
.field public static final CROSS:Ljava/lang/String;

.field public static final KEY_TYPE:I = 0x5

.field public static final NEGATIVE_CROSS:Ljava/lang/String;

.field public static final POSITIVE_CROSS:Ljava/lang/String;

.field public static final POST_LAYOUT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String;

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String;

.field public static final TRIGGER_ID:Ljava/lang/String;

.field public static final TRIGGER_RECEIVER:Ljava/lang/String;

.field public static final TRIGGER_SLACK:Ljava/lang/String;

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String;

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String;

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String;


# instance fields
.field mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field mMethodHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mTriggerCollisionId:I

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F

.field mViewTransitionOnCross:I

.field mViewTransitionOnNegativeCross:I

.field mViewTransitionOnPositiveCross:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x1d

    const/16 v5, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f343a1"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->CROSS:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "4aabf4"

    const/16 v2, -0xdce

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->NEGATIVE_CROSS:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_2

    const-string v1, "5002d5"

    const/16 v2, -0x4bf7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->POSITIVE_CROSS:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    const-string v1, "e960ed"

    const/16 v2, 0x1033

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->POST_LAYOUT:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_4

    const-string v1, "abea6c"

    const-wide/32 v2, 0x6ab72c4e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TAG:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "4d298c"

    const v2, 0x4ea912e1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_COLLISION_ID:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "1886ad"

    const/16 v2, -0x42fa

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_COLLISION_VIEW:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "67ad51"

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_ID:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "fc7d92"

    const-wide v2, -0x3e32e96ed4000000L    # -9.7603644E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_RECEIVER:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "dbed9a"

    const-wide/32 v2, 0x18b4c844

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_SLACK:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "181d77"

    const/16 v2, 0x2b90

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->VIEW_TRANSITION_ON_CROSS:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_b

    const-string v1, "cbd398"

    const/16 v2, 0x3cc7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_c

    const-string v1, "6e6885"

    const-wide/32 v2, 0x2f876208

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x25t
        0x61t
        0x7bt
        0x60t
        0x32t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5at
        0x4t
        0x6t
        0x3t
        0x12t
        0x5dt
        0x42t
        0x4t
        0x22t
        0x10t
        0x9t
        0x47t
        0x47t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x45t
        0x5ft
        0x43t
        0x5bt
        0x10t
        0x5ct
        0x43t
        0x55t
        0x73t
        0x40t
        0xbt
        0x46t
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x56t
        0x45t
        0x44t
        0x29t
        0x5t
        0x1ct
        0x56t
        0x43t
        0x44t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2at
        0x7t
        0x1ct
        0x35t
        0x44t
        0xat
        0x6t
        0x5t
        0x0t
        0x13t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x40t
        0x16t
        0x5bt
        0x5et
        0x5ft
        0x6t
        0x46t
        0x27t
        0x5dt
        0x55t
        0x54t
        0xat
        0x47t
        0xdt
        0x5dt
        0x57t
        0x71t
        0x7t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0x4at
        0x51t
        0x51t
        0x6t
        0x1t
        0x43t
        0x7bt
        0x57t
        0x5at
        0xdt
        0xdt
        0x42t
        0x51t
        0x57t
        0x58t
        0x37t
        0xdt
        0x54t
        0x4ft
    .end array-data

    :array_7
    .array-data 1
        0x42t
        0x45t
        0x8t
        0x3t
        0x52t
        0x54t
        0x44t
        0x7et
        0x25t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x12t
        0x11t
        0x5et
        0x3t
        0x5et
        0x57t
        0x14t
        0x31t
        0x52t
        0x7t
        0x5ct
        0x5bt
        0x10t
        0x6t
        0x45t
    .end array-data

    :array_9
    .array-data 1
        0x10t
        0x10t
        0xct
        0x3t
        0x5et
        0x4t
        0x16t
        0x31t
        0x9t
        0x5t
        0x5at
        0xat
    .end array-data

    :array_a
    .array-data 1
        0x47t
        0x51t
        0x54t
        0x13t
        0x63t
        0x45t
        0x50t
        0x56t
        0x42t
        0xdt
        0x43t
        0x5et
        0x5et
        0x56t
        0x7et
        0xat
        0x74t
        0x45t
        0x5et
        0x4bt
        0x42t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x15t
        0xbt
        0x1t
        0x44t
        0x6dt
        0x4at
        0x2t
        0xct
        0x17t
        0x5at
        0x4dt
        0x51t
        0xct
        0xct
        0x2bt
        0x5dt
        0x77t
        0x5dt
        0x4t
        0x3t
        0x10t
        0x5at
        0x4ft
        0x5dt
        0x20t
        0x10t
        0xbt
        0x40t
        0x4at
    .end array-data

    nop

    :array_c
    .array-data 1
        0x40t
        0xct
        0x53t
        0x4ft
        0x6ct
        0x47t
        0x57t
        0xbt
        0x45t
        0x51t
        0x4ct
        0x5ct
        0x59t
        0xbt
        0x79t
        0x56t
        0x68t
        0x5at
        0x45t
        0xct
        0x42t
        0x51t
        0x4et
        0x50t
        0x75t
        0x17t
        0x59t
        0x4bt
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    return-void
.end method

.method private fireCustom(Ljava/lang/String;Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_RECEIVER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_1
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->POST_LAYOUT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->VIEW_TRANSITION_ON_CROSS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_SLACK:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_COLLISION_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->NEGATIVE_CROSS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_7
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->TRIGGER_COLLISION_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_9
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    sget-object v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->POSITIVE_CROSS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x137

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x136

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x135

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x134

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x133

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x132

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x131

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x130

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x12f

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x12e

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x12d

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_a
        -0x399a6b12 -> :sswitch_9
        -0x2ee3a4eb -> :sswitch_8
        -0x26ab2f2d -> :sswitch_7
        -0x26090af5 -> :sswitch_6
        -0x4880de1 -> :sswitch_5
        -0x94d7ce -> :sswitch_4
        0x15b9acb8 -> :sswitch_3
        0x4d99e267 -> :sswitch_2
        0x538787ea -> :sswitch_1
        0x5b846bc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(IF)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x131
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(II)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    goto :goto_1

    :pswitch_3
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    goto :goto_1

    :pswitch_4
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    goto :goto_1

    :pswitch_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    goto :goto_1

    :pswitch_6
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x135
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValue(IZ)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x130
        :pswitch_0
    .end packed-switch
.end method
