.class public final Lokhttp3/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;


# static fields
.field static final ACCEPT_MAGIC:Ljava/lang/String;

.field static final B0_FLAG_FIN:I = 0x80

.field static final B0_FLAG_RSV1:I = 0x40

.field static final B0_FLAG_RSV2:I = 0x20

.field static final B0_FLAG_RSV3:I = 0x10

.field static final B0_MASK_OPCODE:I = 0xf

.field static final B1_FLAG_MASK:I = 0x80

.field static final B1_MASK_LENGTH:I = 0x7f

.field static final CLOSE_ABNORMAL_TERMINATION:I = 0x3ee

.field static final CLOSE_CLIENT_GOING_AWAY:I = 0x3e9

.field static final CLOSE_MESSAGE_MAX:J = 0x7bL

.field static final CLOSE_NO_STATUS_CODE:I = 0x3ed

.field static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea

.field static final OPCODE_BINARY:I = 0x2

.field static final OPCODE_CONTINUATION:I = 0x0

.field static final OPCODE_CONTROL_CLOSE:I = 0x8

.field static final OPCODE_CONTROL_PING:I = 0x9

.field static final OPCODE_CONTROL_PONG:I = 0xa

.field static final OPCODE_FLAG_CONTROL:I = 0x8

.field static final OPCODE_TEXT:I = 0x1

.field static final PAYLOAD_BYTE_MAX:J = 0x7dL

.field static final PAYLOAD_LONG:I = 0x7f

.field static final PAYLOAD_SHORT:I = 0x7e

.field static final PAYLOAD_SHORT_MAX:J = 0xffffL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7284be"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->ACCEPT_MAGIC:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x7t
        0x0t
        0x71t
        0x23t
        0x23t
        0x76t
        0x7t
        0x15t
        0x71t
        0x5bt
        0x54t
        0x3t
        0x1ft
        0xct
        0x3t
        0x26t
        0x24t
        0x1at
        0xbt
        0xdt
        0x77t
        0x23t
        0x48t
        0x74t
        0x7t
        0x79t
        0x76t
        0x52t
        0x21t
        0x74t
        0xat
        0xdt
        0x76t
        0x53t
        0x54t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "08a315"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x57t
        0x41t
        0x5at
        0x5ft
        0x46t
        0x44t
        0x59t
        0xft
        0x50t
        0x54t
        0x46t
        0x1et
    .end array-data
.end method

.method public static acceptHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/ws/WebSocketProtocol;->ACCEPT_MAGIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static closeCodeExceptionMessage(I)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1388

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "57e080"

    const-wide/32 v4, 0x19c014e7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x3ec

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3ee

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x3f4

    if-lt p0, v0, :cond_4

    const/16 v0, 0xbb7

    if-gt p0, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "385683"

    const/16 v3, 0x3c7c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "180410"

    const-wide v4, 0x417e997050000000L    # 3.2085765E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x76t
        0x58t
        0x1t
        0x55t
        0x18t
        0x5dt
        0x40t
        0x44t
        0x11t
        0x10t
        0x5at
        0x55t
        0x15t
        0x5et
        0xbt
        0x10t
        0x4at
        0x51t
        0x5bt
        0x50t
        0x0t
        0x10t
        0x63t
        0x1t
        0x5t
        0x7t
        0x55t
        0x1ct
        0xdt
        0x0t
        0x5t
        0x7t
        0x4ct
        0xat
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x57t
        0x51t
        0x53t
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x51t
        0x43t
        0x14t
        0x43t
        0x55t
        0x42t
        0x5dt
        0x42t
        0x42t
        0x54t
        0x54t
        0x11t
        0x59t
        0x5et
        0x50t
        0x11t
        0x5dt
        0x50t
        0x41t
        0x10t
        0x5at
        0x5et
        0x44t
        0x11t
        0x5at
        0x55t
        0x14t
        0x44t
        0x43t
        0x54t
        0x5ct
        0x1et
    .end array-data
.end method

.method static toggleMask([BJ[BJ)V
    .locals 4

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    int-to-long v2, v1

    rem-long v2, p4, v2

    long-to-int v2, v2

    aget-byte v3, p0, v0

    aget-byte v2, p3, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x1

    add-long/2addr p4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static validateCloseCode(I)V
    .locals 2

    invoke-static {p0}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method
