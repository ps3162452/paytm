.class public final enum Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateRestorationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c90ea4"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c0f0e3"

    const-wide/32 v4, -0x297634f4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "919dca"

    const/16 v3, -0x1989

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v1, v0, v8

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void

    :array_0
    .array-data 1
        0x22t
        0x75t
        0x7ct
        0x2at
        0x36t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0x62t
        0x23t
        0x66t
        0x20t
        0x7dt
        0x37t
        0x6ft
        0x31t
        0x78t
        0x20t
        0x7dt
        0x3ct
        0x75t
        0x2bt
        0x60t
        0x31t
        0x6at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x69t
        0x63t
        0x7ct
        0x32t
        0x26t
        0x2ft
        0x6dt
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

.method public static valueOf(Ljava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method public static values()[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v0}, [Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method
