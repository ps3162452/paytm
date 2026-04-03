.class public final Lcom/google/zxing/client/result/URIResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# static fields
.field private static final URL_WITHOUT_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;

.field private static final URL_WITH_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b12c01"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/URIResultParser;->URL_WITH_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "22e61b"

    const-wide v2, -0x3e28d9d7d1c00000L    # -1.553506489E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/URIResultParser;->URL_WITHOUT_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x39t
        0x50t
        0x1ft
        0x19t
        0x71t
        0x1ct
        0x38t
        0x6ct
        0x69t
        0x2t
        0x1dt
        0x4bt
        0x23t
        0x1ct
        0x68t
        0x53t
        0x1dt
        0x8t
        0x49t
        0x1ct
        0x1ct
        0x3et
        0x1bt
        0xbt
    .end array-data

    :array_1
    .array-data 1
        0x1at
        0x69t
        0x4t
        0x1bt
        0x4bt
        0x23t
        0x1ft
        0x68t
        0x55t
        0x1bt
        0x8t
        0x3et
        0x1ft
        0x6ft
        0x4et
        0x6at
        0x1ft
        0x4bt
        0x19t
        0x69t
        0x4t
        0x1bt
        0x4bt
        0x23t
        0x1ft
        0x68t
        0x38t
        0x4dt
        0x3t
        0x4et
        0x4ft
        0x1at
        0x5ft
        0x6at
        0x55t
        0x19t
        0x3t
        0x1et
        0x50t
        0x4bt
        0x18t
        0x5dt
        0x1at
        0x1dt
        0x19t
        0x6at
        0xet
        0x1et
        0x16t
        0x1bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method static isBasicallyValidURI(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/google/zxing/client/result/URIResultParser;->URL_WITH_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lcom/google/zxing/client/result/URIResultParser;->URL_WITHOUT_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/URIResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x4

    invoke-static {p1}, Lcom/google/zxing/client/result/URIResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v3, "1018e8"

    const-wide v4, 0x41c4e0ade4800000L    # 7.00537801E8

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v3, "7c6faa"

    const v4, -0x31cb06b3

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x64t
        0x62t
        0x7dt
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x62t
        0x31t
        0x7ft
        0x5ct
    .end array-data
.end method
