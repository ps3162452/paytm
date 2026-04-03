.class Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x9

.field private static final ANDROID_ELEVATION:I = 0xa

.field private static final ANDROID_ROTATION:I = 0xb

.field private static final ANDROID_ROTATION_X:I = 0xc

.field private static final ANDROID_ROTATION_Y:I = 0xd

.field private static final ANDROID_SCALE_X:I = 0xf

.field private static final ANDROID_SCALE_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_X:I = 0x11

.field private static final ANDROID_TRANSLATION_Y:I = 0x12

.field private static final ANDROID_TRANSLATION_Z:I = 0x13

.field private static final CURVE_FIT:I = 0x4

.field private static final FRAME_POSITION:I = 0x2

.field private static final PROGRESS:I = 0x14

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TRANSITION_PATH_ROTATE:I = 0xe

.field private static final WAVE_OFFSET:I = 0x7

.field private static final WAVE_PERIOD:I = 0x6

.field private static final WAVE_PHASE:I = 0x15

.field private static final WAVE_SHAPE:I = 0x5

.field private static final WAVE_VARIES_BY:I = 0x8

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveShape:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_wavePeriod:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveOffset:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveVariesBy:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_alpha:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_elevation:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotationX:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotationY:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_transitionPathRotate:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_scaleX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_scaleY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationX:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationY:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationZ:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_motionProgress:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_wavePhase:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x21

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x13

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "1e79ac"

    invoke-static {v6, v7, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "f3351c"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_3
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_4
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_5
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_7
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_8
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto :goto_1

    :pswitch_9
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :pswitch_a
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :pswitch_b
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :pswitch_c
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :pswitch_d
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :pswitch_f
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v8, :cond_2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    goto/16 :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    goto/16 :goto_1

    :pswitch_11
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_13
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    goto/16 :goto_1

    :pswitch_14
    sget-boolean v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetString:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v8, :cond_4

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetString:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    goto/16 :goto_1

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    :array_0
    .array-data 1
        0x44t
        0xbt
        0x42t
        0x4at
        0x4t
        0x7t
        0x11t
        0x4t
        0x43t
        0x4dt
        0x13t
        0xat
        0x53t
        0x10t
        0x43t
        0x5ct
        0x41t
        0x53t
        0x49t
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0x56t
        0x4at
        0x76t
        0x48t
        0x0t
        0xat
        0x56t
    .end array-data
.end method
