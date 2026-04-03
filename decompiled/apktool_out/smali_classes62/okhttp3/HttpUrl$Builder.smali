.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field port:I

.field scheme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .locals 7

    const/4 v6, 0x0

    move v2, v6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "431047"

    const-wide/32 v4, -0x78a89ce2

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v0, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_0

    return-object p0

    :cond_1
    move v4, v6

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x1bt
        0x6ft
    .end array-data
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v0

    const-string v3, "bd70d4"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "588783"

    const v4, 0x4d8480e0    # 2.778798E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x10t
        0xat
        0x5dt
    .end array-data
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0a0e14"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "5481ef"

    const v4, -0x312f1877

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "c455f2"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "391857"

    const v4, 0x4ec12ce9    # 1.620473E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x1et
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x6t
        0x5dt
        0x1ft
    .end array-data

    :array_2
    .array-data 1
        0x4dt
        0x11t
        0x7t
        0x50t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        0xbt
        0x54t
        0x1dt
        0x7t
        0x52t
    .end array-data
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 10

    const/4 v9, -0x1

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v9

    goto :goto_0
.end method

.method private pop()V
    .locals 3

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    :sswitch_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f6864e"

    invoke-static {v0, v1, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p4, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x46t
        0x14t
        0x4t
        0x8t
        0x6at
        0x5t
        0x1dt
        0x4bt
        0x44t
        0x19t
        0x68t
        0x5at
        0x45t
    .end array-data
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ge v2, p3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "40732a"

    const/16 v3, 0x3c77

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, p3, v0}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-ge v3, p3, :cond_4

    move v4, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    if-eqz v4, :cond_5

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, p2

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0

    :array_0
    .array-data 1
        0x1bt
        0x6ct
    .end array-data
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 8

    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_4

    if-le v2, v7, :cond_7

    :cond_4
    if-lt v2, v4, :cond_5

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_7

    :cond_6
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "d4f940"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    return-object p0

    :array_0
    .array-data 1
        0x1t
        0x5at
        0x5t
        0x56t
        0x50t
        0x55t
        0x0t
        0x64t
        0x7t
        0x4dt
        0x5ct
        0x63t
        0x1t
        0x53t
        0xbt
        0x5ct
        0x5at
        0x44t
        0x44t
        0x9t
        0x5bt
        0x19t
        0x5at
        0x45t
        0x8t
        0x58t
    .end array-data
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a208a4"

    const-wide/32 v4, 0x78f1cf5a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4t
        0x5ct
        0x53t
        0x57t
        0x5t
        0x51t
        0x5t
        0x62t
        0x51t
        0x4ct
        0x9t
        0x67t
        0x4t
        0x55t
        0x5dt
        0x5dt
        0xft
        0x40t
        0x12t
        0x12t
        0xdt
        0x5t
        0x41t
        0x5at
        0x14t
        0x5et
        0x5ct
    .end array-data
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "7267ba"

    invoke-static {v1, v4, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    :cond_1
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v1, "e1840c"

    const-wide/32 v4, 0x4af7fdac

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "780ca1"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x52t
        0x5ct
        0x55t
        0x58t
        0x6t
        0x4t
        0x53t
        0x7ct
        0x57t
        0x5at
        0x7t
        0x41t
        0xat
        0xft
        0x16t
        0x59t
        0x17t
        0xdt
        0x5bt
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0x13t
        0x1ft
        0x8t
        0xet
        0x40t
        0x43t
        0xct
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x1at
        0x17t
        0x5ft
        0x5ft
        0x12t
        0x11t
        0x5t
    .end array-data
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c032e3"

    const-wide v4, -0x3e351a4976800000L    # -9.02524179E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x13t
        0x51t
        0x47t
        0x5at
        0x36t
        0x56t
        0x4t
        0x5dt
        0x56t
        0x5ct
        0x11t
        0x13t
        0x5et
        0xdt
        0x13t
        0x5ct
        0x10t
        0x5ft
        0xft
    .end array-data
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cbf02b"

    const v3, 0x4e6d6674

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x13t
        0x3t
        0x12t
        0x58t
        0x61t
        0x7t
        0x4t
        0xft
        0x3t
        0x5et
        0x46t
        0x11t
        0x43t
        0x5ft
        0x5bt
        0x10t
        0x5ct
        0x17t
        0xft
        0xet
    .end array-data
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "65e9a7"

    const/16 v3, -0x666

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    :cond_1
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v1, "35246f"

    const v3, -0x34ea11b6    # -9825866.0f

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "0f9132"

    const-wide/32 v8, 0x7d5563e

    invoke-static {v0, v1, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x58t
        0x54t
        0x8t
        0x5ct
        0x41t
        0xat
        0xbt
        0x15t
        0xbt
        0x4ct
        0xdt
        0x5bt
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x17t
        0x15t
        0x8t
        0x8t
        0x45t
        0x15t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x44t
        0x1et
        0xdt
        0xdt
        0x11t
        0x16t
        0x5bt
    .end array-data
.end method

.method public build()Lokhttp3/HttpUrl;
    .locals 4

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2d7301"

    const v3, 0x4ee36401

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "927fc3"

    const/16 v3, -0x6a7a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lokhttp3/HttpUrl;

    invoke-direct {v0, p0}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x41t
        0x7t
        0x5ft
        0x56t
        0x5dt
        0x54t
        0x12t
        0x59t
        0xat
        0x13t
        0x5et
        0x44t
        0x5et
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x5dt
        0x44t
        0x12t
        0x43t
        0xet
        0x4t
        0x12t
        0x59t
        0x13t
        0xft
        0x5ft
    .end array-data
.end method

.method effectivePort()I
    .locals 2

    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e605ed"

    const-wide/32 v4, 0x256c6da0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "7e85e5"

    const-wide/32 v4, 0x320a119

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    return-object p0

    :array_0
    .array-data 1
        0x0t
        0x58t
        0x53t
        0x5at
        0x1t
        0x1t
        0x1t
        0x66t
        0x51t
        0x46t
        0x16t
        0x13t
        0xat
        0x44t
        0x54t
        0x15t
        0x58t
        0x59t
        0x45t
        0x58t
        0x45t
        0x59t
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x47t
        0x1ft
        0xft
        0x5et
        0x9t
        0xat
        0x5bt
        0x78t
        0x6et
        0x38t
        0x6bt
        0x57t
        0x1et
        0x45t
        0x49t
        0x4at
        0x69t
        0x8t
        0x46t
    .end array-data
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d3aea5"

    const-wide/32 v4, -0x3ae5686e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x1c

    aput-byte v1, v0, v3

    const-string v1, "3948cd"

    const v2, -0x31af9a53

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e966a7"

    const-wide v4, -0x3e2602f6a0000000L    # -1.744053632E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v3, v0}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    return-object p0

    :array_0
    .array-data 1
        0x1t
        0x5dt
        0x2t
        0xat
        0x5t
        0x50t
        0x0t
        0x63t
        0x0t
        0x11t
        0x9t
        0x15t
        0x59t
        0xet
        0x41t
        0xbt
        0x14t
        0x59t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x57t
        0x53t
        0x4et
        0x11t
        0x52t
        0x6t
        0x4dt
        0x53t
        0x52t
        0x41t
        0x52t
        0xbt
        0x5at
        0x59t
        0x52t
        0x4t
        0x53t
        0x35t
        0x58t
        0x42t
        0x5et
        0x5bt
        0x17t
    .end array-data
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ae06d9"

    const/16 v3, -0x24ad

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x41t
        0x47t
        0x17t
        0xat
        0x5at
        0x1at
    .end array-data
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "556ce2"

    invoke-static {v1, v4, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "306bef"

    const v4, 0x4e3b4c24    # 7.8558234E8f

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x50t
        0x5bt
        0x55t
        0xct
        0x1t
        0x57t
        0x51t
        0x60t
        0x45t
        0x6t
        0x17t
        0x5ct
        0x54t
        0x58t
        0x53t
        0x43t
        0x58t
        0xft
        0x15t
        0x5bt
        0x43t
        0xft
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x12t
        0x11t
        0x58t
        0x5et
        0x5at
        0xet
        0xet
        0x76t
        0x39t
        0x38t
        0x38t
        0x53t
        0x4bt
        0x4bt
        0x1et
        0x4at
        0x3at
        0xct
        0x13t
    .end array-data
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ab08ce"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v4, v0}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e25256"

    const-wide v4, -0x3e3614ebc8800000L    # -8.69673071E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x9t
        0xdt
        0x43t
        0x4ct
        0x43t
        0x58t
        0x5ct
        0x42t
        0x5et
        0x4dt
        0xft
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x5ct
        0x50t
        0x4at
        0x45t
        0x53t
        0x6t
        0x46t
        0x50t
        0x56t
        0x15t
        0x5et
        0xat
        0x41t
        0x41t
        0x8t
        0x15t
    .end array-data
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 16
    .param p1    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p2

    invoke-static {v0, v4, v15}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v5, "cd644b"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a1d71b"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "4205cb"

    const v5, -0x3161beed

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v15}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v6, v0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_0
    add-int v6, v4, v5

    move v14, v2

    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v4, "32f870"

    const v5, -0x31418a96

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v6, v15, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    if-eq v4, v15, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p2

    invoke-static {v0, v6, v4}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v4, :cond_8

    move-object/from16 v0, p2

    invoke-static {v0, v6, v2}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    move-object/from16 v0, p0

    iget v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    :goto_3
    return-object v2

    :cond_1
    const/4 v3, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v5, "f1147c"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "2057b7"

    const v5, -0x313ca9d2

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "2dc71d"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_1
    if-nez v3, :cond_7

    const/16 v2, 0x3a

    move-object/from16 v0, p2

    invoke-static {v0, v6, v4, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v7

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v5, "e46995"

    const-wide v8, -0x3e6f591aa8000000L    # -6.9843286E7

    invoke-static {v2, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v13}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    if-eqz v14, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [B

    fill-array-data v6, :array_8

    const-string v8, "2b352f"

    const v9, -0x343987f3    # -2.6013722E7f

    invoke-static {v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    if-eq v7, v4, :cond_f

    const/4 v11, 0x1

    add-int/lit8 v3, v7, 0x1

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v5, "308010"

    const-wide/32 v6, 0x9153eec

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    move v2, v11

    :goto_4
    const/4 v14, 0x1

    move v3, v2

    move v2, v14

    :goto_5
    add-int/lit8 v6, v4, 0x1

    move v14, v2

    goto/16 :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    const-string v7, "53fdb5"

    const/16 v8, -0xb9

    invoke-static {v5, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x14

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v7, "06ce8f"

    const-wide/32 v8, -0x29143ce7

    invoke-static {v5, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v5, p2

    move v7, v4

    invoke-static/range {v5 .. v13}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    move v2, v14

    goto :goto_5

    :cond_8
    move-object/from16 v0, p2

    invoke-static {v0, v6, v2}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v2, :cond_c

    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Lokhttp3/HttpUrl;->port:I

    move-object/from16 v0, p0

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v4, v15, :cond_b

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_c

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_c
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "6b3b9f"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v4, v15, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v2}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    if-ge v2, v15, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_e

    const/16 v3, 0x23

    move-object/from16 v0, p2

    invoke-static {v0, v2, v15, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    add-int/lit8 v3, v2, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const-string v5, "2a9eac"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    :goto_6
    if-ge v4, v15, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_d

    add-int/lit8 v3, v4, 0x1

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    move v4, v15

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    :cond_d
    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_3

    :cond_e
    move v4, v2

    goto :goto_6

    :cond_f
    move v2, v3

    goto/16 :goto_4

    nop

    :array_0
    .array-data 1
        0xbt
        0x10t
        0x42t
        0x44t
        0x47t
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0x45t
        0x10t
        0x47t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5ct
        0x46t
        0x44t
        0x45t
        0x10t
        0x58t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x73t
        0x1dt
        0x3at
        0x7t
        0x14t
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch

    :array_4
    .array-data 1
        0xet
        0x45t
        0x45t
        0x44t
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5at
        0x44t
        0x41t
        0x47t
    .end array-data

    :array_6
    .array-data 1
        0x5at
        0x10t
        0x17t
        0x47t
        0xbt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x45t
        0x16t
        0x11t
        0x3t
        0x2t
        0x9t
        0x58t
        0xat
        0x76t
        0x62t
        0x64t
        0x6bt
        0x5t
        0x4ft
        0x4bt
        0x45t
        0x16t
        0x69t
        0x5at
        0x17t
    .end array-data

    :array_8
    .array-data 1
        0x17t
        0x56t
        0x3t
    .end array-data

    :array_9
    .array-data 1
        0x13t
        0x12t
        0x1ft
        0xat
        0xat
        0xct
        0xet
        0xet
        0x78t
        0x6bt
        0x6ct
        0x6et
        0x53t
        0x4bt
        0x45t
        0x4ct
        0x1et
        0x6ct
        0xct
        0x13t
    .end array-data

    :array_a
    .array-data 1
        0x10t
        0x7t
        0x56t
    .end array-data

    :array_b
    .array-data 1
        0x10t
        0x14t
        0x44t
        0x5ft
        0x3t
        0x5at
        0xdt
        0x8t
        0x23t
        0x3et
        0x65t
        0x38t
        0x50t
        0x4dt
        0x1et
        0x19t
        0x17t
        0x3at
        0xft
        0x15t
    .end array-data

    :array_c
    .array-data 1
        0x9t
        0x41t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x12t
        0x43t
        0x1et
        0x59t
        0x5ft
        0x40t
    .end array-data
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "7870cb"

    invoke-static {v1, v3, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "81d85b"

    const v3, 0x4de3fee6    # 4.7814163E8f

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x47t
        0x59t
        0x44t
        0x43t
        0x14t
        0xdt
        0x45t
        0x5ct
        0x17t
        0xdt
        0x5et
        0x42t
        0x59t
        0x4dt
        0x5bt
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x13t
        0x43t
        0x2t
        0xet
        0x5et
        0x5t
        0xft
        0x24t
        0x63t
        0x68t
        0x3ct
        0x58t
        0x4at
        0x19t
        0x44t
        0x1at
        0x3et
        0x7t
        0x12t
    .end array-data
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .locals 5

    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e7bbfb"

    const v4, 0x4b90eb9b    # 1.8994998E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    return-object p0

    nop

    :array_0
    .array-data 1
        0x10t
        0x59t
        0x7t
        0x1at
        0x16t
        0x7t
        0x6t
        0x43t
        0x7t
        0x6t
        0x46t
        0x12t
        0xat
        0x45t
        0x16t
        0x58t
        0x46t
    .end array-data
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "92a5d1"

    const/16 v3, 0x12c8

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x19t
        0x10t
        0x46t
        0x9t
        0x5at
        0x12t
    .end array-data
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "9aef1d"

    invoke-static {v1, v3, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "3fd770"

    const/16 v8, 0x4c02

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-static/range {v5 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "438c97"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    :cond_3
    return-object p0

    nop

    :array_0
    .array-data 1
        0x62t
        0x3ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x38t
        0x4t
        0x4ct
        0x4bt
        0x4dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x14t
        0x11t
        0x1bt
        0x5ft
        0x7t
        0x6bt
        0x6at
        0x53t
        0x43t
        0x1ft
        0x44t
    .end array-data
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dbd25e"

    const v3, -0x31051717    # -2.104784E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "0ca822"

    const-wide/32 v4, 0x1ab82faa

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x1t
        0xct
        0x7t
        0x5dt
        0x51t
        0x0t
        0x0t
        0x2ct
        0x5t
        0x5ft
        0x50t
        0x45t
        0x59t
        0x5ft
        0x44t
        0x5ct
        0x40t
        0x9t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x41t
        0x46t
        0x4t
        0xct
        0x11t
        0x16t
        0x5et
    .end array-data
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "d997fc"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c6423b"

    const/16 v3, -0x2d26

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 1
        0xat
        0x58t
        0x54t
        0x52t
        0x46t
        0x5et
        0x59t
        0x19t
        0x57t
        0x42t
        0xat
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x14t
        0x13t
        0xet
        0xdt
        0x41t
        0x45t
        0xbt
    .end array-data
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .locals 2

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f39366"

    const/16 v3, 0x605

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "96a454"

    const/16 v2, 0x5fcb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "e24300"

    const-wide/32 v2, 0x10dc3c2c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "dd66ac"

    const-wide v2, 0x41b30e482b000000L    # 3.19703083E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v1, "19f426"

    const-wide/32 v2, 0x142d921c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "74827f"

    const/16 v4, 0x20d3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x15t
        0x50t
        0x51t
        0x56t
        0x5bt
        0x53t
        0x46t
        0xet
        0x4t
        0x13t
        0x58t
        0x43t
        0xat
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x42t
        0x15t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0x46t
        0x40t
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0xct
        0x10t
        0x42t
        0x46t
        0x12t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x59t
        0x4dt
        0x12t
        0x44t
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x42t
        0x5at
        0x5dt
        0x4at
        0x47t
        0x3t
        0x54t
        0x40t
        0x5dt
        0x56t
        0x17t
        0x15t
        0x54t
        0x5ct
        0x5dt
        0x5ft
        0x52t
        0x5ct
        0x17t
    .end array-data
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2612aa"

    invoke-static {v2, v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "0450f6"

    const-wide v6, -0x3e200c6a99400000L    # -2.144228763E9

    invoke-static {v0, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "549ca3"

    const/16 v4, -0x5e4b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0

    :array_0
    .array-data 1
        0x57t
        0x58t
        0x52t
        0x5dt
        0x5t
        0x4t
        0x56t
        0x66t
        0x50t
        0x46t
        0x9t
        0x32t
        0x57t
        0x51t
        0x5ct
        0x57t
        0xft
        0x15t
        0x12t
        0xbt
        0xct
        0x12t
        0xft
        0x14t
        0x5et
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x16t
        0x9t
        0xet
        0x38t
        0x56t
        0x4bt
        0x49t
        0x49t
        0x1ft
        0x3at
        0x9t
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x40t
        0x5at
        0x5ct
        0x1bt
        0x11t
        0x56t
        0x56t
        0x40t
        0x5ct
        0x7t
        0x41t
        0x43t
        0x54t
        0x40t
        0x51t
        0x43t
        0x12t
        0x56t
        0x52t
        0x59t
        0x5ct
        0xdt
        0x15t
        0x9t
        0x15t
    .end array-data
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "10f266"

    const-wide/32 v4, 0x75f7f2bb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "968833"

    invoke-static {v0, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "f0cd4c"

    const v4, -0x3142583f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x41t
        0x51t
        0x12t
        0x5at
        0x65t
        0x53t
        0x56t
        0x5dt
        0x3t
        0x5ct
        0x42t
        0x16t
        0xct
        0xdt
        0x46t
        0x5ct
        0x43t
        0x5at
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x19t
        0x14t
        0x4t
        0x6t
        0x6dt
        0x53t
        0x42t
        0x4bt
        0x44t
        0x17t
        0x6ft
        0xct
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x13t
        0x5et
        0x6t
        0x1ct
        0x44t
        0x6t
        0x5t
        0x44t
        0x6t
        0x0t
        0x14t
        0x13t
        0x7t
        0x44t
        0xbt
        0x44t
        0x47t
        0x6t
        0x1t
        0x5dt
        0x6t
        0xat
        0x40t
        0x59t
        0x46t
    .end array-data
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "136eca"

    const v3, -0x311ffbe9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v1

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_4

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :array_0
    .array-data 1
        0xbt
        0x1ct
        0x19t
    .end array-data
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4d418f"

    const v3, -0x3213d1b0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "751bf7"

    const/16 v3, 0x891

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x41t
        0x17t
        0x51t
        0x43t
        0x56t
        0x7t
        0x59t
        0x1t
        0x14t
        0xct
        0x5t
        0x46t
        0x5at
        0x11t
        0x58t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x17t
        0x16t
        0x58t
        0x5dt
        0xbt
        0xat
        0xbt
        0x71t
        0x39t
        0x3bt
        0x69t
        0x57t
        0x4et
        0x4ct
        0x1et
        0x49t
        0x6bt
        0x8t
        0x16t
    .end array-data
.end method
