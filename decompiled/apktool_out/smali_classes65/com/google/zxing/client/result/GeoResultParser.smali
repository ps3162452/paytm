.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "56cf1e"

    const-wide/32 v2, 0xe99f914

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x52t
        0x53t
        0xct
        0x5ct
        0x19t
        0x3et
        0x69t
        0x1bt
        0x53t
        0x4bt
        0x8t
        0x4bt
        0x68t
        0x1dt
        0x4at
        0x4at
        0x19t
        0x3et
        0x69t
        0x1bt
        0x53t
        0x4bt
        0x8t
        0x4bt
        0x68t
        0x1dt
        0x4at
        0x4et
        0xet
        0x5ft
        0x19t
        0x1et
        0x38t
        0x3at
        0x1ct
        0x55t
        0x18t
        0xft
        0x4dt
        0x3bt
        0x1at
        0x4ct
        0x1ct
        0x9t
        0x4bt
        0x59t
        0xbt
        0x39t
        0xat
        0x1et
        0x4dt
        0x4ct
        0x18t
        0x4ct
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v9

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_1

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    :cond_1
    move-object v1, v9

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v1, v4, v10

    if-gtz v1, :cond_3

    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v4, v10

    if-gez v1, :cond_4

    :cond_3
    move-object v1, v9

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_5

    :goto_1
    new-instance v1, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_6

    move-object v1, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    goto :goto_0

    :cond_6
    move-wide v6, v0

    goto :goto_1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v0

    return-object v0
.end method
