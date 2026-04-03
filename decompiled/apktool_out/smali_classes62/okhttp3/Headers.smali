.class public final Lokhttp3/Headers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/Headers$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, p0, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static of(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "333813"

    const v3, -0x31d01eb1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "32823f"

    invoke-static {v1, v2, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x13

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "f2594c"

    const-wide/32 v6, -0x16848e4b

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "491cad"

    const/16 v5, 0x6185

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v4, v1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lokhttp3/Headers;

    invoke-direct {v0, v4}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x56t
        0x52t
        0x5ct
        0x54t
        0x41t
        0x40t
        0x13t
        0xet
        0x5t
        0x11t
        0x5dt
        0x46t
        0x5ft
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x57t
        0x59t
        0x56t
        0x56t
        0x14t
        0x40t
        0x12t
        0x5bt
        0x53t
        0x5dt
        0x8t
        0x5ct
        0x46t
        0x18t
        0x50t
        0x56t
        0x46t
        0x5dt
        0x47t
        0x54t
        0x5et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x33t
        0x5ct
        0x50t
        0x41t
        0x44t
        0x6t
        0x5t
        0x46t
        0x50t
        0x5dt
        0x14t
        0xbt
        0x3t
        0x53t
        0x51t
        0x5ct
        0x46t
        0x59t
        0x46t
    .end array-data

    :array_3
    .array-data 1
        0xet
        0x19t
    .end array-data
.end method

.method public static varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 8

    const/16 v4, 0x16

    const/4 v6, -0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "e8ed38"

    const/16 v3, 0x3e2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5c4773"

    const/16 v3, 0x5b52

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    const-string v2, "c3f205"

    const-wide v4, -0x3e22c2caec800000L    # -1.96220219E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_6

    aget-object v3, v0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v5, "d4ed8e"

    const-wide/32 v6, 0x7f92e1b4

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "328090"

    const v5, 0x4e9d9ef8

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_6
    new-instance v1, Lokhttp3/Headers;

    invoke-direct {v1, v0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0xbt
        0x59t
        0x8t
        0x1t
        0x40t
        0x79t
        0xbt
        0x5ct
        0x33t
        0x5t
        0x5ft
        0x4dt
        0x0t
        0x4bt
        0x45t
        0x59t
        0xet
        0x18t
        0xbt
        0x4dt
        0x9t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x1bt
        0x44t
        0x52t
        0x54t
        0x47t
        0x50t
        0x7t
        0x14t
        0x56t
        0x5bt
        0x47t
        0x50t
        0x11t
        0x5at
        0x56t
        0x43t
        0x5at
        0x5bt
        0x4t
        0x14t
        0x5ft
        0x52t
        0x52t
        0x51t
        0x6t
        0x46t
        0x17t
        0x59t
        0x52t
        0x58t
        0x6t
        0x47t
        0x17t
        0x56t
        0x5dt
        0x51t
        0x43t
        0x42t
        0x56t
        0x5bt
        0x46t
        0x50t
        0x10t
    .end array-data

    :array_2
    .array-data 1
        0x2bt
        0x56t
        0x7t
        0x56t
        0x55t
        0x47t
        0x10t
        0x13t
        0x5t
        0x53t
        0x5et
        0x5bt
        0xct
        0x47t
        0x46t
        0x50t
        0x55t
        0x15t
        0xdt
        0x46t
        0xat
        0x5et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x31t
        0x5at
        0x0t
        0x1ct
        0x48t
        0x0t
        0x7t
        0x40t
        0x0t
        0x0t
        0x18t
        0xdt
        0x1t
        0x55t
        0x1t
        0x1t
        0x4at
        0x5ft
        0x44t
    .end array-data

    :array_4
    .array-data 1
        0x9t
        0x12t
    .end array-data
.end method


# virtual methods
.method public byteCount()J
    .locals 6

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v2, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lokhttp3/Headers;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/Headers;

    iget-object v0, p1, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lokhttp3/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Headers$Builder;
    .locals 3

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v1, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toMultimap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "c84ed1"

    const/16 v6, 0x4dce

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x59t
        0x18t
    .end array-data
.end method

.method public value(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
