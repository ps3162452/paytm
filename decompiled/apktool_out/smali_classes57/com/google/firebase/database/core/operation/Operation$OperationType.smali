.class public final enum Lcom/google/firebase/database/core/operation/Operation$OperationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/operation/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/core/operation/Operation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum AckUserWrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0ef749"

    const v3, 0x4e72c416

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    new-instance v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "992cf5"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    new-instance v2, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "7713c1"

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/core/operation/Operation$OperationType;->AckUserWrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    new-instance v3, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "745b87"

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/firebase/database/core/operation/Operation$OperationType;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Lcom/google/firebase/database/core/operation/Operation$OperationType;->$VALUES:[Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x13t
        0x3t
        0x45t
        0x43t
        0x4bt
        0x59t
        0x11t
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x5ct
        0x40t
        0x4t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x76t
        0x54t
        0x5at
        0x66t
        0x10t
        0x54t
        0x45t
        0x60t
        0x43t
        0x5at
        0x17t
        0x54t
    .end array-data

    :array_3
    .array-data 1
        0x7bt
        0x5dt
        0x46t
        0x16t
        0x5dt
        0x59t
        0x74t
        0x5bt
        0x58t
        0x12t
        0x54t
        0x52t
        0x43t
        0x51t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/operation/Operation$OperationType;
    .locals 1

    const-class v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/core/operation/Operation$OperationType;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->$VALUES:[Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/operation/Operation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-object v0
.end method
