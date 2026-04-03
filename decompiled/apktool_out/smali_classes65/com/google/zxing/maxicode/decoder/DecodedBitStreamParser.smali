.class final Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;


# static fields
.field private static final ECI:C = '\ufffa'

.field private static final FS:C = '\u001c'

.field private static final GS:C = '\u001d'

.field private static final LATCHA:C = '\ufff7'

.field private static final LATCHB:C = '\ufff8'

.field private static final LOCK:C = '\ufff9'

.field private static final NINE_DIGITS:Ljava/text/NumberFormat;

.field private static final NS:C = '\ufffb'

.field private static final PAD:C = '\ufffc'

.field private static final RS:C = '\u001e'

.field private static final SETS:[Ljava/lang/String;

.field private static final SHIFTA:C = '\ufff0'

.field private static final SHIFTB:C = '\ufff1'

.field private static final SHIFTC:C = '\ufff2'

.field private static final SHIFTD:C = '\ufff3'

.field private static final SHIFTE:C = '\ufff4'

.field private static final THREESHIFTA:C = '\ufff6'

.field private static final THREE_DIGITS:Ljava/text/NumberFormat;

.field private static final TWOSHIFTA:C = '\ufff5'


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/text/DecimalFormat;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d63fb6"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->NINE_DIGITS:Ljava/text/NumberFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "94f5c0"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->THREE_DIGITS:Ljava/text/NumberFormat;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x50

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "2870ce"

    const-wide/32 v4, -0x49718a9a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x58

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "05da87"

    const v3, 0x4ed08b1e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const/16 v2, 0x80

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "b9d688"

    const-wide v4, -0x3e3570cc58800000L    # -8.91184975E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "78b12b"

    const v3, -0x3260f238

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const/16 v2, 0x68

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "1056d9"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x40

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "52bc9e"

    const v4, -0x32fc39a0    # -1.38176E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x54t
        0x6t
        0x3t
        0x56t
        0x52t
        0x6t
        0x54t
        0x6t
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0x4t
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x38t
        0x79t
        0x75t
        0x73t
        0x27t
        0x20t
        0x74t
        0x7ft
        0x7ft
        0x79t
        0x29t
        0x2et
        0x7et
        0x75t
        0x79t
        0x7ft
        0x33t
        0x34t
        0x60t
        0x6bt
        0x63t
        0x65t
        0x35t
        0x32t
        0x6at
        0x61t
        0x6dt
        -0x21t
        -0x24t
        -0x21t
        0x2et
        0x25t
        0x29t
        -0x21t
        -0x24t
        -0x22t
        0x12t
        -0x29t
        -0x78t
        -0x74t
        0x41t
        0x46t
        0x16t
        0x1dt
        0x11t
        0x17t
        0x4bt
        0x4ct
        0x18t
        0x13t
        0x1bt
        0x1dt
        0x4dt
        0x4at
        0x2t
        0x9t
        0x5t
        0x3t
        0x57t
        0x50t
        0x4t
        0xft
        0xft
        0x9t
        0x59t
        -0x76t
        -0x73t
        -0x77t
        -0x28t
        -0x71t
        -0x2ft
        -0x76t
        -0x73t
        -0x75t
        -0x28t
        -0x71t
        -0x29t
        -0x76t
        -0x73t
        -0x80t
    .end array-data

    :array_3
    .array-data 1
        0x50t
        0x54t
        0x6t
        0x2t
        0x5ct
        0x52t
        0x56t
        0x52t
        0xct
        0x8t
        0x52t
        0x5ct
        0x5ct
        0x58t
        0xat
        0xet
        0x48t
        0x46t
        0x42t
        0x46t
        0x10t
        0x14t
        0x4et
        0x40t
        0x48t
        0x4ct
        0x1et
        -0x72t
        -0x79t
        -0x73t
        0x2ct
        0x28t
        0x7at
        -0x72t
        -0x79t
        -0x74t
        0x4bt
        -0x26t
        -0x25t
        -0x23t
        0x45t
        0x49t
        0x4ft
        0xet
        0x58t
        0x5ct
        0x6t
        0x8t
        0x6bt
        0x69t
        0x39t
        0x3ft
        0x67t
        0x17t
        0x1ct
        0x1bt
        0x4bt
        0x5bt
        0x78t
        0x16t
        0x4ct
        -0x26t
        -0x25t
        -0x23t
        -0x29t
        -0x78t
        -0x7bt
        -0x26t
        -0x25t
        -0x29t
        -0x29t
        -0x78t
        -0x74t
        -0x26t
        -0x25t
        -0x2ft
        -0x29t
        -0x78t
        -0x7et
        -0x26t
        -0x25t
        -0x2et
        -0x29t
        -0x78t
        -0x7ct
        -0x26t
        -0x25t
        -0x2at
    .end array-data

    :array_4
    .array-data 1
        -0x5ft
        -0x47t
        -0x59t
        -0x49t
        -0x5t
        -0x46t
        -0x5ft
        -0x46t
        -0x59t
        -0x4et
        -0x5t
        -0x43t
        -0x5ft
        -0x41t
        -0x59t
        -0x4ft
        -0x5t
        -0x50t
        -0x5ft
        -0x50t
        -0x59t
        -0x44t
        -0x5t
        -0x4dt
        -0x5ft
        -0x4bt
        -0x59t
        -0x45t
        -0x5t
        -0x4at
        -0x5ft
        -0x4at
        -0x59t
        -0x5at
        -0x5t
        -0x57t
        -0x5ft
        -0x55t
        -0x59t
        -0x5bt
        -0x5t
        -0x54t
        -0x5ft
        -0x54t
        -0x59t
        -0x60t
        -0x5t
        -0x51t
        -0x5ft
        -0x5ft
        -0x59t
        -0x51t
        -0x5t
        -0x5et
        -0x73t
        -0x7at
        -0x22t
        0x2at
        0x25t
        0x26t
        -0x5ft
        -0x5et
        -0x59t
        -0x56t
        -0x5t
        -0x5bt
        -0x5ft
        -0x59t
        -0x59t
        -0x57t
        -0x6t
        -0x6et
        -0x60t
        -0x6bt
        -0x5at
        -0x79t
        -0x6t
        -0x76t
        -0x60t
        -0x76t
        -0x5at
        -0x7dt
        -0x6t
        -0x7ft
        -0x60t
        -0x7dt
        -0x5at
        -0x76t
        -0x6t
        -0x7bt
        -0x60t
        -0x79t
        -0x5at
        -0x4at
        -0x6t
        -0x47t
        -0x60t
        -0x45t
        -0x5at
        -0x4bt
        -0x6t
        -0x44t
        -0x60t
        -0x44t
        -0x5at
        -0x50t
        -0x6t
        -0x41t
        -0x60t
        -0x4ft
        -0x5at
        -0x41t
        -0x29t
        -0x79t
        -0x2bt
        0x19t
        -0x75t
        -0x77t
        -0x7ft
        -0x29t
        -0x23t
        -0x76t
        -0x75t
        -0x77t
        -0x74t
        -0x29t
        -0x23t
        -0x7ft
    .end array-data

    :array_5
    .array-data 1
        -0xct
        -0x68t
        -0x5ft
        -0x70t
        -0xft
        -0x40t
        -0xct
        -0x65t
        -0x5ft
        -0x6bt
        -0xft
        -0x39t
        -0xct
        -0x62t
        -0x5ft
        -0x6at
        -0xft
        -0x36t
        -0xct
        -0x6ft
        -0x5ft
        -0x65t
        -0xft
        -0x37t
        -0xct
        -0x6ct
        -0x5ft
        -0x64t
        -0xft
        -0x34t
        -0xct
        -0x69t
        -0x5ft
        -0x7ft
        -0xft
        -0x2dt
        -0xct
        -0x76t
        -0x5ft
        -0x7et
        -0xft
        -0x2at
        -0xct
        -0x73t
        -0x5ft
        -0x79t
        -0xft
        -0x2bt
        -0xct
        -0x80t
        -0x5ft
        -0x78t
        -0xft
        -0x28t
        -0x28t
        -0x79t
        -0x28t
        0x2dt
        0x2ft
        0x7ct
        -0x28t
        -0x79t
        -0x27t
        -0xet
        -0x77t
        -0x5ft
        -0x75t
        -0x5t
        -0x21t
        -0xet
        -0x74t
        -0x5ft
        -0x78t
        -0x6t
        -0x3dt
        -0xdt
        -0x66t
        -0x60t
        -0x64t
        -0x6t
        -0x33t
        -0xdt
        -0x7et
        -0x60t
        -0x7dt
        -0x6t
        -0x2bt
        -0xdt
        -0x76t
        -0x60t
        -0x74t
        -0x6t
        -0x23t
        -0xdt
        -0x48t
        -0x60t
        -0x44t
        -0x6t
        -0x12t
        -0xdt
        -0x41t
        -0x60t
        -0x47t
        -0x6t
        -0x13t
        -0xdt
        -0x5et
        -0x60t
        -0x5at
        -0x6t
        -0x10t
        -0xdt
        -0x5ft
        -0x60t
        -0x5dt
        -0x29t
        -0x23t
        -0x7at
        0x12t
        -0x73t
        -0x78t
        -0x76t
        -0x73t
        -0x72t
        -0x75t
        -0x73t
        -0x78t
        -0x74t
        -0x73t
        -0x72t
        -0x76t
    .end array-data

    :array_6
    .array-data 1
        0x31t
        0x31t
        0x37t
        0x35t
        0x60t
        0x3ct
        0x37t
        0x37t
        0x3dt
        0x3ft
        0x6et
        0x32t
        0x3dt
        0x3dt
        0x3bt
        0x39t
        0x74t
        0x28t
        0x23t
        0x23t
        0x21t
        0x23t
        0x72t
        0x2et
        0x29t
        0x29t
        0x2ft
        -0x27t
        -0x25t
        -0x7dt
        -0x22t
        -0x71t
        -0x77t
        -0x27t
        -0x25t
        -0x7bt
        0x2at
        -0x21t
        -0x76t
        -0x73t
        0x78t
        0x24t
        0x2ft
        0x2ft
        -0x9t
        -0x57t
        -0x5at
        -0x67t
        -0xdt
        -0x6et
        -0x9t
        -0x6bt
        -0x5at
        -0x63t
        -0xdt
        -0x6bt
        -0x9t
        -0x70t
        -0x5at
        -0x62t
        -0xdt
        -0x67t
        -0x9t
        -0x65t
        -0x5at
        -0x69t
        -0xdt
        -0x7at
        -0x9t
        -0x5dt
        -0x5at
        -0x51t
        -0xdt
        -0x59t
        -0x9t
        -0x52t
        -0x5at
        -0x60t
        -0xdt
        -0x56t
        -0x9t
        -0x53t
        -0x5at
        -0x5bt
        -0xdt
        -0x53t
        -0x9t
        -0x58t
        -0x75t
        -0x7at
        -0x7at
        0x10t
        -0x26t
        -0x77t
        -0x2at
        -0x2at
        -0x72t
        -0x7dt
        -0x26t
        -0x77t
        -0x23t
        -0x2at
        -0x72t
        -0x78t
    .end array-data

    :array_7
    .array-data 1
        0x35t
        0x33t
        0x60t
        0x60t
        0x3dt
        0x60t
        0x33t
        0x35t
        0x6at
        0x6at
        0x33t
        0x6et
        0x39t
        0x3ft
        0x6ct
        0x6ct
        0x29t
        0x74t
        0x27t
        0x21t
        0x76t
        0x76t
        0x2ft
        0x72t
        0x2dt
        0x2bt
        0x78t
        0x78t
        0x25t
        0x78t
        0x2bt
        0x2dt
        0x42t
        0x42t
        0x1bt
        0x46t
        0x11t
        0x17t
        0x44t
        0x44t
        0x11t
        0x4ct
        0x1ft
        0x19t
        0x4et
        0x4et
        0x17t
        0x4at
        0x5t
        0x3t
        0x50t
        0x50t
        0xdt
        0x50t
        0x3t
        0x5t
        0x5at
        0x5at
        0x3t
        0x5et
        0x9t
        0xft
        0x5ct
        0x5ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BI)Lcom/google/zxing/common/DecoderResult;
    .locals 11

    const/16 v10, 0xa

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x90

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2([B)I

    move-result v0

    new-instance v2, Ljava/text/DecimalFormat;

    new-array v3, v10, [B

    fill-array-data v3, :array_0

    const-string v4, "e1cdbc"

    const-wide/32 v6, -0x1a3c5cc4

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2Length([B)I

    move-result v4

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->THREE_DIGITS:Ljava/text/NumberFormat;

    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getCountry([B)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->THREE_DIGITS:Ljava/text/NumberFormat;

    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getServiceClass([B)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x54

    invoke-static {p0, v10, v4}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "1fb91c"

    invoke-static {v5, v6, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode3([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0x5d

    invoke-static {p0, v2, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x4d

    invoke-static {p0, v2, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x55t
        0x1t
        0x53t
        0x54t
        0x52t
        0x53t
        0x55t
        0x1t
        0x53t
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6at
        0x4ft
        0x5ct
        0x27t
        0x1t
        0x52t
        0x2ct
    .end array-data
.end method

.method private static getBit(I[B)I
    .locals 3

    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    div-int/lit8 v2, v1, 0x6

    aget-byte v2, p1, v2

    rem-int/lit8 v1, v1, 0x6

    rsub-int/lit8 v1, v1, 0x5

    shl-int v1, v0, v1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static getCountry([B)I
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data
.end method

.method private static getInt([B[B)I
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-byte v2, p1, v0

    invoke-static {v2, p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getBit(I[B)I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getMessage([BII)Ljava/lang/String;
    .locals 12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    add-int v4, p1, p2

    if-ge v0, v4, :cond_1

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-byte v6, p0, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, -0x1

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x1

    const/4 v3, -0x1

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_1

    :pswitch_3
    const v1, 0xfff0

    sub-int v1, v4, v1

    const/4 v3, 0x1

    move v11, v0

    move v0, v1

    move v1, v2

    move v2, v11

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x0

    const/4 v3, 0x2

    move v11, v0

    move v0, v1

    move v1, v2

    move v2, v11

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x0

    const/4 v3, 0x3

    move v11, v0

    move v0, v1

    move v1, v2

    move v2, v11

    goto :goto_1

    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    aget-byte v4, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v6, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v7, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v8, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v9, p0, v0

    sget-object v10, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->NINE_DIGITS:Ljava/text/NumberFormat;

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v6, v6, 0x12

    add-int/2addr v4, v6

    shl-int/lit8 v6, v7, 0xc

    add-int/2addr v4, v6

    shl-int/lit8 v6, v8, 0x6

    add-int/2addr v4, v6

    add-int/2addr v4, v9

    int-to-long v6, v4

    invoke-virtual {v10, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_1

    :pswitch_7
    const/4 v3, -0x1

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const v1, 0xfffc

    if-ne v0, v1, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xfff0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getPostCode2([B)I
    .locals 1

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getPostCode2Length([B)I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data
.end method

.method private static getPostCode3([B)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    new-array v0, v5, [C

    sget-object v1, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    invoke-static {p0, v2}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_2

    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_3

    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_4

    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_5

    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    nop

    :array_4
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getServiceClass([B)I
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method
