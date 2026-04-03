.class public Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zaa:[C

.field private static final zab:[C

.field private static final zac:[C

.field private static final zad:[C

.field private static final zae:[C

.field private static final zaf:[C

.field private static final zag:Lcom/google/android/gms/common/server/response/zai;

.field private static final zah:Lcom/google/android/gms/common/server/response/zai;

.field private static final zai:Lcom/google/android/gms/common/server/response/zai;

.field private static final zaj:Lcom/google/android/gms/common/server/response/zai;

.field private static final zak:Lcom/google/android/gms/common/server/response/zai;

.field private static final zal:Lcom/google/android/gms/common/server/response/zai;

.field private static final zam:Lcom/google/android/gms/common/server/response/zai;

.field private static final zan:Lcom/google/android/gms/common/server/response/zai;


# instance fields
.field private final zao:[C

.field private final zap:[C

.field private final zaq:[C

.field private final zar:Ljava/lang/StringBuilder;

.field private final zas:Ljava/lang/StringBuilder;

.field private final zat:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x3

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zad:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zae:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    new-instance v0, Lcom/google/android/gms/common/server/response/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zag:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zab;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zah:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zac;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zac;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zai:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaj:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zae;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zak:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zaf;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zag;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zag;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zah;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zah;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    return-void

    nop

    :array_0
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x72s
        0x75s
        0x65s
        0x22s
    .end array-data

    :array_3
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_4
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x400

    const/16 v1, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    new-array v0, v2, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zas:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    return-void
.end method

.method private static final zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v3, -0x1

    if-eq v5, v3, :cond_7

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_6

    aget-char v6, p1, v4

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_2

    move v3, v1

    :goto_2
    if-gtz v3, :cond_2

    aget-char v7, p3, v3

    if-ne v7, v6, :cond_1

    :cond_0
    const/16 v3, 0x22

    if-ne v6, v3, :cond_4

    if-nez v2, :cond_5

    invoke-virtual {p2, p1, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    add-int/lit8 v1, v4, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/io/BufferedReader;->skip(J)J

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/JsonUtils;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ccb12d"

    const-wide v4, 0x41a4c4df0c000000L    # 1.74223238E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/16 v3, 0x5c

    if-ne v6, v3, :cond_5

    xor-int/lit8 v2, v2, 0x1

    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    invoke-virtual {p2, p1, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {p0, v3}, Ljava/io/BufferedReader;->mark(I)V

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "23df13"

    const v3, -0x317fbba7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0xdt
        0x7t
        0x49t
        0x42t
        0x1t
        0x0t
        0x17t
        0x7t
        0x55t
        0x12t
        0x7t
        0xct
        0xdt
        0x16t
        0x43t
        0x5dt
        0x8t
        0x43t
        0x0t
        0xat
        0x50t
        0x40t
        0x5t
        0x0t
        0x17t
        0x7t
        0x43t
        0x12t
        0x13t
        0xbt
        0xat
        0xet
        0x54t
        0x12t
        0x16t
        0x6t
        0x2t
        0x6t
        0x58t
        0x5ct
        0x3t
        0x43t
        0x10t
        0x16t
        0x43t
        0x5bt
        0xat
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x67t
        0x5dt
        0x1t
        0x1et
        0x41t
        0x56t
        0x51t
        0x47t
        0x1t
        0x2t
        0x11t
        0x76t
        0x7dt
        0x75t
        0x44t
        0x11t
        0x59t
        0x5at
        0x5et
        0x56t
        0x44t
        0x16t
        0x50t
        0x41t
        0x41t
        0x5at
        0xat
        0x1t
        0x11t
        0x40t
        0x46t
        0x41t
        0xdt
        0x8t
        0x56t
    .end array-data
.end method

.method static bridge synthetic zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zab(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)F

    move-result v0

    return v0
.end method

.method static bridge synthetic zac(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)I

    move-result v0

    return v0
.end method

.method static bridge synthetic zad(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zae(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zaf(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zag(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zah(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;Z)Z

    move-result v0

    return v0
.end method

.method private final zai(Ljava/io/BufferedReader;)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-ne v1, v2, :cond_0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    aget-char v0, v1, v0

    goto :goto_0
.end method

.method private final zaj(Ljava/io/BufferedReader;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method private final zak(Ljava/io/BufferedReader;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method private final zal(Ljava/io/BufferedReader;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x12

    const/16 v11, 0x10

    const/16 v10, 0xa

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    move-result v7

    if-nez v7, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v8, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    if-lez v7, :cond_b

    aget-char v2, v8, v1

    const/16 v0, 0x2d

    if-ne v2, v0, :cond_2

    const/high16 v0, -0x80000000

    move v6, v0

    :goto_1
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_3

    move v3, v5

    :goto_2
    if-ge v3, v7, :cond_5

    add-int/lit8 v0, v3, 0x1

    aget-char v2, v8, v3

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_4

    neg-int v2, v2

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_3
    if-ge v2, v7, :cond_9

    aget-char v4, v8, v2

    invoke-static {v4, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_8

    const v9, -0xccccccc

    if-lt v0, v9, :cond_7

    mul-int/lit8 v0, v0, 0xa

    add-int v9, v6, v4

    if-lt v0, v9, :cond_6

    sub-int v4, v0, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_3

    :cond_2
    const v0, -0x7fffffff

    move v6, v0

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d5c567"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v2, v3

    move v0, v1

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v2, v11, [B

    fill-array-data v2, :array_1

    const-string v3, "98fc4c"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v1, v11, [B

    fill-array-data v1, :array_2

    const-string v2, "1be06d"

    const v3, 0x4eaf13cd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "f99bf5"

    const v3, -0x32c859fc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v3, :cond_a

    if-gt v2, v5, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v1, v12, [B

    fill-array-data v1, :array_4

    const-string v2, "454f17"

    const/16 v3, -0x385b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    neg-int v0, v0

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v1, v12, [B

    fill-array-data v1, :array_5

    const-string v2, "1ac5df"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x5bt
        0x6t
        0x4dt
        0x46t
        0x52t
        0x7t
        0x41t
        0x6t
        0x51t
        0x16t
        0x59t
        0xbt
        0x5bt
        0x4et
        0x51t
        0x5ft
        0x50t
        0xdt
        0x41t
        0x43t
        0x56t
        0x5et
        0x56t
        0x16t
        0x54t
        0x0t
        0x41t
        0x53t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x4dt
        0xbt
        0x1t
        0x51t
        0x11t
        0x19t
        0x4ct
        0x9t
        0xct
        0x14t
        0xft
        0x58t
        0x4at
        0x1t
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x7ft
        0x17t
        0x8t
        0x52t
        0x53t
        0x16t
        0x11t
        0x16t
        0xat
        0x5ft
        0x16t
        0x8t
        0x50t
        0x10t
        0x2t
        0x55t
    .end array-data

    :array_3
    .array-data 1
        0x33t
        0x57t
        0x5ct
        0x1at
        0x16t
        0x50t
        0x5t
        0x4dt
        0x5ct
        0x6t
        0x46t
        0x5bt
        0x9t
        0x57t
        0x14t
        0x6t
        0xft
        0x52t
        0xft
        0x4dt
        0x19t
        0x1t
        0xet
        0x54t
        0x14t
        0x58t
        0x5at
        0x16t
        0x3t
        0x47t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7at
        0x5at
        0x14t
        0x2t
        0x58t
        0x50t
        0x5dt
        0x41t
        0x47t
        0x46t
        0x45t
        0x58t
        0x14t
        0x45t
        0x55t
        0x14t
        0x42t
        0x52t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7ft
        0xet
        0x43t
        0x5bt
        0x11t
        0xbt
        0x53t
        0x4t
        0x11t
        0x15t
        0x10t
        0x9t
        0x11t
        0x11t
        0x2t
        0x47t
        0x17t
        0x3t
    .end array-data
.end method

.method private final zam(Ljava/io/BufferedReader;[C)I
    .locals 9
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xe

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/16 v6, 0x400

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    if-eqz v0, :cond_c

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_b

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v6}, Ljava/io/BufferedReader;->mark(I)V

    const/16 v2, 0x22

    if-ne v0, v2, :cond_5

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v6, :cond_9

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-eq v4, v7, :cond_9

    aget-char v4, p2, v2

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    add-int/lit8 v0, v2, 0x1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    xor-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "92974b"

    const-wide v4, 0x41d5575851c00000L    # 1.432183111E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    int-to-char v0, v0

    aput-char v0, p2, v1

    move v0, v3

    :goto_3
    if-ge v0, v6, :cond_8

    invoke-virtual {p1, p2, v0, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    if-eq v2, v7, :cond_8

    aget-char v2, p2, v0

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_6

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_6

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_6

    aget-char v2, p2, v0

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_7

    :cond_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    add-int/lit8 v2, v0, -0x1

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/BufferedReader;->skip(J)J

    int-to-char v1, v1

    aput-char v1, p2, v0

    move v1, v0

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    :cond_9
    if-ne v2, v6, :cond_a

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c20a8e"

    const-wide/32 v4, 0x9c0c180

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v1, v8, [B

    fill-array-data v1, :array_2

    const-string v2, "32d517"

    const-wide/32 v4, -0x7e6100dc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "cf4d70"

    const-wide/32 v4, -0x5537d2e7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v2, v8, [B

    fill-array-data v2, :array_4

    const-string v3, "9b581b"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6ct
        0x5ct
        0x5ct
        0x4ft
        0x44t
        0x7t
        0x5at
        0x46t
        0x5ct
        0x53t
        0x14t
        0x1t
        0x56t
        0x5ct
        0x4dt
        0x45t
        0x5bt
        0xet
        0x19t
        0x51t
        0x51t
        0x56t
        0x46t
        0x3t
        0x5at
        0x46t
        0x5ct
        0x45t
        0x14t
        0x15t
        0x51t
        0x5bt
        0x55t
        0x52t
        0x14t
        0x10t
        0x5ct
        0x53t
        0x5dt
        0x5et
        0x5at
        0x5t
        0x19t
        0x41t
        0x4dt
        0x45t
        0x5dt
        0xct
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x50t
        0x43t
        0x14t
        0x4at
        0x1t
        0xft
        0x4bt
        0x10t
        0xdt
        0x57t
        0xbt
        0x4t
        0x12t
        0x46t
        0x0t
        0x54t
        0x10t
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x5ct
        0x1t
        0x4dt
        0x41t
        0x52t
        0x50t
        0x46t
        0x1t
        0x51t
        0x11t
        0x72t
        0x7ct
        0x74t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2et
        0xft
        0x47t
        0x17t
        0x5et
        0x5et
        0x4t
        0x46t
        0x42t
        0x5t
        0x5bt
        0x45t
        0x6t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x6ct
        0xct
        0x50t
        0x40t
        0x41t
        0x7t
        0x5at
        0x16t
        0x50t
        0x5ct
        0x11t
        0x27t
        0x76t
        0x24t
    .end array-data
.end method

.method private final zan(Ljava/io/BufferedReader;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    if-lez v6, :cond_b

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-char v2, v7, v0

    const/16 v0, 0x2d

    if-ne v2, v0, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    move-wide v4, v0

    :goto_1
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-ge v3, v6, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-char v0, v7, v3

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_4

    neg-int v0, v0

    int-to-long v0, v0

    :goto_2
    if-ge v2, v6, :cond_9

    aget-char v8, v7, v2

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ltz v8, :cond_8

    const-wide v10, -0xcccccccccccccccL

    cmp-long v9, v0, v10

    if-ltz v9, :cond_7

    const-wide/16 v10, 0xa

    mul-long/2addr v0, v10

    int-to-long v8, v8

    add-long v10, v4, v8

    cmp-long v10, v0, v10

    if-ltz v10, :cond_6

    sub-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a3856e"

    const-wide v4, 0x41dd8c0d28000000L    # 1.982870688E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-wide/16 v0, 0x0

    move v2, v3

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "92d3d9"

    const-wide/32 v4, -0x79b2f318

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "af69e4"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "ad9ed0"

    const v3, 0x4e42a8f8    # 8.1646336E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v3, :cond_a

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "ba1379"

    const-wide/32 v4, -0x45e8388f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    neg-long v0, v0

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "a63855"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x34t
        0x5dt
        0x5dt
        0x4dt
        0x46t
        0x0t
        0x2t
        0x47t
        0x5dt
        0x51t
        0x16t
        0xbt
        0xet
        0x5dt
        0x15t
        0x51t
        0x5ft
        0x2t
        0x8t
        0x47t
        0x18t
        0x56t
        0x5et
        0x4t
        0x13t
        0x52t
        0x5bt
        0x41t
        0x53t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x47t
        0x9t
        0x51t
        0x1t
        0x4bt
        0x19t
        0x46t
        0xbt
        0x5ct
        0x44t
        0x55t
        0x58t
        0x40t
        0x3t
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x2ft
        0x13t
        0x5bt
        0x5bt
        0x0t
        0x46t
        0x41t
        0x12t
        0x59t
        0x56t
        0x45t
        0x58t
        0x0t
        0x14t
        0x51t
        0x5ct
    .end array-data

    :array_3
    .array-data 1
        0x34t
        0xat
        0x5ct
        0x1dt
        0x14t
        0x55t
        0x2t
        0x10t
        0x5ct
        0x1t
        0x44t
        0x5et
        0xet
        0xat
        0x14t
        0x1t
        0xdt
        0x57t
        0x8t
        0x10t
        0x19t
        0x6t
        0xct
        0x51t
        0x13t
        0x5t
        0x5at
        0x11t
        0x1t
        0x42t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2ct
        0xet
        0x11t
        0x57t
        0x5et
        0x5et
        0xbt
        0x15t
        0x42t
        0x13t
        0x43t
        0x56t
        0x42t
        0x11t
        0x50t
        0x41t
        0x44t
        0x5ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2ft
        0x59t
        0x13t
        0x56t
        0x40t
        0x58t
        0x3t
        0x53t
        0x41t
        0x18t
        0x41t
        0x5at
        0x41t
        0x46t
        0x52t
        0x4at
        0x46t
        0x50t
    .end array-data
.end method

.method private final zao(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f67b34"

    const-wide/32 v4, -0x647b60df

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x23t
        0x4et
        0x47t
        0x7t
        0x50t
        0x40t
        0x3t
        0x52t
        0x17t
        0x11t
        0x47t
        0x46t
        0xft
        0x58t
        0x50t
    .end array-data
.end method

.method private final zaq(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "721a93"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    :cond_0
    :goto_0
    return-object v0

    :sswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f332ef"

    const-wide v4, 0x41d39806bbc00000L    # 1.314921199E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x5d -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x62t
        0x5ct
        0x54t
        0x19t
        0x49t
        0x56t
        0x54t
        0x46t
        0x54t
        0x5t
        0x19t
        0x47t
        0x58t
        0x59t
        0x54t
        0xft
        0x3t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x23t
        0x4bt
        0x43t
        0x57t
        0x6t
        0x12t
        0x3t
        0x57t
        0x13t
        0x59t
        0x0t
        0x1ft
        0x49t
        0x45t
        0x52t
        0x5et
        0x10t
        0x3t
        0x46t
        0x40t
        0x56t
        0x42t
        0x4t
        0x14t
        0x7t
        0x47t
        0x5ct
        0x40t
    .end array-data
.end method

.method private final zar(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v7, 0x5

    const/16 v3, 0x22

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "4f29ad"

    invoke-static {v3, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v5, "dfffdc"

    invoke-static {v3, v5, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    move v0, v2

    move v1, v4

    move v5, v2

    :goto_1
    if-lez v1, :cond_a

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-nez v6, :cond_8

    if-ne v4, v3, :cond_12

    if-nez v5, :cond_5

    xor-int/lit8 v0, v0, 0x1

    :cond_5
    move v4, v0

    move v0, v3

    :goto_2
    const/16 v6, 0x5b

    if-ne v0, v6, :cond_11

    if-nez v4, :cond_10

    add-int/lit8 v0, v1, 0x1

    :goto_3
    const/16 v1, 0x5b

    :goto_4
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_6

    if-nez v4, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_7

    if-eqz v4, :cond_7

    xor-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_7
    move v1, v0

    move v5, v2

    move v0, v4

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "fdffcb"

    const-wide v4, 0x41dbb34e33400000L    # 1.858943181E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const-string v2, "c42cc3"

    const/16 v3, 0x46a9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-direct {p0, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "156da7"

    const-wide v4, 0x41ad8e9336000000L    # 2.47941531E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    if-eq v0, v6, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    aget-char v0, v0, v2

    move v1, v2

    :goto_5
    if-ne v0, v3, :cond_b

    if-eqz v1, :cond_0

    move v0, v3

    move v1, v4

    :cond_b
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_c

    xor-int/lit8 v0, v1, 0x1

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-eq v1, v6, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_d

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "4e43d9"

    const v3, -0x31c395e8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "5b7e7e"

    const-wide v4, -0x3e25e402afc00000L    # -1.752167745E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v3, "27c7e7"

    invoke-static {v1, v3, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :sswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    move v0, v1

    goto/16 :goto_3

    :cond_11
    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_4

    :cond_12
    move v8, v4

    move v4, v0

    move v0, v8

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x2c -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_5
        0x7d -> :sswitch_4
    .end sparse-switch

    :array_0
    .array-data 1
        0x61t
        0x8t
        0x57t
        0x41t
        0x11t
        0x1t
        0x57t
        0x12t
        0x57t
        0x5dt
        0x41t
        0x10t
        0x5bt
        0xdt
        0x57t
        0x57t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x31t
        0x8t
        0x3t
        0x1et
        0x14t
        0x6t
        0x7t
        0x12t
        0x3t
        0x2t
        0x44t
        0x17t
        0xbt
        0xdt
        0x3t
        0x8t
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x33t
        0xat
        0x3t
        0x1et
        0x13t
        0x7t
        0x5t
        0x10t
        0x3t
        0x2t
        0x43t
        0x1t
        0x9t
        0xat
        0x12t
        0x14t
        0xct
        0xet
        0x46t
        0x7t
        0xet
        0x7t
        0x11t
        0x3t
        0x5t
        0x10t
        0x3t
        0x14t
        0x43t
        0x15t
        0xet
        0xdt
        0xat
        0x3t
        0x43t
        0x10t
        0x3t
        0x5t
        0x2t
        0xft
        0xdt
        0x5t
        0x46t
        0x5t
        0x14t
        0x14t
        0x2t
        0x1bt
    .end array-data

    :array_3
    .array-data 1
        0x36t
        0x5at
        0x57t
        0x1bt
        0x13t
        0x56t
        0x0t
        0x40t
        0x57t
        0x7t
        0x43t
        0x76t
        0x2ct
        0x72t
        0x12t
        0x14t
        0xbt
        0x5at
        0xft
        0x51t
        0x12t
        0x13t
        0x2t
        0x41t
        0x10t
        0x5dt
        0x5ct
        0x4t
        0x43t
        0x52t
        0x11t
        0x46t
        0x53t
        0x1at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7ct
        0x5ct
        0x45t
        0x17t
        0x8t
        0x59t
        0x56t
        0x15t
        0x40t
        0x5t
        0xdt
        0x42t
        0x54t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x61t
        0xbt
        0x51t
        0x4bt
        0x14t
        0x5ct
        0x57t
        0x11t
        0x51t
        0x57t
        0x44t
        0x5at
        0x5bt
        0xbt
        0x40t
        0x41t
        0xbt
        0x55t
        0x14t
        0x6t
        0x5ct
        0x52t
        0x16t
        0x58t
        0x57t
        0x11t
        0x51t
        0x41t
        0x44t
        0x4et
        0x5ct
        0xct
        0x58t
        0x56t
        0x44t
        0x4bt
        0x51t
        0x4t
        0x50t
        0x5at
        0xat
        0x5et
        0x14t
        0x16t
        0x40t
        0x41t
        0xdt
        0x57t
        0x53t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x60t
        0xct
        0x52t
        0x1dt
        0x47t
        0x0t
        0x56t
        0x16t
        0x52t
        0x1t
        0x17t
        0x20t
        0x7at
        0x24t
        0x17t
        0x12t
        0x5ft
        0xct
        0x59t
        0x7t
        0x17t
        0x15t
        0x56t
        0x17t
        0x46t
        0xbt
        0x59t
        0x2t
        0x17t
        0x16t
        0x41t
        0x10t
        0x5et
        0xbt
        0x50t
    .end array-data

    :array_7
    .array-data 1
        0x67t
        0x59t
        0x6t
        0x4ft
        0x15t
        0x52t
        0x51t
        0x43t
        0x6t
        0x53t
        0x45t
        0x72t
        0x7dt
        0x71t
        0x43t
        0x40t
        0xdt
        0x5et
        0x5et
        0x52t
        0x43t
        0x47t
        0x4t
        0x45t
        0x41t
        0x5et
        0xdt
        0x50t
        0x45t
        0x44t
        0x46t
        0x45t
        0xat
        0x59t
        0x2t
    .end array-data
.end method

.method private final zas(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final zat(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    :sswitch_0
    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->mark(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/common/server/response/zai;->zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6cf8a1"

    const-wide v4, 0x41d4748715400000L    # 1.372724309E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e5da95"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 1
        0x63t
        0xdt
        0x3t
        0x40t
        0x11t
        0x54t
        0x55t
        0x17t
        0x3t
        0x5ct
        0x41t
        0x74t
        0x79t
        0x25t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x20t
        0x4dt
        0x14t
        0x4t
        0x5at
        0x41t
        0x0t
        0x51t
        0x44t
        0x12t
        0x4dt
        0x54t
        0x17t
        0x41t
        0x44t
        0xet
        0x5ft
        0x15t
        0x4t
        0x47t
        0x16t
        0x0t
        0x40t
    .end array-data
.end method

.method private final zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x20

    const/16 v5, 0x12

    const/4 v4, 0x1

    const/4 v3, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "a32151"

    const/16 v4, -0x79c0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zad()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "5ae5b6"

    const-wide/32 v4, -0x3e7a189

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    :cond_0
    :goto_1
    return-object v0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "171329"

    const/16 v3, 0x75e0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "61a91a"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-array v2, v6, [B

    fill-array-data v2, :array_4

    const-string v3, "59dcb5"

    const-wide/32 v4, 0x6fe33923

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_3
    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d -> :sswitch_4
        0x6e -> :sswitch_3
        0x7b -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x34t
        0x5dt
        0x57t
        0x49t
        0x45t
        0x54t
        0x2t
        0x47t
        0x57t
        0x55t
        0x15t
        0x45t
        0xet
        0x58t
        0x57t
        0x5ft
        0xft
        0x11t
    .end array-data

    nop

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    :array_1
    .array-data 1
        0x60t
        0xft
        0x0t
        0x4dt
        0x12t
        0x53t
        0x56t
        0x15t
        0x0t
        0x51t
        0x42t
        0x42t
        0x5at
        0xat
        0x0t
        0x5bt
        0x58t
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x4ft
        0x41t
        0x56t
        0x51t
        0x4dt
        0x54t
        0x53t
        0x11t
        0x40t
        0x46t
        0x58t
        0x43t
        0x43t
        0x11t
        0x5ct
        0x54t
        0x19t
        0x5ft
        0x52t
        0x49t
        0x47t
        0x12t
        0x56t
        0x53t
        0x5dt
        0x54t
        0x50t
        0x46t
        0x19t
        0x58t
        0x59t
        0x11t
        0x52t
        0x40t
        0x4bt
        0x50t
        0x4et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x73t
        0x43t
        0x13t
        0x56t
        0x43t
        0x41t
        0x5ft
        0x5ft
        0x12t
        0x4dt
        0x50t
        0xft
        0x42t
        0x58t
        0x0t
        0x4dt
        0x58t
        0xft
        0x51t
        0x11t
        0x8t
        0x57t
        0x5ft
        0x4t
        0x44t
        0x11t
        0xet
        0x5bt
        0x5bt
        0x4t
        0x55t
        0x45t
    .end array-data

    :array_4
    .array-data 1
        0x70t
        0x4bt
        0x16t
        0xct
        0x10t
        0x15t
        0x5ct
        0x57t
        0x17t
        0x17t
        0x3t
        0x5bt
        0x41t
        0x50t
        0x5t
        0x17t
        0xbt
        0x5bt
        0x52t
        0x19t
        0xdt
        0xdt
        0xct
        0x50t
        0x47t
        0x19t
        0xbt
        0x1t
        0x8t
        0x50t
        0x56t
        0x4dt
    .end array-data
.end method

.method private final zaw(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    const/16 v2, 0xf

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "cd9061"

    const-wide v4, -0x3e3395f165000000L    # -9.53425206E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "708426"

    const-wide v4, -0x3e20ea58b5800000L    # -2.086051114E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    const-string v2, "db8d39"

    const-wide v4, 0x41d0892705800000L    # 1.10969551E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "1527c8"

    const v3, -0x31124517

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x26t
        0x1ct
        0x49t
        0x55t
        0x55t
        0x45t
        0x6t
        0x0t
        0x19t
        0x43t
        0x42t
        0x50t
        0x17t
        0x1t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x52t
        0x4dt
        0x40t
        0x12t
        0x5et
        0x56t
        0x54t
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x21t
        0x1at
        0x48t
        0x1t
        0x50t
        0x4dt
        0x1t
        0x6t
        0x18t
        0x17t
        0x47t
        0x58t
        0x10t
        0x7t
        0x18t
    .end array-data

    :array_3
    .array-data 1
        0x11t
        0x57t
        0x47t
        0x43t
        0x43t
        0x50t
        0x50t
        0x51t
        0x12t
        0x52t
        0xet
        0x48t
        0x45t
        0x4ct
        0x12t
        0x44t
        0x17t
        0x59t
        0x52t
        0x5et
    .end array-data
.end method

.method private final zax(Ljava/io/BufferedReader;[C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    sub-int/2addr v2, v0

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    add-int v4, v2, v0

    aget-char v4, p2, v4

    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    aget-char v5, v5, v2

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a08466"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "162d5e"

    const/16 v3, -0x29bd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x34t
        0x5et
        0x5dt
        0x4ct
        0x46t
        0x53t
        0x2t
        0x44t
        0x5dt
        0x50t
        0x16t
        0x55t
        0x9t
        0x51t
        0x4at
        0x55t
        0x55t
        0x42t
        0x4t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x58t
        0x57t
        0x1ct
        0x45t
        0x0t
        0x52t
        0x42t
        0x57t
        0x0t
        0x15t
        0x20t
        0x7et
        0x70t
    .end array-data
.end method

.method private final zay(Ljava/io/BufferedReader;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "bc7d2c"

    invoke-static {v3, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    move v0, v2

    goto :goto_1

    :sswitch_2
    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zae:[C

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    move v0, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zad:[C

    goto :goto_2

    :sswitch_3
    if-nez p2, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;Z)Z

    move-result v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6ad2b0"

    const-wide v4, -0x3e399097e8800000L    # -7.52799791E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x66 -> :sswitch_2
        0x6e -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x37t
        0xdt
        0x52t
        0x1ct
        0x42t
        0x6t
        0x1t
        0x17t
        0x52t
        0x0t
        0x12t
        0x17t
        0xdt
        0x8t
        0x52t
        0xat
        0x8t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x78t
        0xet
        0x44t
        0x50t
        0xdt
        0x5ft
        0x5at
        0x4t
        0x5t
        0x5ct
        0x42t
        0x46t
        0x57t
        0xdt
        0x11t
        0x57t
        0x42t
        0x56t
        0x59t
        0x14t
        0xat
        0x56t
        0x42t
        0x59t
        0x58t
        0x41t
        0x17t
        0x46t
        0x10t
        0x59t
        0x58t
        0x6t
    .end array-data
.end method

.method private final zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z
    .locals 12
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x4

    const/16 v10, 0x6e

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_15

    :goto_0
    if-eqz v0, :cond_14

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaa:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ecfbdc"

    const-wide/32 v4, 0x5c0f35a4

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    if-ne v1, v10, :cond_1

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    iget-object v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    invoke-direct {p0, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x36

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9e122e"

    const-wide v4, 0x41ccc45b1c000000L    # 9.65260856E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x5b

    if-ne v1, v7, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p2, v0, v1, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ff21a9"

    const-wide/32 v4, 0x550f3d7a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    if-ne v1, v10, :cond_4

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    iget-object v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x7b

    if-ne v1, v7, :cond_5

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zad()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    iget-object v7, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p2, v0, v7, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "49dc36"

    const v4, 0x4ef2647a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v4, "33279d"

    invoke-static {v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "396b5a"

    const/16 v3, -0x7b3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v1

    if-ne v1, v10, :cond_6

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    move-object v1, v2

    :goto_2
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaB(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_3

    :sswitch_0
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "4963a7"

    const v3, -0x31477905

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_2

    :sswitch_2
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    iget-object v8, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    invoke-static {p1, v7, v8, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_a

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    iget-object v9, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    invoke-static {p1, v8, v9, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_7

    const/16 v8, 0x7d

    if-ne v7, v8, :cond_8

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "f4ab1d"

    const-wide/32 v4, 0x6f646844

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "a4e558"

    const v3, 0x4e8a65fa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "b1487a"

    const-wide v4, -0x3e330113ef800000L    # -9.72937249E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "c629c6"

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zas:Ljava/lang/StringBuilder;

    sget-object v8, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    invoke-direct {p0, p1, v1, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zas:Ljava/lang/StringBuilder;

    sget-object v8, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    invoke-direct {p0, p1, v1, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto/16 :goto_1

    :pswitch_4
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zal:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaC(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaA(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zak:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaj(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;Z)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zai(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V

    goto/16 :goto_1

    :pswitch_6
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    :pswitch_7
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaj:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zao(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)D

    move-result-wide v8

    invoke-virtual {p2, v0, v8, v9}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zam(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V

    goto/16 :goto_1

    :pswitch_8
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zai:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zas(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V

    goto/16 :goto_1

    :pswitch_9
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zah:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zay(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;)J

    move-result-wide v8

    invoke-virtual {p2, v0, v8, v9}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zax(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V

    goto/16 :goto_1

    :pswitch_a
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zag(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zae(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :pswitch_b
    iget-boolean v1, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zag:Lcom/google/android/gms/common/server/response/zai;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zav(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zau(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V

    goto/16 :goto_1

    :sswitch_3
    move-object v0, v2

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    move v0, v4

    :goto_4
    return v0

    :cond_15
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    move v0, v3

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2ct
        0xdt
        0x10t
        0x3t
        0x8t
        0xat
        0x1t
        0x43t
        0x0t
        0xbt
        0x1t
        0xft
        0x1t
        0x43t
        0x12t
        0x1bt
        0x14t
        0x6t
        0x45t
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    :array_1
    .array-data 1
        0x7ct
        0x1dt
        0x41t
        0x57t
        0x51t
        0x11t
        0x5ct
        0x1t
        0x11t
        0x57t
        0x5ct
        0x1t
        0x19t
        0xat
        0x57t
        0x12t
        0x5dt
        0x7t
        0x53t
        0x0t
        0x52t
        0x46t
        0x12t
        0xat
        0x4bt
        0x45t
        0x57t
        0x5bt
        0x57t
        0x9t
        0x5dt
        0x45t
        0x42t
        0x57t
        0x42t
        0x4t
        0x4bt
        0x4t
        0x45t
        0x5dt
        0x40t
        0x49t
        0x19t
        0x7t
        0x44t
        0x46t
        0x12t
        0x3t
        0x56t
        0x10t
        0x5ft
        0x56t
        0x8t
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x1et
        0x42t
        0x54t
        0x2t
        0x4dt
        0x3t
        0x2t
        0x12t
        0x50t
        0x13t
        0x4bt
        0x7t
        0x1ft
        0x12t
        0x42t
        0x15t
        0x58t
        0x14t
        0x12t
    .end array-data

    :array_3
    .array-data 1
        0x71t
        0x4bt
        0x16t
        0xct
        0x41t
        0x16t
        0x5dt
        0x57t
        0x17t
        0x17t
        0x52t
        0x58t
        0x40t
        0x50t
        0x5t
        0x17t
        0x5at
        0x58t
        0x53t
        0x19t
        0xdt
        0xdt
        0x5dt
        0x53t
        0x46t
        0x19t
        0xbt
        0x1t
        0x59t
        0x53t
        0x57t
        0x4dt
    .end array-data

    :array_4
    .array-data 1
        0x76t
        0x41t
        0x40t
        0x58t
        0x4bt
        0x44t
        0x5at
        0x5dt
        0x41t
        0x43t
        0x58t
        0xat
        0x47t
        0x5at
        0x53t
        0x43t
        0x50t
        0xat
        0x54t
        0x13t
        0x5bt
        0x59t
        0x57t
        0x1t
        0x41t
        0x13t
        0x5dt
        0x55t
        0x53t
        0x1t
        0x50t
        0x47t
    .end array-data

    :array_5
    .array-data 1
        0x76t
        0x41t
        0x46t
        0x7t
        0x56t
        0x15t
        0x56t
        0x5dt
        0x16t
        0x11t
        0x41t
        0x0t
        0x41t
        0x4dt
        0x16t
        0xdt
        0x53t
        0x41t
        0x5ct
        0x5bt
        0x5ct
        0x7t
        0x56t
        0x15t
    .end array-data

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_2
        0x7d -> :sswitch_1
    .end sparse-switch

    :array_6
    .array-data 1
        0x61t
        0x57t
        0x53t
        0x4bt
        0x11t
        0x52t
        0x57t
        0x4dt
        0x53t
        0x57t
        0x41t
        0x72t
        0x7bt
        0x7ft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x33t
        0x5at
        0x4t
        0x1at
        0x41t
        0x1t
        0x5t
        0x40t
        0x4t
        0x6t
        0x11t
        0x7t
        0xet
        0x55t
        0x13t
        0x3t
        0x52t
        0x10t
        0x3t
        0x46t
        0x41t
        0x15t
        0x59t
        0xdt
        0xat
        0x51t
        0x41t
        0x12t
        0x50t
        0x16t
        0x15t
        0x5dt
        0xft
        0x5t
        0x11t
        0x17t
        0x12t
        0x46t
        0x8t
        0xct
        0x56t
        0x44t
        0xbt
        0x55t
        0x11t
        0x58t
        0x11t
    .end array-data

    :array_8
    .array-data 1
        0x24t
        0x4ct
        0x15t
        0x50t
        0x56t
        0x4ct
        0x4t
        0x50t
        0x45t
        0x66t
        0x41t
        0x4at
        0x8t
        0x5at
        0x2t
        0x15t
        0x43t
        0x59t
        0xdt
        0x41t
        0x0t
        0x15t
        0x53t
        0x57t
        0x13t
        0x14t
        0xet
        0x50t
        0x4ct
        0x18t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x2ct
        0x5et
        0x14t
        0x55t
        0x56t
        0x11t
        0x42t
        0x47t
        0x55t
        0x54t
        0x42t
        0x4t
        0x42t
        0x57t
        0x5bt
        0x4dt
        0x59t
        0x5t
        0x42t
        0x57t
        0x5bt
        0x4at
        0x17t
        0xat
        0x7t
        0x48t
        0x14t
    .end array-data

    :array_a
    .array-data 1
        0x26t
        0x4et
        0x42t
        0x5ct
        0x0t
        0x42t
        0x6t
        0x52t
        0x12t
        0x4at
        0x17t
        0x57t
        0x11t
        0x42t
        0x12t
        0x56t
        0x5t
        0x16t
        0x2t
        0x16t
        0x5ft
        0x58t
        0x13t
        0x16t
        0xct
        0x54t
        0x58t
        0x5ct
        0x0t
        0x42t
    .end array-data
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    const/16 v10, 0x25

    const/16 v9, 0xa

    const/4 v8, 0x1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x12

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "0b154f"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    throw v0

    :sswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    return-void

    :sswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p2, v0, v3, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    new-array v0, v9, [B

    fill-array-data v0, :array_1

    const-string v1, "171f1a"

    const v2, -0x31a4127e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [B

    fill-array-data v1, :array_2

    const-string v2, "7353f4"

    const/16 v3, -0x35a9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :try_start_6
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v2, 0x34

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "728927"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "9615fd"

    const-wide v4, 0x41b1400dce000000L    # 2.8941051E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v1

    new-array v1, v9, [B

    fill-array-data v1, :array_5

    const-string v2, "a15cab"

    const v3, -0x33f7e5a3    # -3.567858E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [B

    fill-array-data v2, :array_6

    const-string v3, "e61672"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x65t
        0xct
        0x54t
        0x4dt
        0x44t
        0x3t
        0x53t
        0x16t
        0x54t
        0x51t
        0x14t
        0x12t
        0x5ft
        0x9t
        0x54t
        0x5bt
        0xet
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x56t
        0x42t
        0x12t
        0x61t
        0x0t
        0x43t
        0x44t
        0x54t
        0x14t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x52t
        0x5ct
        0x5ft
        0x3t
        0x50t
        0x17t
        0x47t
        0x5at
        0x13t
        0x5t
        0x58t
        0x58t
        0x40t
        0x50t
        0x13t
        0x14t
        0x51t
        0x56t
        0x57t
        0x50t
        0x41t
        0x46t
        0x43t
        0x5ft
        0x5at
        0x59t
        0x56t
        0x46t
        0x44t
        0x56t
        0x41t
        0x46t
        0x5at
        0x8t
        0x53t
        0x19t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x78t
        0x50t
        0x52t
        0x5ct
        0x51t
        0x43t
        0x17t
        0x53t
        0x4at
        0x4bt
        0x53t
        0x4et
        0x17t
        0x40t
        0x5dt
        0x4at
        0x42t
        0x58t
        0x59t
        0x41t
        0x5dt
        0x19t
        0x51t
        0x5bt
        0x56t
        0x41t
        0x4bt
        0x19t
        0x5ft
        0x42t
        0x44t
        0x46t
        0x18t
        0x51t
        0x53t
        0x41t
        0x52t
        0x12t
        0x59t
        0x19t
        0x41t
        0x5et
        0x59t
        0x55t
        0x54t
        0x5ct
        0x12t
        0x71t
        0x5et
        0x57t
        0x54t
        0x5dt
    .end array-data

    :array_4
    .array-data 1
        0x77t
        0x59t
        0x11t
        0x51t
        0x7t
        0x10t
        0x58t
        0x16t
        0x45t
        0x5at
        0x46t
        0x14t
        0x58t
        0x44t
        0x42t
        0x50t
    .end array-data

    :array_5
    .array-data 1
        0x27t
        0x50t
        0x46t
        0x17t
        0x31t
        0x3t
        0x13t
        0x42t
        0x50t
        0x11t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x23t
        0x57t
        0x58t
        0x5at
        0x52t
        0x56t
        0x45t
        0x42t
        0x5et
        0x16t
        0x54t
        0x5et
        0xat
        0x45t
        0x54t
        0x16t
        0x45t
        0x57t
        0x4t
        0x52t
        0x54t
        0x44t
        0x17t
        0x45t
        0xdt
        0x5ft
        0x5dt
        0x53t
        0x17t
        0x42t
        0x4t
        0x44t
        0x42t
        0x5ft
        0x59t
        0x55t
        0x4bt
    .end array-data
.end method
