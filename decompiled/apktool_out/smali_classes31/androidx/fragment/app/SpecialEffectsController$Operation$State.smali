.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bcf3f6"

    const v3, -0x3179e607

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    new-instance v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6ed057"

    const v4, 0x4e66ffd3    # 9.6888134E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    new-array v3, v10, [B

    fill-array-data v3, :array_2

    const-string v4, "91ffee"

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    new-instance v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/16 v4, 0x9

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "1480f0"

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    new-array v4, v10, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-void

    :array_0
    .array-data 1
        0x30t
        0x26t
        0x2bt
        0x7ct
        0x30t
        0x73t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x60t
        0x2ct
        0x37t
        0x79t
        0x77t
        0x7bt
        0x73t
    .end array-data

    :array_2
    .array-data 1
        0x7et
        0x7et
        0x28t
        0x23t
    .end array-data

    :array_3
    .array-data 1
        0x78t
        0x7at
        0x6et
        0x79t
        0x35t
        0x79t
        0x73t
        0x78t
        0x7dt
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 6

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4712ac"

    const-wide v4, 0x41c0870a9e000000L    # 5.54571068E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x61t
        0x59t
        0x5at
        0x5ct
        0xet
        0x14t
        0x5at
        0x17t
        0x47t
        0x5bt
        0x12t
        0xat
        0x56t
        0x5et
        0x5dt
        0x5bt
        0x15t
        0x1at
        0x14t
    .end array-data
.end method

.method static from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 1

    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 1

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method


# virtual methods
.method applyState(Landroid/view/View;)V
    .locals 8

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/16 v3, 0x27

    const/16 v6, 0xf

    const/4 v2, 0x2

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "30b0d3"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b70399"

    const/16 v3, 0x60c5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "d10e5d"

    const-wide/32 v4, -0x7ea35aaf

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const-string v2, "85db57"

    const v3, -0x3214eeb8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v4, [B

    fill-array-data v1, :array_4

    const-string v2, "c3745c"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_5

    const-string v2, "d51a98"

    const v3, 0x4ece6f2b    # 1.731696E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    const-string v2, "954b96"

    const/16 v3, 0x18a5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "ca3c14"

    const v3, -0x314df43c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_8

    const-string v2, "cdf5de"

    const-wide v4, -0x3e439926fb000000L    # -4.76502277E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "053488"

    const-wide v4, 0x41d6c2a0f4000000L    # 1.52741576E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "9883fb"

    const-wide/32 v4, -0x109d12f3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_b

    const-string v3, "8abede"

    const-wide v4, -0x3e23260ad9000000L    # -1.936184476E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x60t
        0x40t
        0x7t
        0x53t
        0xdt
        0x52t
        0x5ft
        0x75t
        0x4t
        0x56t
        0x1t
        0x50t
        0x47t
        0x43t
        0x21t
        0x5ft
        0xat
        0x47t
        0x41t
        0x5ft
        0xet
        0x5ct
        0x1t
        0x41t
        0x9t
        0x10t
        0x31t
        0x55t
        0x10t
        0x47t
        0x5at
        0x5et
        0x5t
        0x10t
        0x12t
        0x5at
        0x56t
        0x47t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x43t
        0x5ft
        0x13t
        0x70t
        0x77t
        0x34t
        0x7et
        0x63t
        0x7at
        0x7bt
        0x75t
        0x27t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x22t
        0x43t
        0x51t
        0x2t
        0x58t
        0x1t
        0xat
        0x45t
        0x7dt
        0x4t
        0x5bt
        0x5t
        0x3t
        0x54t
        0x42t
    .end array-data

    :array_3
    .array-data 1
        0x6bt
        0x45t
        0x1t
        0x1t
        0x5ct
        0x56t
        0x54t
        0x70t
        0x2t
        0x4t
        0x50t
        0x54t
        0x4ct
        0x46t
        0x27t
        0xdt
        0x5bt
        0x43t
        0x4at
        0x5at
        0x8t
        0xet
        0x50t
        0x45t
        0x2t
        0x15t
        0x37t
        0x7t
        0x41t
        0x43t
        0x51t
        0x5bt
        0x3t
        0x42t
        0x43t
        0x5et
        0x5dt
        0x42t
        0x44t
    .end array-data

    :array_4
    .array-data 1
        0x43t
        0x47t
        0x58t
        0x14t
        0x72t
        0x2ct
        0x2dt
        0x76t
    .end array-data

    :array_5
    .array-data 1
        0x22t
        0x47t
        0x50t
        0x6t
        0x54t
        0x5dt
        0xat
        0x41t
        0x7ct
        0x0t
        0x57t
        0x59t
        0x3t
        0x50t
        0x43t
    .end array-data

    :array_6
    .array-data 1
        0x6at
        0x45t
        0x51t
        0x1t
        0x50t
        0x57t
        0x55t
        0x70t
        0x52t
        0x4t
        0x5ct
        0x55t
        0x4dt
        0x46t
        0x77t
        0xdt
        0x57t
        0x42t
        0x4bt
        0x5at
        0x58t
        0xet
        0x5ct
        0x44t
        0x3t
        0x15t
        0x67t
        0x7t
        0x4dt
        0x42t
        0x50t
        0x5bt
        0x53t
        0x42t
        0x4ft
        0x5ft
        0x5ct
        0x42t
        0x14t
    .end array-data

    :array_7
    .array-data 1
        0x43t
        0x15t
        0x5ct
        0x43t
        0x67t
        0x7dt
        0x30t
        0x28t
        0x71t
        0x2ft
        0x74t
    .end array-data

    :array_8
    .array-data 1
        0x25t
        0x16t
        0x7t
        0x52t
        0x9t
        0x0t
        0xdt
        0x10t
        0x2bt
        0x54t
        0xat
        0x4t
        0x4t
        0x1t
        0x14t
    .end array-data

    :array_9
    .array-data 1
        0x63t
        0x45t
        0x56t
        0x57t
        0x51t
        0x59t
        0x5ct
        0x70t
        0x55t
        0x52t
        0x5dt
        0x5bt
        0x44t
        0x46t
        0x70t
        0x5bt
        0x56t
        0x4ct
        0x42t
        0x5at
        0x5ft
        0x58t
        0x5dt
        0x4at
        0xat
        0x15t
        0x61t
        0x51t
        0x55t
        0x57t
        0x46t
        0x5ct
        0x5dt
        0x53t
        0x18t
        0x4et
        0x59t
        0x50t
        0x44t
        0x14t
    .end array-data

    :array_a
    .array-data 1
        0x19t
        0x5et
        0x4at
        0x5ct
        0xbt
        0x42t
        0x5at
        0x57t
        0x56t
        0x47t
        0x7t
        0xbt
        0x57t
        0x5dt
        0x4at
        0x13t
    .end array-data

    :array_b
    .array-data 1
        0x7et
        0x13t
        0x3t
        0x2t
        0x9t
        0x0t
        0x56t
        0x15t
        0x2ft
        0x4t
        0xat
        0x4t
        0x5ft
        0x4t
        0x10t
    .end array-data
.end method
