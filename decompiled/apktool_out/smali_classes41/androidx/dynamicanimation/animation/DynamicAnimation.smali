.class public abstract Landroidx/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/dynamicanimation/animation/DynamicAnimation",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v5, 0x6

    const/16 v4, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "93d7dc"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "41331c"

    const/16 v3, -0x301

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$3;

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    const-string v2, "ced121"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "a0ee18"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    new-array v1, v5, [B

    fill-array-data v1, :array_4

    const-string v2, "f3d741"

    const/16 v3, -0x6683

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$6;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "e746f5"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$7;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "3ff2d5"

    const-wide v4, 0x41dd7cc7a0000000L    # 1.978867328E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$8;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "7e9a5e"

    const/16 v3, 0x7e57

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$9;

    new-array v1, v7, [B

    const/16 v2, 0x4e

    aput-byte v2, v1, v6

    const-string v2, "65cd98"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$10;

    new-array v1, v7, [B

    const/16 v2, 0x4c

    aput-byte v2, v1, v6

    const-string v2, "53ee0a"

    const v3, -0x3141c1d5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$11;

    new-array v1, v7, [B

    const/16 v2, 0x43

    aput-byte v2, v1, v6

    const-string v2, "9c8942"

    const v3, -0x316c0209

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "159481"

    const-wide/32 v4, -0x5273d5d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$13;

    new-array v1, v8, [B

    fill-array-data v1, :array_9

    const-string v2, "3bce38"

    const/16 v3, 0x3ae5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$14;

    new-array v1, v8, [B

    fill-array-data v1, :array_a

    const-string v2, "7d19f1"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x41t
        0x5t
        0x59t
        0x17t
        0xft
        0x58t
        0x47t
        0xdt
        0x58t
        0xat
        0x3bt
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x43t
        0x52t
        0x5dt
        0x42t
        0xft
        0x55t
        0x45t
        0x5at
        0x5ct
        0x5ft
        0x3at
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x17t
        0x5t
        0x5ft
        0x41t
        0x5dt
        0x2t
        0x11t
        0xdt
        0x5et
        0x5ct
        0x6bt
    .end array-data

    :array_3
    .array-data 1
        0x12t
        0x53t
        0x4t
        0x9t
        0x54t
        0x60t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x15t
        0x50t
        0x5t
        0x5bt
        0x51t
        0x68t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x17t
        0x58t
        0x40t
        0x57t
        0x12t
        0x5ct
        0xat
        0x59t
    .end array-data

    :array_6
    .array-data 1
        0x41t
        0x9t
        0x12t
        0x53t
        0x10t
        0x5ct
        0x5ct
        0x8t
        0x3et
    .end array-data

    nop

    :array_7
    .array-data 1
        0x45t
        0xat
        0x4dt
        0x0t
        0x41t
        0xct
        0x58t
        0xbt
        0x60t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x50t
        0x59t
        0x49t
        0x5ct
        0x59t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x40t
        0x1t
        0x11t
        0xat
        0x5ft
        0x54t
        0x6bt
    .end array-data

    :array_a
    .array-data 1
        0x44t
        0x7t
        0x43t
        0x56t
        0xat
        0x5dt
        0x6et
    .end array-data
.end method

.method constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 4

    const/4 v2, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$15;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "12e052"

    const v3, 0x4eee805c    # 2.0006948E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$15;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return-void

    :array_0
    .array-data 1
        0x77t
        0x5et
        0xat
        0x51t
        0x41t
        0x64t
        0x50t
        0x5et
        0x10t
        0x55t
        0x7dt
        0x5dt
        0x5dt
        0x56t
        0x0t
        0x42t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat",
            "<TK;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, 0x3b800000    # 0.00390625f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput-boolean v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_2

    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_4

    :cond_3
    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_0
.end method

.method private endAnimationInternal(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->removeCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, p1, v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .locals 2

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 4

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f5c012"

    const v3, -0x310ba338

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroidx/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x35t
        0x41t
        0x2t
        0x42t
        0x45t
        0x5bt
        0x8t
        0x52t
        0x43t
        0x46t
        0x50t
        0x5et
        0x13t
        0x50t
        0x43t
        0x5et
        0x54t
        0x57t
        0x2t
        0x15t
        0x17t
        0x5ft
        0x11t
        0x50t
        0x3t
        0x15t
        0xat
        0x5et
        0x11t
        0x50t
        0x3t
        0x41t
        0x14t
        0x55t
        0x54t
        0x5ct
        0x46t
        0x58t
        0xat
        0x5et
        0x11t
        0x44t
        0x7t
        0x59t
        0x16t
        0x55t
        0x11t
        0x53t
        0x8t
        0x51t
        0x43t
        0x5dt
        0x50t
        0x4at
        0x46t
        0x43t
        0x2t
        0x5ct
        0x44t
        0x57t
    .end array-data
.end method


# virtual methods
.method public addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "40616e"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    nop

    :array_0
    .array-data 1
        0x71t
        0x42t
        0x44t
        0x5et
        0x44t
        0x5ft
        0x14t
        0x65t
        0x46t
        0x55t
        0x57t
        0x11t
        0x51t
        0x10t
        0x5at
        0x58t
        0x45t
        0x11t
        0x51t
        0x5et
        0x53t
        0x43t
        0x45t
        0x45t
        0x59t
        0x45t
        0x45t
        0x45t
        0x16t
        0x7t
        0x51t
        0x10t
        0x57t
        0x55t
        0x52t
        0x0t
        0x50t
        0x10t
        0x54t
        0x54t
        0x50t
        0xat
        0x46t
        0x55t
        0x42t
        0x59t
        0x53t
        0x45t
        0x55t
        0x5et
        0x5ft
        0x5ct
        0x57t
        0x11t
        0x5dt
        0x5ft
        0x58t
        0x1ft
    .end array-data
.end method

.method public cancel()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3064bb"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x72t
        0x5et
        0x5ft
        0x59t
        0x3t
        0x16t
        0x5at
        0x5ft
        0x58t
        0x47t
        0x42t
        0xft
        0x52t
        0x49t
        0x16t
        0x5bt
        0xct
        0xet
        0x4at
        0x10t
        0x54t
        0x51t
        0x42t
        0x1t
        0x52t
        0x5et
        0x55t
        0x51t
        0xet
        0x7t
        0x57t
        0x10t
        0x59t
        0x5at
        0x42t
        0x16t
        0x5bt
        0x55t
        0x16t
        0x59t
        0x3t
        0xbt
        0x5dt
        0x10t
        0x42t
        0x5ct
        0x10t
        0x7t
        0x52t
        0x54t
    .end array-data
.end method

.method public doAnimationFrame(J)Z
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v1

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method getValueThreshold()F
    .locals 2

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "689c0b"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    :array_0
    .array-data 1
        0x7bt
        0x51t
        0x57t
        0xat
        0x5dt
        0x17t
        0x5bt
        0x18t
        0x4ft
        0xat
        0x43t
        0xbt
        0x54t
        0x54t
        0x5ct
        0x43t
        0x53t
        0xat
        0x57t
        0x56t
        0x5et
        0x6t
        0x10t
        0xft
        0x43t
        0x4bt
        0x4dt
        0x43t
        0x52t
        0x7t
        0x16t
        0x48t
        0x56t
        0x10t
        0x59t
        0x16t
        0x5ft
        0x4et
        0x5ct
        0x4dt
    .end array-data
.end method

.method setPropertyValue(F)V
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f208a9"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal()V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x27t
        0x5ct
        0x59t
        0x55t
        0x0t
        0x4dt
        0xft
        0x5dt
        0x5et
        0x4bt
        0x41t
        0x54t
        0x7t
        0x4bt
        0x10t
        0x57t
        0xft
        0x55t
        0x1ft
        0x12t
        0x52t
        0x5dt
        0x41t
        0x4at
        0x12t
        0x53t
        0x42t
        0x4ct
        0x4t
        0x5dt
        0x46t
        0x5dt
        0x5et
        0x18t
        0x15t
        0x51t
        0x3t
        0x12t
        0x5dt
        0x59t
        0x8t
        0x57t
        0x46t
        0x46t
        0x58t
        0x4at
        0x4t
        0x58t
        0x2t
    .end array-data
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
