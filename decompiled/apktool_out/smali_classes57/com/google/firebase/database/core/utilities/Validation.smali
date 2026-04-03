.class public Lcom/google/firebase/database/core/utilities/Validation;
.super Ljava/lang/Object;


# static fields
.field private static final INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

.field private static final INVALID_PATH_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "338b43"

    const-wide v2, -0x3e3fc26521800000L    # -5.44945597E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/Validation;->INVALID_PATH_REGEX:Ljava/util/regex/Pattern;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "6eadd1"

    const/16 v2, -0x92a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/Validation;->INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x68t
        0x6ft
        0x63t
        0x3et
        0x69t
        0x6ft
        0x1dt
        0x10t
        0x1ct
        0x3ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6dt
        0x39t
        0x3at
        0x38t
        0x39t
        0x6dt
        0x18t
        0x46t
        0x3dt
        0x40t
        0x38t
        0x1et
        0x6at
        0x10t
        0x51t
        0x54t
        0x54t
        0x1t
        0x1bt
        0x39t
        0x14t
        0x54t
        0x54t
        0x0t
        0x70t
        0x39t
        0x14t
        0x54t
        0x54t
        0x6t
        0x70t
        0x38t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isValidKey(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9cb660"

    const v2, 0x4ee7f4a7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/database/core/utilities/Validation;->INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x17t
        0xat
        0xct
        0x50t
        0x59t
    .end array-data
.end method

.method private static isValidPathString(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/utilities/Validation;->INVALID_PATH_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isWritableKey(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c22ab0"

    const v4, 0x4ee8e763

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "28fdab"

    const-wide/32 v4, 0x3057d67

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v0, [B

    const/16 v3, 0x18

    aput-byte v3, v2, v1

    const-string v3, "6d0d52"

    const v4, -0x31ab31cf

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/firebase/database/core/utilities/Validation;->INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x4dt
        0x44t
        0x53t
        0xdt
        0x17t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x48t
        0x14t
        0xdt
        0xet
        0x10t
        0x5bt
        0x4ct
        0x1ft
    .end array-data
.end method

.method private static isWritablePath(Lcom/google/firebase/database/core/Path;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [B

    const/16 v4, 0x4d

    aput-byte v4, v3, v0

    const-string v4, "c7edde"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static parseAndValidateUpdate(Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v6, Lcom/google/firebase/database/core/Path;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/ValidationPath;->validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "e876b7"

    invoke-static {v7, v8, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v9, [B

    fill-array-data v7, :array_1

    const-string v8, "8c855b"

    const-wide/32 v10, -0x6d5bf40f

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x9

    new-array v7, v7, [B

    fill-array-data v7, :array_2

    const-string v8, "cf6030"

    invoke-static {v7, v8, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6, v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_2
    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    invoke-interface {v5, v6, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v9, [B

    fill-array-data v5, :array_3

    const-string v7, "55877f"

    invoke-static {v5, v7, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "b05312"

    const-wide/32 v6, -0x1f3b8353

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v2

    if-gez v2, :cond_6

    :cond_4
    move v2, v4

    :goto_4
    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move-object v1, v0

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v9, [B

    fill-array-data v5, :array_5

    const-string v6, "515da6"

    const v7, -0x3149c1d5

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v5, "339811"

    invoke-static {v3, v5, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v3, "5ab8a2"

    const v4, -0x328b45c4    # -2.5661536E8f

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    return-object v5

    :array_0
    .array-data 1
        0x4bt
        0x4bt
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x15t
        0x59t
        0x59t
        0x40t
        0x7t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4dt
        0x16t
        0x44t
        0x59t
        0x5ct
        0x42t
        0xat
        0x12t
        0x4ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x65t
        0x54t
        0x4ct
        0x5ft
        0x17t
        0x41t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x45t
        0x10t
        0x56t
        0x5ct
        0x5ft
        0x46t
        0x3t
        0x59t
        0x5bt
        0x40t
        0x11t
        0x56t
        0xbt
        0x43t
        0x54t
        0x5ft
        0x5dt
        0x5dt
        0x15t
        0x55t
        0x51t
        0x13t
        0x52t
        0x5at
        0xbt
        0x5ct
        0x51t
        0x13t
        0x5ft
        0x53t
        0xft
        0x55t
        0xft
        0x13t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x65t
        0x50t
        0x41t
        0xct
        0x41t
        0x11t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x14t
        0x13t
        0x50t
        0x4bt
        0x11t
        0x50t
        0x5dt
        0x13t
        0x58t
        0x56t
        0x52t
        0x54t
        0x40t
        0x47t
        0x56t
        0x4at
        0x11t
        0x5et
        0x55t
        0x13t
        0x1et
    .end array-data

    nop

    :array_7
    .array-data 1
        0x12t
        0x41t
        0xbt
        0x56t
        0x41t
        0x53t
        0x5bt
        0x41t
        0x17t
        0x48t
        0x5t
        0x53t
        0x41t
        0x4t
        0x4ct
    .end array-data
.end method

.method private static validateDoubleValue(D)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "141826"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x78t
        0x5at
        0x47t
        0x59t
        0x5et
        0x5ft
        0x55t
        0x14t
        0x47t
        0x59t
        0x5et
        0x43t
        0x54t
        0xet
        0x11t
        0x6et
        0x53t
        0x5at
        0x44t
        0x51t
        0x11t
        0x5bt
        0x53t
        0x58t
        0x5ft
        0x5bt
        0x45t
        0x18t
        0x50t
        0x53t
        0x11t
        0x7at
        0x50t
        0x76t
        0x1et
        0x16t
        0x78t
        0x5at
        0x57t
        0x18t
        0x5dt
        0x44t
        0x11t
        0x19t
        0x78t
        0x56t
        0x54t
        0x18t
    .end array-data
.end method

.method public static validateNullableKey(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "21bdd2"

    const-wide/32 v4, 0x45fdfef3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "1ff7f7"

    const/16 v4, 0x1838

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x5ft
        0x14t
        0x5t
        0x8t
        0x5bt
        0x56t
        0x11t
        0x9t
        0x1t
        0x1dt
        0x8t
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ft
        0x46t
        0x2dt
        0x52t
        0x1ft
        0x44t
        0x11t
        0xbt
        0x13t
        0x44t
        0x12t
        0x17t
        0x5ft
        0x9t
        0x12t
        0x17t
        0x5t
        0x58t
        0x5ft
        0x12t
        0x7t
        0x5et
        0x8t
        0x17t
        0x16t
        0x49t
        0x41t
        0x1bt
        0x46t
        0x10t
        0x1ft
        0x41t
        0x4at
        0x17t
        0x41t
        0x14t
        0x16t
        0x4at
        0x46t
        0x10t
        0x42t
        0x10t
        0x1dt
        0x46t
        0x41t
        0x6ct
        0x41t
        0x1bt
        0x11t
        0x9t
        0x14t
        0x17t
        0x41t
        0x6at
        0x16t
    .end array-data
.end method

.method public static validatePathString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->isValidPathString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "df7775"

    const-wide/32 v4, -0x2dd47444

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x45

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "d54a6f"

    const-wide/32 v4, 0x3e9c8d5d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2dt
        0x8t
        0x41t
        0x56t
        0x5bt
        0x5ct
        0x0t
        0x46t
        0x71t
        0x5et
        0x45t
        0x50t
        0x6t
        0x7t
        0x44t
        0x52t
        0x17t
        0x71t
        0x5t
        0x12t
        0x56t
        0x55t
        0x56t
        0x46t
        0x1t
        0x46t
        0x47t
        0x56t
        0x43t
        0x5dt
        0x5et
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x15t
        0x72t
        0x8t
        0x44t
        0x3t
        0x6t
        0x54t
        0x47t
        0x4t
        0x16t
        0x22t
        0x5t
        0x41t
        0x55t
        0x3t
        0x57t
        0x15t
        0x1t
        0x15t
        0x44t
        0x0t
        0x42t
        0xet
        0x17t
        0x15t
        0x59t
        0x14t
        0x45t
        0x12t
        0x44t
        0x5bt
        0x5bt
        0x15t
        0x16t
        0x5t
        0xbt
        0x5bt
        0x40t
        0x0t
        0x5ft
        0x8t
        0x44t
        0x12t
        0x1at
        0x46t
        0x1at
        0x46t
        0x43t
        0x16t
        0x13t
        0x4dt
        0x16t
        0x41t
        0x40t
        0x12t
        0x18t
        0x41t
        0x11t
        0x3dt
        0x43t
        0x19t
        0x14t
        0xet
        0x44t
        0x46t
        0x43t
        0x68t
        0x13t
    .end array-data
.end method

.method public static validateRootPathString(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v3, 0x5

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "134979"

    const/16 v2, -0x552c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "7c045b"

    const-wide v2, -0x3e4acff140000000L    # -3.5547104E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x1ft
        0x5at
        0x5at
        0x5ft
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x4dt
        0x59t
        0x5at
        0x53t
        0xdt
    .end array-data
.end method

.method public static validateWritableKey(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->isWritableKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5055d0"

    const-wide/32 v4, -0x686180c0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e63f20"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ct
        0x5et
        0x43t
        0x54t
        0x8t
        0x59t
        0x51t
        0x10t
        0x5et
        0x50t
        0x1dt
        0xat
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4bt
        0x16t
        0x78t
        0x3t
        0x4bt
        0x43t
        0x45t
        0x5bt
        0x46t
        0x15t
        0x46t
        0x10t
        0xbt
        0x59t
        0x47t
        0x46t
        0x51t
        0x5ft
        0xbt
        0x42t
        0x52t
        0xft
        0x5ct
        0x10t
        0x42t
        0x19t
        0x14t
        0x4at
        0x12t
        0x17t
        0x4bt
        0x11t
        0x1ft
        0x46t
        0x15t
        0x13t
        0x42t
        0x1at
        0x13t
        0x41t
        0x16t
        0x17t
        0x49t
        0x16t
        0x14t
        0x3dt
        0x15t
        0x1ct
        0x45t
        0x59t
        0x41t
        0x46t
        0x15t
        0x6dt
        0x42t
    .end array-data
.end method

.method public static validateWritableObject(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ce0f98"

    const v2, -0x31ee7292

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritableKey(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    :cond_4
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Validation;->validateDoubleValue(D)V

    goto :goto_0

    :array_0
    .array-data 1
        0x4dt
        0x16t
        0x46t
    .end array-data
.end method

.method public static validateWritablePath(Lcom/google/firebase/database/core/Path;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->isWritablePath(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e86170"

    const/16 v4, -0x64b3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2ct
        0x56t
        0x40t
        0x50t
        0x5bt
        0x59t
        0x1t
        0x18t
        0x41t
        0x43t
        0x5et
        0x44t
        0x0t
        0x18t
        0x5at
        0x5et
        0x54t
        0x51t
        0x11t
        0x51t
        0x59t
        0x5ft
        0xdt
        0x10t
    .end array-data
.end method
