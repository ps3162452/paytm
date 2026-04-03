.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lokio/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lokio/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lokio/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lokio/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lokio/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    new-array v0, v6, [B

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v1, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9d95a7"

    const v2, -0x31d63294

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "fe1b61"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "66ae2e"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "1dfcbc"

    const/16 v2, -0x25a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "0e29f2"

    const-wide v2, 0x41cefdbe69000000L    # 1.039891666E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "c9b47a"

    invoke-static {v0, v1, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "93b9e5"

    const-wide v2, -0x3e3183076d800000L    # -1.023013157E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;

    new-array v0, v5, [B

    fill-array-data v0, :array_7

    const-string v1, "57ff09"

    const-wide/32 v2, -0x12d375df

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    new-array v0, v5, [B

    fill-array-data v0, :array_8

    const-string v1, "a62a2d"

    const-wide/32 v2, 0x3d824dfb

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    new-array v0, v5, [B

    fill-array-data v0, :array_9

    const-string v1, "190582"

    const v2, -0x314128b2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    new-array v0, v5, [B

    fill-array-data v0, :array_a

    const-string v1, "a5104a"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "f23e9a"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    new-instance v0, Lokhttp3/internal/Util$1;

    invoke-direct {v0}, Lokhttp3/internal/Util$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "78c8a1"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x5ct
        0x2t
        0x5bt
        0x57t
        0x3t
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x57t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x50t
        0x50t
        0x7t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x54t
        0x56t
        0x53t
        0x4t
        0x5t
        0x57t
        0x2t
    .end array-data

    :array_4
    .array-data 1
        0x56t
        0x3t
        0x54t
        0x5ft
        0x56t
        0x2t
        0x0t
        0x55t
    .end array-data

    :array_5
    .array-data 1
        0x36t
        0x6dt
        0x24t
        0x19t
        0xft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x70t
        0x60t
        0x2dt
        0x14t
        0x5dt
        0xdt
        0xct
        0xat
        0x4ft
        0x8t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x60t
        0x63t
        0x20t
        0x4bt
        0x1t
        0xft
        0x77t
        0x72t
    .end array-data

    :array_8
    .array-data 1
        0x34t
        0x62t
        0x74t
        0x4ct
        0x3t
        0x52t
        0x2dt
        0x73t
    .end array-data

    :array_9
    .array-data 1
        0x64t
        0x6dt
        0x76t
        0x18t
        0xbt
        0x0t
        0x73t
        0x7ct
    .end array-data

    :array_a
    .array-data 1
        0x34t
        0x61t
        0x77t
        0x1dt
        0x7t
        0x53t
        0x2dt
        0x70t
    .end array-data

    :array_b
    .array-data 1
        0x21t
        0x7ft
        0x67t
    .end array-data

    :array_c
    .array-data 1
        0x1ft
        0x63t
        0x53t
        0x15t
        0x58t
        0x50t
        0x1at
        0x5et
        0x22t
        0x15t
        0x27t
        0x6ct
        0x1dt
        0x2t
        0x38t
        0x8t
        0x4ct
        0x8t
        0x56t
        0x15t
        0x5t
        0x79t
        0x4ct
        0x77t
        0xdt
        0x16t
        0x3et
        0x12t
        0x48t
        0x4dt
        0x1ft
        0x63t
        0x3ft
        0x5ct
        0x4ft
        0x6ct
        0x1ct
        0x11t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/AssertionError;

    return-object v0
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    sget-object p1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    sget-object p1, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_2
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    sget-object p1, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_3
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    sget-object p1, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_4
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    sget-object p1, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v1, v5, [B

    const/16 v2, 0xb

    aput-byte v2, v1, v4

    const-string v2, "15f576"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v5, [B

    const/16 v2, 0x63

    aput-byte v2, v1, v4

    const-string v2, "80f358"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v5, [B

    const/16 v2, 0x69

    aput-byte v2, v1, v4

    const-string v2, "4d7ae0"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v5, v1}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v4, v1}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lokhttp3/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "68d0da"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [B

    const/16 v3, 0x11

    aput-byte v3, v2, v4

    const-string v3, "698163"

    const-wide/32 v4, 0x48975a21

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :array_0
    .array-data 1
        0x7ft
        0x56t
        0x12t
        0x51t
        0x8t
        0x8t
        0x52t
        0x18t
        0x2dt
        0x60t
        0x12t
        0x57t
        0x16t
        0x59t
        0x0t
        0x54t
        0x16t
        0x4t
        0x45t
        0x4bt
        0x5et
        0x10t
        0x43t
    .end array-data
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7

    const/16 v6, 0xb

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4473a4"

    const v4, -0x3105c94a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "4d4689"

    const v3, -0x31df5261

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "0c10e0"

    const/16 v4, -0x7a7c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "f99042"

    const-wide v4, -0x3e29d89a74400000L    # -1.486722607E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    long-to-int v0, v0

    return v0

    :array_0
    .array-data 1
        0x14t
        0x8t
        0x17t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0xat
        0x5dt
        0x42t
        0x18t
        0x4t
        0x9t
        0x44t
        0x5at
        0x43t
        0x54t
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x17t
        0x5et
        0x5ft
        0x45t
        0x5ct
        0x51t
        0x11t
        0x56t
        0x55t
        0x4bt
    .end array-data

    :array_3
    .array-data 1
        0x46t
        0x4dt
        0x56t
        0x5ft
        0x14t
        0x41t
        0xbt
        0x58t
        0x55t
        0x5ct
        0x1at
    .end array-data
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_2

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "0c0b6e"

    const v6, 0x4e204af0    # 6.723164E8f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x10t
        0x40t
        0x15t
        0x4dt
        0xct
        0x5at
        0x70t
        0x38t
        0x6ct
        0x3ft
    .end array-data
.end method

.method public static decodeHexDigit(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 7

    const/4 v0, 0x0

    move v1, p1

    move v4, p4

    :goto_0
    if-ge v1, p2, :cond_6

    array-length v2, p3

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-eq v4, p4, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_2
    move v2, v0

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    :cond_3
    sub-int v1, v3, v1

    if-eqz v1, :cond_0

    int-to-byte v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    if-ne v1, v3, :cond_0

    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    const/16 v5, 0xff

    if-gt v2, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, p4, 0x4

    if-ne v4, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0x10

    new-array v5, v0, [B

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, -0x1

    move v3, v2

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_2

    array-length v4, v5

    if-ne v1, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v4, v2, 0x2

    if-gt v4, p2, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v6, "07c0ca"

    const/16 v7, 0x529c

    invoke-static {v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0, v2, v4, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v1, 0x2

    if-ne v2, p2, :cond_e

    move v1, v0

    :cond_2
    :goto_2
    array-length v2, v5

    if-eq v1, v2, :cond_d

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput-byte v7, v4, v6

    const-string v6, "3cf93d"

    const-wide/32 v8, -0x79e38d24

    invoke-static {v4, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v2, v4, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_3
    const/4 v3, 0x0

    move v4, v2

    :goto_4
    if-ge v4, p2, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lokhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    :cond_5
    sub-int v6, v4, v2

    if-eqz v6, :cond_6

    const/4 v7, 0x4

    if-le v6, v7, :cond_b

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v6, 0x0

    const/16 v7, 0x4d

    aput-byte v7, v4, v6

    const-string v6, "cbffa9"

    const v7, -0x3107dc8b

    invoke-static {v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v2, v4, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v2, v1, -0x2

    invoke-static {p0, v3, p2, v5, v2}, Lokhttp3/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    add-int/lit8 v1, v6, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    move v3, v2

    move v2, v4

    goto/16 :goto_0

    :cond_c
    array-length v2, v5

    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    sub-int v3, v1, v0

    invoke-static {v5, v0, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v5

    sub-int v1, v2, v1

    add-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v5, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_d
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    move v1, v0

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0xat
        0xdt
    .end array-data
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 2

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    move p2, v0

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move p2, v0

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [B

    const/16 v2, 0xe

    aput-byte v2, v1, v4

    const-string v2, "4717cf"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v5, [B

    const/16 v2, 0x6a

    aput-byte v2, v1, v4

    const-string v2, "1098bb"

    const v3, -0x32116710    # -5.0037504E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v5, [B

    const/16 v2, 0x3c

    aput-byte v2, v1, v4

    const-string v2, "aec36f"

    const/16 v3, 0x777b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v5, [B

    const/4 v2, 0x3

    aput-byte v2, v1, v4

    const-string v2, "9cdcc4"

    const/16 v3, -0x4e99

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0x3a

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v5, v0

    :goto_1
    if-ge v5, v8, :cond_0

    aget-byte v4, p0, v5

    if-nez v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_1

    :cond_0
    sub-int v4, v5, v0

    if-le v4, v2, :cond_1

    const/4 v6, 0x4

    if-lt v4, v6, :cond_1

    move v2, v4

    move v3, v0

    :cond_1
    add-int/lit8 v0, v5, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_6

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/2addr v1, v2

    if-ne v1, v8, :cond_3

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {v0, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :cond_5
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p1, v2

    array-length v6, p2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, p2, v0

    invoke-interface {p0, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e6811e"

    const-wide v4, -0x3e36c2f57c800000L    # -8.46861575E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x2t
        0x53t
        0x4ct
        0x42t
        0x5et
        0x6t
        0xet
        0x58t
        0x59t
        0x5ct
        0x54t
        0x45t
        0x3t
        0x57t
        0x51t
        0x5dt
        0x54t
        0x1t
    .end array-data
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    array-length v5, p2

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v6, p2, v1

    invoke-interface {p0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    :goto_0
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :try_start_0
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_2
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    :catchall_0
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_5
    throw v4

    :cond_4
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_5
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    :cond_0
    return p2

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 p1, v0, 0x1

    :cond_0
    return p1

    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lokhttp3/internal/Util$2;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x7f

    const/16 v5, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-le v2, v5, :cond_0

    if-ge v2, v6, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v4, p0, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-le v1, v5, :cond_1

    if-ge v1, v6, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x3f

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    invoke-static {p0, v0, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
