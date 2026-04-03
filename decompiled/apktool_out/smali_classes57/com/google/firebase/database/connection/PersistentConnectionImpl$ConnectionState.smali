.class final enum Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6bc597"

    const v3, -0x319ff3ef

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4b2008"

    const/16 v4, 0x658f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "64d7d2"

    invoke-static {v3, v4, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    new-instance v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "9ade73"

    const v6, -0x314bd286

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    new-instance v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "f8ff96"

    invoke-static {v5, v6, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    aput-object v4, v5, v11

    sput-object v5, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->$VALUES:[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-void

    nop

    :array_0
    .array-data 1
        0x72t
        0xbt
        0x10t
        0x56t
        0x56t
        0x59t
        0x58t
        0x7t
        0x0t
        0x41t
        0x5ct
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x7t
        0x46t
        0x44t
        0x59t
        0x56t
        0x53t
        0x36t
        0x5dt
        0x5bt
        0x55t
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x75t
        0x5bt
        0xat
        0x59t
        0x1t
        0x51t
        0x42t
        0x5dt
        0xat
        0x50t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x78t
        0x14t
        0x10t
        0xdt
        0x52t
        0x5dt
        0x4dt
        0x8t
        0x7t
        0x4t
        0x43t
        0x5at
        0x57t
        0x6t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x25t
        0x57t
        0x8t
        0x8t
        0x5ct
        0x55t
        0x12t
        0x5dt
        0x2t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 1

    const-class v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->$VALUES:[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object v0
.end method
