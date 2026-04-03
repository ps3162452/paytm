.class final enum Lcom/google/firebase/database/connection/Connection$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/connection/Connection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/connection/Connection$State;

.field public static final enum REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

.field public static final enum REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

.field public static final enum REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/google/firebase/database/connection/Connection$State;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "59950f"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/connection/Connection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    new-instance v1, Lcom/google/firebase/database/connection/Connection$State;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "f6f1ff"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/google/firebase/database/connection/Connection$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    new-instance v2, Lcom/google/firebase/database/connection/Connection$State;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c5d16a"

    const/16 v5, 0x3e34

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lcom/google/firebase/database/connection/Connection$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/firebase/database/connection/Connection$State;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    sput-object v3, Lcom/google/firebase/database/connection/Connection$State;->$VALUES:[Lcom/google/firebase/database/connection/Connection$State;

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x7ct
        0x78t
        0x79t
        0x64t
        0x2ft
        0x78t
        0x7ct
        0x66t
        0x76t
        0x7ft
        0x28t
        0x7bt
        0x7ct
        0x7at
        0x61t
        0x79t
        0x28t
        0x72t
    .end array-data

    :array_1
    .array-data 1
        0x34t
        0x73t
        0x27t
        0x7dt
        0x32t
        0x2ft
        0x2bt
        0x73t
        0x39t
        0x72t
        0x29t
        0x28t
        0x28t
        0x73t
        0x25t
        0x65t
        0x23t
        0x22t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x31t
        0x70t
        0x25t
        0x7dt
        0x62t
        0x28t
        0x2et
        0x70t
        0x3bt
        0x75t
        0x7ft
        0x32t
        0x20t
        0x7at
        0x2at
        0x7ft
        0x73t
        0x22t
        0x37t
        0x70t
        0x20t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/Connection$State;
    .locals 1

    const-class v0, Lcom/google/firebase/database/connection/Connection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/Connection$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/Connection$State;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->$VALUES:[Lcom/google/firebase/database/connection/Connection$State;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/Connection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/Connection$State;

    return-object v0
.end method
