.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1d5ba9"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "00a238"

    const-wide/32 v2, -0xf006478

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "345143"

    const v2, -0x317cb6dd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "b1f524"

    const v2, 0x4ea22aae

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "411b58"

    const-wide/32 v2, 0x5fb50507

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    new-array v0, v4, [B

    aput-byte v7, v0, v5

    const-string v1, "4845c0"

    const/16 v2, -0x609c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    new-array v0, v4, [B

    const/16 v1, 0xc

    aput-byte v1, v0, v5

    const-string v1, "7a93ff"

    const v2, 0x4d0d6d53    # 1.4829701E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "0c8707"

    const-wide v2, -0x3e2b9ccbe2c00000L    # -1.368182901E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    new-array v0, v4, [B

    const/16 v1, 0x1f

    aput-byte v1, v0, v5

    const-string v1, "3e70cb"

    const-wide/32 v2, 0x165aae9a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "4dbd6f"

    const/16 v2, 0x7f43

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x73t
        0x21t
        0x72t
        0x2bt
        0x2ft
        0x3t
        0x67t
        0x27t
        0x74t
        0x30t
        0x25t
    .end array-data

    :array_1
    .array-data 1
        0x6ct
        0x54t
        0x1at
        0x6t
        0x4et
        0x15t
        0xft
        0x6ct
        0x5t
        0x49t
        0x1t
        0x45t
        0x1dt
        0xft
        0x3dt
        0x56t
        0x48t
        0xat
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        0x3et
        0x3et
        0x6et
        0x11t
        0x3dt
        0x6et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3et
        0x6dt
        0x3dt
        0x5bt
        0x7ct
        0x69t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x68t
        0x6dt
        0x19t
        0x39t
        0x19t
        0x3t
        0x68t
        0x6dt
        0x6ct
        0x4bt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x18t
        0x5ct
        0x4t
        0x16t
        0x6ct
        0x6bt
        0x19t
        0x58t
        0x13t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x6ft
        0x5ft
        0x4et
        0x39t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-static {v3, p1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_1
    add-int/lit8 v4, v1, -0x2

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v4

    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v5

    if-ltz v4, :cond_1

    if-ltz v5, :cond_1

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-static {v3, p1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    move v2, v3

    move v4, v3

    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_0

    const/16 v7, 0x3b

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_0

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x3

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v2, 0x1

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v2, 0x2

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v6, v3, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v2, 0x4

    invoke-static {v6, v2, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

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

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    :goto_0
    if-ge v2, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "cd94c0"

    const v6, 0x4ec279ff    # 1.6313875E9f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "d3c163"

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v8

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    if-eqz v11, :cond_5

    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v2, 0x0

    move-object v3, v9

    move v5, v10

    move v9, v2

    move-object v2, v4

    :goto_1
    if-ge v9, v12, :cond_5

    aget-object v4, v11, v9

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const/4 v13, 0x2

    invoke-virtual {v10, v4, v13}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v4

    array-length v10, v4

    const/4 v13, 0x1

    if-le v10, v13, :cond_14

    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v13, 0x1

    aget-object v4, v4, v13

    const/16 v13, 0x8

    new-array v13, v13, [B

    fill-array-data v13, :array_2

    const-string v14, "48db26"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x10

    new-array v13, v13, [B

    fill-array-data v13, :array_3

    const-string v14, "52622a"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v4

    goto :goto_1

    :cond_4
    const/4 v13, 0x7

    new-array v13, v13, [B

    fill-array-data v13, :array_4

    const-string v14, "c99e21"

    const-wide v16, 0x41d825dbc4400000L    # 1.620537105E9

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    move-object v3, v4

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_3
    const/16 v9, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_7

    add-int/lit8 v9, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_6

    add-int/lit8 v9, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_a

    const/4 v9, 0x1

    if-lt v4, v9, :cond_8

    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_9

    :cond_8
    const/4 v9, 0x2

    if-lt v4, v9, :cond_a

    add-int/lit8 v9, v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_a

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    if-gez v4, :cond_b

    move v2, v7

    move-object v3, v8

    :goto_4
    move-object v8, v3

    goto/16 :goto_0

    :cond_b
    if-le v4, v6, :cond_12

    if-nez v8, :cond_c

    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_c
    const/4 v9, 0x1

    if-lt v4, v9, :cond_d

    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_d

    add-int/lit8 v4, v4, -0x1

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :cond_e
    if-eqz v5, :cond_10

    invoke-static {v6, v3}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_f

    sget-object v5, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_f
    :goto_5
    if-nez v2, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move-object v3, v8

    goto :goto_4

    :cond_10
    if-eqz p3, :cond_13

    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_7
    sget-object v5, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "81fd8a"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v4, 0x1

    move-object v3, v8

    goto/16 :goto_4

    :cond_13
    move-object v3, v6

    goto :goto_7

    :cond_14
    move v4, v5

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x4bt
        0x5bt
        0x3t
        0x6at
        0x1ft
        0x3at
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x4ct
        0xct
        0x59t
        0xat
        0x1et
        0x68t
        0x3at
        0x9t
        0x3et
        0x1bt
        0x1ft
        0x1at
        0x5bt
        0x9t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x76t
        0x27t
        0x2dt
        0x76t
        0x7ft
        0x7at
        0x7ft
    .end array-data

    :array_3
    .array-data 1
        0x64t
        0x67t
        0x79t
        0x66t
        0x77t
        0x25t
        0x18t
        0x62t
        0x64t
        0x7bt
        0x7ct
        0x35t
        0x74t
        0x70t
        0x7at
        0x77t
    .end array-data

    :array_4
    .array-data 1
        0x20t
        0x71t
        0x78t
        0x37t
        0x61t
        0x74t
        0x37t
    .end array-data

    :array_5
    .array-data 1
        0x1ct
        0x0t
    .end array-data
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1

    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5

    const/4 v2, 0x5

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/String;

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "aea35a"

    const v4, 0x4ec3aeb9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4598a0"

    const v4, 0x4d626151    # 2.3737678E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x34t
        0x31t
        0x27t
        0x1et
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x61t
        0x7ft
        0x15t
        0x59t
    .end array-data
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    move v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2

    :goto_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "2e660c"

    const v9, 0x4ed8d1ef

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_3

    :array_0
    .array-data 1
        0x66t
        0x3ct
        0x66t
        0x73t
    .end array-data
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "68680d"

    const-wide/32 v4, 0x31dec673

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v6, v3, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x2a

    aput-byte v4, v2, v3

    const-string v3, "d5d2d1"

    const/16 v4, 0x79c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v6, v3, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    :cond_2
    move-object v3, v2

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v4, "6843be"

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v6, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v4, 0x0

    :goto_1
    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v5, "eda151"

    const-wide/32 v8, -0x343f0bc1

    invoke-static {v2, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v2, v6, v5, v7}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v5, "0e8de6"

    const v8, 0x4dd4d6cc    # 4.4635584E8f

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v9

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v5, "ff4ff0"

    const-wide v10, -0x3e29238764800000L    # -1.53419019E9

    invoke-static {v2, v5, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v5, "c1103e"

    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x1

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v5, "dea210"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x1

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v5, "0906e7"

    const-wide/32 v16, 0x200bbc0d

    move-wide/from16 v0, v16

    invoke-static {v2, v5, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move-object v15, v2

    :goto_2
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const-string v5, "76ace6"

    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v16

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v5, "3311b8"

    const/16 v8, 0x6d91

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v17

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v5, "09cb0a"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v5, "8ad0e1"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v6, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    const/16 v18, 0x0

    :goto_3
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/16 v18, 0x0

    :cond_3
    new-instance v2, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v3}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v7}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v10}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v13}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v15}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v17 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_5
    sget-object v5, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_6
    move-object v15, v5

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x70t
        0x76t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x78t
        0x71t
        0x77t
        0x78t
        0x2ct
        0x24t
        0x7bt
        0x7dt
    .end array-data

    :array_2
    .array-data 1
        0x31t
        0x21t
        0x2dt
    .end array-data

    :array_3
    .array-data 1
        0x75t
        0x28t
        0x79t
        0x2dt
        0x29t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x28t
        0x29t
        0x60t
        0x23t
    .end array-data

    :array_5
    .array-data 1
        0x22t
        0x75t
        0x63t
    .end array-data

    :array_6
    .array-data 1
        0x2bt
        0x37t
        0x26t
    .end array-data

    :array_7
    .array-data 1
        0x72t
        0x7dt
        0x71t
        0x6ft
    .end array-data

    :array_8
    .array-data 1
        0x63t
        0x7ft
        0x35t
        0x2ft
        0x20t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x66t
        0x61t
        0x7dt
    .end array-data

    :array_a
    .array-data 1
        0x79t
        0x74t
        0x33t
        0x32t
    .end array-data

    :array_b
    .array-data 1
        0x7ft
        0x24t
        0x2bt
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
