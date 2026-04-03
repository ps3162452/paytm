.class public final enum Lcom/google/firebase/database/core/view/Event$EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/core/view/Event$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum VALUE:Lcom/google/firebase/database/core/view/Event$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/firebase/database/core/view/Event$EventType;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8e2d28"

    const-wide/32 v4, -0x595d7d0a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    new-instance v1, Lcom/google/firebase/database/core/view/Event$EventType;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "1e0ed5"

    const-wide v4, 0x41c910f688800000L    # 8.41084177E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    new-instance v2, Lcom/google/firebase/database/core/view/Event$EventType;

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "fc3e5e"

    const/16 v5, -0x3b83

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    new-instance v3, Lcom/google/firebase/database/core/view/Event$EventType;

    const/16 v4, 0xd

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "ce4717"

    invoke-static {v4, v5, v10, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    new-instance v4, Lcom/google/firebase/database/core/view/Event$EventType;

    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "b6d077"

    const-wide/32 v8, -0x7f81317a

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v13}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/firebase/database/core/view/Event$EventType;

    aput-object v0, v5, v7

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    aput-object v3, v5, v12

    aput-object v4, v5, v13

    sput-object v5, Lcom/google/firebase/database/core/view/Event$EventType;->$VALUES:[Lcom/google/firebase/database/core/view/Event$EventType;

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x2dt
        0x7bt
        0x28t
        0x76t
        0x67t
        0x6at
        0x20t
        0x7ft
        0x2bt
        0x64t
        0x7dt
        0x7ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x2dt
        0x79t
        0x29t
        0x20t
        0x6at
        0x70t
        0x21t
        0x74t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x25t
        0x2bt
        0x7at
        0x29t
        0x71t
        0x3at
        0x2bt
        0x2ct
        0x65t
        0x20t
        0x71t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x2dt
        0x7dt
        0x7bt
        0x75t
        0x68t
        0x20t
        0x2dt
        0x75t
        0x79t
        0x76t
        0x72t
        0x27t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x34t
        0x77t
        0x28t
        0x65t
        0x72t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    const-class v0, Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->$VALUES:[Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/view/Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method
