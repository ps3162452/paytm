.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LifecycleImpact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0b7b2d"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    new-instance v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b9df3b"

    const-wide/32 v4, -0xac93dca

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "9630cc"

    invoke-static {v3, v4, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v3, 0x3

    new-array v3, v3, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    aput-object v2, v3, v8

    sput-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-void

    :array_0
    .array-data 1
        0x7et
        0x2dt
        0x79t
        0x27t
    .end array-data

    :array_1
    .array-data 1
        0x23t
        0x7dt
        0x20t
        0x2ft
        0x7dt
        0x25t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6bt
        0x73t
        0x7et
        0x7ft
        0x35t
        0x2at
        0x77t
        0x71t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method
