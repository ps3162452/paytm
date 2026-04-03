.class public final Lokio/Options;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p5

    move/from16 v1, p6

    if-lt v0, v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move/from16 v3, p5

    :goto_0
    move/from16 v0, p6

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    add-int/lit8 v3, p6, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    const/4 v4, -0x1

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_11

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v7, p5, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    move v5, v4

    move-object v4, v2

    :goto_1
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lokio/ByteString;->getByte(I)B

    move-result v2

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v2, v6, :cond_a

    const/4 v4, 0x1

    add-int/lit8 v2, v7, 0x1

    move v3, v2

    :goto_2
    move/from16 v0, p6

    if-ge v3, v0, :cond_3

    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v6, v2, :cond_10

    add-int/lit8 v2, v4, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_2

    :cond_3
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p0

    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    mul-int/lit8 v6, v4, 0x2

    int-to-long v8, v6

    add-long/2addr v2, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v5, v7

    :goto_4
    move/from16 v0, p6

    if-ge v5, v0, :cond_6

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v5, v7, :cond_4

    add-int/lit8 v4, v5, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v6, v4, :cond_5

    :cond_4
    and-int/lit16 v4, v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    :cond_6
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    :goto_5
    move/from16 v0, p6

    if-ge v7, v0, :cond_9

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lokio/ByteString;->getByte(I)B

    move-result v6

    add-int/lit8 v8, v7, 0x1

    :goto_6
    move/from16 v0, p6

    if-ge v8, v0, :cond_f

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v6, v5, :cond_7

    :goto_7
    add-int/lit8 v5, v7, 0x1

    if-ne v5, v8, :cond_8

    add-int/lit8 v6, p3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v6, v5, :cond_8

    move-object/from16 v0, p7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :goto_8
    move v7, v8

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    const-wide/16 v10, -0x1

    invoke-static {v4}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v12, v2

    mul-long/2addr v10, v12

    long-to-int v5, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v5, p3, 0x1

    move-object/from16 v6, p4

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_9
    return-void

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v2

    move/from16 v2, p3

    :goto_a
    if-ge v2, v8, :cond_b

    invoke-virtual {v4, v2}, Lokio/ByteString;->getByte(I)B

    move-result v9

    invoke-virtual {v3, v2}, Lokio/ByteString;->getByte(I)B

    move-result v10

    if-ne v9, v10, :cond_b

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p0

    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    int-to-long v8, v6

    add-long/2addr v2, v8

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    neg-int v8, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v5, p3

    :goto_b
    add-int v8, p3, v6

    if-ge v5, v8, :cond_c

    invoke-virtual {v4, v5}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v4, v7, 0x1

    move/from16 v0, p6

    if-ne v4, v0, :cond_e

    add-int v3, p3, v6

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    if-eq v3, v2, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_d
    move-object/from16 v0, p7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_9

    :cond_e
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    const-wide/16 v8, -0x1

    invoke-static {v4}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v10, v2

    mul-long/2addr v8, v10

    long-to-int v5, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int v5, p3, v6

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto/16 :goto_9

    :cond_f
    move/from16 v8, p6

    goto/16 :goto_7

    :cond_10
    move v2, v4

    goto/16 :goto_3

    :cond_11
    move v5, v4

    move/from16 v7, p5

    move-object v4, v2

    goto/16 :goto_1
.end method

.method private static intCount(Lokio/Buffer;)I
    .locals 4

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 9

    const/4 v3, 0x0

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance v0, Lokio/Options;

    new-array v1, v3, [Lokio/ByteString;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v4, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "48b125"

    const-wide v4, -0x3e42cdaea3000000L    # -4.89836893E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    add-int/lit8 v1, v2, 0x1

    move v5, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1, v0}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v8

    if-ne v6, v8, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x12

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "a303aa"

    invoke-static {v4, v5, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_7

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    :cond_8
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const-wide/16 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v5, v3

    invoke-static/range {v0 .. v7}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    invoke-static {v2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v0

    new-array v4, v0, [I

    :goto_5
    array-length v0, v4

    if-ge v3, v0, :cond_9

    invoke-virtual {v2}, Lokio/Buffer;->readInt()I

    move-result v0

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    new-instance v1, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokio/ByteString;

    invoke-direct {v1, v0, v4}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    move-object v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x50t
        0x7t
        0x11t
        0x57t
        0x58t
        0x44t
        0x4ct
        0x1bt
        0x11t
        0x50t
        0x4ct
        0x40t
        0x5dt
        0x42t
        0x42t
        0x46t
        0x47t
        0x5dt
        0x56t
        0x5t
        0x11t
        0x5bt
        0x46t
        0x14t
        0x56t
        0xdt
        0x45t
        0x12t
        0x54t
        0x14t
        0x4bt
        0x17t
        0x41t
        0x42t
        0x5at
        0x46t
        0x4ct
        0x7t
        0x55t
        0x12t
        0x5at
        0x44t
        0x4ct
        0xbt
        0x5et
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x5t
        0x46t
        0x40t
        0x5ft
        0x8t
        0x2t
        0x0t
        0x47t
        0x55t
        0x13t
        0xet
        0x11t
        0x15t
        0x5at
        0x5ft
        0x5dt
        0x5bt
        0x41t
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
