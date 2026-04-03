.class Lcom/google/firebase/database/connection/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final DOT_INFO_SERVERTIME_OFFSET:Ljava/lang/String;

.field public static final WIRE_PROTOCOL_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f3e000"

    const v2, 0x4e89b120

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Constants;->DOT_INFO_SERVERTIME_OFFSET:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const-string v1, "1620de"

    const-wide/32 v2, -0xca9ae41

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Constants;->WIRE_PROTOCOL_VERSION:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x15t
        0x56t
        0x17t
        0x46t
        0x55t
        0x42t
        0x32t
        0x5at
        0x8t
        0x55t
        0x7ft
        0x56t
        0x0t
        0x40t
        0x0t
        0x44t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
