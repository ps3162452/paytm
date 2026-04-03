.class public Lcom/google/firebase/database/core/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final DOT_INFO_AUTHENTICATED:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final DOT_INFO_SERVERTIME_OFFSET:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final WIRE_PROTOCOL_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    new-array v0, v4, [B

    const/4 v1, 0x0

    aput-byte v4, v0, v1

    const-string v1, "4754fb"

    const-wide v2, -0x3e2fce6e7b400000L    # -1.086735891E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->WIRE_PROTOCOL_VERSION:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "598127"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "48623e"

    const-wide/32 v2, 0x1da22840

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_SERVERTIME_OFFSET:Lcom/google/firebase/database/snapshot/ChildKey;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "14edc6"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/google/firebase/database/snapshot/ChildKey;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "bdc2db"

    const v2, 0x4e14bcc4    # 6.238497E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x50t
        0x56t
        0x57t
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x5dt
        0x44t
        0x44t
        0x56t
        0x17t
        0x60t
        0x51t
        0x5bt
        0x57t
        0x7ct
        0x3t
        0x52t
        0x4bt
        0x53t
        0x46t
    .end array-data

    :array_2
    .array-data 1
        0x50t
        0x41t
        0x11t
        0xct
        0x6t
        0x58t
        0x45t
        0x5dt
        0x6t
        0x5t
        0x17t
        0x53t
        0x55t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0xbt
        0xdt
        0x5ct
        0x1t
        0x1t
        0x16t
        0x1t
        0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
