.class public final enum Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeartBeat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field public static final enum COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field public static final enum GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field public static final enum NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field public static final enum SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    const-string v2, "b96e35"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v7}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    new-instance v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "990548"

    const-wide/32 v4, -0x172a856f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    new-instance v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c0cae3"

    const v5, 0x4d43ce9f    # 2.0531864E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9, v9}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    new-instance v3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "e04e33"

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8, v8}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    new-array v4, v10, [Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    aput-object v2, v4, v9

    aput-object v3, v4, v8

    sput-object v4, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->$VALUES:[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-void

    nop

    :array_0
    .array-data 1
        0x2ct
        0x76t
        0x78t
        0x20t
    .end array-data

    :array_1
    .array-data 1
        0x6at
        0x7dt
        0x7bt
    .end array-data

    :array_2
    .array-data 1
        0x24t
        0x7ct
        0x2ct
        0x23t
        0x24t
        0x7ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x26t
        0x7ft
        0x79t
        0x27t
        0x7at
        0x7dt
        0x20t
        0x74t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 1

    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 1

    sget-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->$VALUES:[Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    invoke-virtual {v0}, [Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->code:I

    return v0
.end method
