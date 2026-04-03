.class final enum Lcom/google/firebase/database/tubesock/WebSocket$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/tubesock/WebSocket$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x0

    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "44bc17"

    const-wide v4, 0x41d6147830000000L    # 1.48176096E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "bc104c"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "1f7068"

    const/16 v5, -0x4b9b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    new-instance v3, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const/16 v4, 0xd

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "930a7e"

    const-wide v6, -0x3e33453e2d800000L    # -9.64002725E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    new-instance v4, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "5cbe0e"

    const/16 v7, 0xeb3

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v9}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v0, v5, v8

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    aput-object v3, v5, v12

    aput-object v4, v5, v9

    sput-object v5, Lcom/google/firebase/database/tubesock/WebSocket$State;->$VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x7bt
        0x2ct
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x21t
        0x2ct
        0x7ft
        0x7et
        0x71t
        0x20t
        0x36t
        0x2at
        0x7ft
        0x77t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x72t
        0x29t
        0x79t
        0x7et
        0x73t
        0x7bt
        0x65t
        0x23t
        0x73t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7dt
        0x7at
        0x63t
        0x22t
        0x78t
        0x2bt
        0x77t
        0x76t
        0x73t
        0x35t
        0x7et
        0x2bt
        0x7et
    .end array-data

    nop

    :array_4
    .array-data 1
        0x71t
        0x2at
        0x31t
        0x26t
        0x7ft
        0x2bt
        0x7bt
        0x26t
        0x21t
        0x31t
        0x75t
        0x21t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/tubesock/WebSocket$State;
    .locals 1

    const-class v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/tubesock/WebSocket$State;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->$VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v0}, [Lcom/google/firebase/database/tubesock/WebSocket$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-object v0
.end method
