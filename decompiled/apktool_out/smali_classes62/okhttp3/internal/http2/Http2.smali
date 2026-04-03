.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;


# static fields
.field static final BINARY:[Ljava/lang/String;

.field static final CONNECTION_PREFACE:Lokio/ByteString;

.field static final FLAGS:[Ljava/lang/String;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x7

    const/16 v13, 0x8

    const/4 v12, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "6820ae"

    const-wide v4, -0x3e241d2eae800000L    # -1.871398214E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    new-array v2, v12, [B

    fill-array-data v2, :array_1

    const-string v3, "d3503c"

    invoke-static {v2, v3, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v2, v14, [B

    fill-array-data v2, :array_2

    const-string v3, "c20f11"

    const/16 v4, 0x2b3c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    const/4 v2, 0x2

    new-array v3, v13, [B

    fill-array-data v3, :array_3

    const-string v4, "6e1ad9"

    const/16 v5, 0x3b83

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "c962b4"

    const v5, 0x4edd9205

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-array v2, v13, [B

    fill-array-data v2, :array_5

    const-string v3, "691af3"

    invoke-static {v2, v3, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    const/4 v2, 0x5

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "8b88e9"

    const-wide v6, -0x3e3b0c20e3000000L    # -7.0305337E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v12, [B

    fill-array-data v3, :array_7

    const-string v4, "e44a1c"

    const v5, 0x4e69a51e    # 9.799781E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const-string v3, "bbddae"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v14

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "f49413"

    const-wide/32 v4, -0x56953531

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    const/16 v2, 0x9

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_a

    const-string v4, "49a326"

    const-wide v6, 0x41d81aba53400000L    # 1.617619277E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    move v0, v1

    :goto_0
    sget-object v2, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_b

    const-string v4, "7ec380"

    const/16 v5, 0x2e15

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "fd1f38"

    const-wide v4, -0x3e2322f755c00000L    # -1.936990889E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    new-array v3, v9, [I

    aput v9, v3, v1

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const-string v4, "231309"

    const-wide v6, 0x41d7de5301400000L    # 1.601784837E9

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    array-length v2, v3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget v4, v3, v0

    sget-object v5, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v6, v4, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v4, v8, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v7, v14, [B

    fill-array-data v7, :array_e

    const-string v8, "6caa60"

    const-wide/32 v10, 0x257812dd

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v4, "c6812d"

    const v5, 0x4c9fb18d    # 8.3725416E7f

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v2, 0x20

    new-array v4, v13, [B

    fill-array-data v4, :array_10

    const-string v5, "f6b95c"

    const v6, 0x4e58be3f    # 9.0908666E8f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v2, 0x24

    const/16 v4, 0x14

    new-array v4, v4, [B

    fill-array-data v4, :array_11

    const-string v5, "9335c3"

    const-wide/32 v6, 0x57136973

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v0, 0x3

    new-array v4, v0, [I

    aput v12, v4, v1

    const/16 v0, 0x20

    aput v0, v4, v9

    const/4 v0, 0x2

    const/16 v2, 0x24

    aput v2, v4, v0

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    aget v6, v4, v2

    array-length v7, v3

    move v0, v1

    :goto_3
    if-ge v0, v7, :cond_2

    aget v8, v3, v0

    sget-object v9, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v10, v8, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    sget-object v9, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v10, v8, v6

    or-int/lit8 v10, v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v8, v12, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x7c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-array v11, v14, [B

    fill-array-data v11, :array_12

    const-string v12, "aa8338"

    const v13, -0x325e92d6

    invoke-static {v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    :goto_4
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void

    :array_0
    .array-data 1
        0x66t
        0x6at
        0x7bt
        0x10t
        0x4bt
        0x45t
        0x7et
        0x6ct
        0x66t
        0x60t
        0x4et
        0x57t
        0x18t
        0x8t
        0x3ft
        0x3at
        0x6ct
        0x6ft
        0x65t
        0x75t
        0x3ft
        0x3at
        0x6ct
        0x6ft
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x72t
        0x61t
        0x71t
    .end array-data

    :array_2
    .array-data 1
        0x2bt
        0x77t
        0x71t
        0x22t
        0x74t
        0x63t
        0x30t
    .end array-data

    :array_3
    .array-data 1
        0x66t
        0x37t
        0x78t
        0x2et
        0x36t
        0x70t
        0x62t
        0x3ct
    .end array-data

    :array_4
    .array-data 1
        0x31t
        0x6at
        0x62t
        0x6dt
        0x31t
        0x60t
        0x31t
        0x7ct
        0x77t
        0x7ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x65t
        0x7ct
        0x65t
        0x35t
        0x2ft
        0x7dt
        0x71t
        0x6at
    .end array-data

    :array_6
    .array-data 1
        0x68t
        0x37t
        0x6bt
        0x70t
        0x3at
        0x69t
        0x6at
        0x2dt
        0x75t
        0x71t
        0x36t
        0x7ct
    .end array-data

    :array_7
    .array-data 1
        0x35t
        0x7dt
        0x7at
        0x26t
    .end array-data

    :array_8
    .array-data 1
        0x25t
        0x2dt
        0x25t
        0x33t
        0x20t
        0x3ct
    .end array-data

    nop

    :array_9
    .array-data 1
        0x31t
        0x7dt
        0x77t
        0x70t
        0x7et
        0x64t
        0x39t
        0x61t
        0x69t
        0x70t
        0x70t
        0x67t
        0x23t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x77t
        0x76t
        0x2ft
        0x67t
        0x7bt
        0x78t
        0x61t
        0x78t
        0x35t
        0x7at
        0x7dt
        0x78t
    .end array-data

    :array_b
    .array-data 1
        0x12t
        0x5dt
        0x10t
    .end array-data

    :array_c
    .array-data 1
        0x23t
        0x2at
        0x75t
        0x39t
        0x60t
        0x6ct
        0x34t
        0x21t
        0x70t
        0x2bt
    .end array-data

    nop

    :array_d
    .array-data 1
        0x62t
        0x72t
        0x75t
        0x77t
        0x75t
        0x7dt
    .end array-data

    nop

    :array_e
    .array-data 1
        0x4at
        0x33t
        0x20t
        0x25t
        0x72t
        0x75t
        0x72t
    .end array-data

    :array_f
    .array-data 1
        0x26t
        0x78t
        0x7ct
        0x6et
        0x7at
        0x21t
        0x22t
        0x72t
        0x7dt
        0x63t
        0x61t
    .end array-data

    :array_10
    .array-data 1
        0x36t
        0x64t
        0x2bt
        0x76t
        0x67t
        0x2at
        0x32t
        0x6ft
    .end array-data

    :array_11
    .array-data 1
        0x7ct
        0x7dt
        0x77t
        0x6at
        0x2bt
        0x76t
        0x78t
        0x77t
        0x76t
        0x67t
        0x30t
        0x4ft
        0x69t
        0x61t
        0x7at
        0x7at
        0x31t
        0x7at
        0x6dt
        0x6at
    .end array-data

    :array_12
    .array-data 1
        0x1dt
        0x31t
        0x79t
        0x77t
        0x77t
        0x7dt
        0x25t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6bf85f"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b465ce"

    const v4, -0x32b943ff

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-ne p1, v3, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "cd85f8"

    const-wide v2, -0x3e2da61718400000L    # -1.231528863E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_3
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_1

    :cond_4
    if-nez p0, :cond_0

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "0297f8"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "c590b0"

    const-wide/32 v4, 0x4da6cfb0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x7et
        0x27t
        0x27t
        0x7ct
        0x70t
        0x34t
        0x65t
    .end array-data

    :array_1
    .array-data 1
        0x32t
        0x61t
        0x65t
        0x7dt
        0x3ct
        0x35t
        0x30t
        0x7bt
        0x7bt
        0x7ct
        0x30t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x22t
        0x27t
        0x73t
    .end array-data

    :array_3
    .array-data 1
        0x60t
        0x60t
        0x70t
        0x78t
        0x34t
        0x71t
        0x64t
        0x6bt
    .end array-data

    :array_4
    .array-data 1
        0x20t
        0x7at
        0x74t
        0x60t
        0x30t
        0x75t
        0x30t
        0x66t
        0x7ct
        0x74t
    .end array-data
.end method

.method static frameLog(ZIIBB)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    sget-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p3

    :goto_0
    invoke-static {p3, p4}, Lokhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v3, "24aadc"

    const/16 v4, -0x6f58

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "aa2ab1"

    invoke-static {v3, v4, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "1dd0b7"

    const-wide v2, 0x41c0ce1b41000000L    # 5.63885698E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v3, "90e8d7"

    const/16 v4, 0x4bfb

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :array_0
    .array-data 1
        0xet
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x12t
        0x12t
        0x51t
        0x1at
        0x14t
        0x51t
        0x59t
        0x4at
        0x41t
        0x47t
        0x4t
        0x5t
        0x41t
        0x17t
        0x4ct
        0x53t
        0x2t
        0x12t
        0x41t
        0x17t
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x1ct
        0x41t
        0x0t
        0x50t
        0x4ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7t
        0xet
    .end array-data
.end method

.method static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
