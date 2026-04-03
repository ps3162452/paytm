.class final Lcom/google/android/material/color/ColorResourcesTableCreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_ID:B = 0x1t

.field private static final ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private static final APPLICATION_PACKAGE_ID:B = 0x7ft

.field private static final COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_TYPE_PACKAGE:S = 0x200s

.field private static final HEADER_TYPE_RES_TABLE:S = 0x2s

.field private static final HEADER_TYPE_STRING_POOL:S = 0x1s

.field private static final HEADER_TYPE_TYPE:S = 0x201s

.field private static final HEADER_TYPE_TYPE_SPEC:S = 0x202s

.field private static final RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String;

.field private static typeIdColor:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "437ea9"

    const-wide/32 v2, -0x77a09fa0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String;

    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    const/4 v1, 0x1

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c4692c"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$1;

    invoke-direct {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 1
        0x57t
        0x5ct
        0x5bt
        0xat
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x5at
        0x52t
        0x4bt
        0x5dt
        0xat
        0x7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(C)[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()B
    .locals 1

    sget-byte v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    return v0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(I)[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(S)[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArrayUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static charToByteArray(C)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x7f

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v6, v7, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/color/ColorResourcesTableCreator;->RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    :goto_1
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v0

    if-ne v0, v8, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v4, "6bbc94"

    const-wide v6, 0x41b6569652000000L    # 3.7477333E8

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v4, "95f961"

    const v5, -0x3345a42d    # -9.7705624E7f

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v4, "9e289f"

    const/16 v5, 0x418e

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v0

    int-to-byte v1, v0

    sput-byte v1, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;

    invoke-direct {v1, v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "094b8b"

    const v3, -0x3211a04a    # -4.9990624E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "729acc"

    const-wide v4, 0x41b7284a21000000L    # 3.88516385E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x78t
        0xdt
        0x16t
        0x43t
        0x4at
        0x41t
        0x46t
        0x12t
        0xdt
        0x11t
        0x4dt
        0x51t
        0x52t
        0x42t
        0x15t
        0xat
        0x4dt
        0x5ct
        0x16t
        0x17t
        0xct
        0x8t
        0x57t
        0x5bt
        0x41t
        0xct
        0x42t
        0x13t
        0x58t
        0x57t
        0x5dt
        0x3t
        0x5t
        0x6t
        0x19t
        0x5dt
        0x52t
        0x58t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x5at
        0x8t
        0x19t
        0x55t
        0x5et
        0x55t
        0x5at
        0x14t
        0x19t
        0x44t
        0x54t
        0x4at
        0x5at
        0x13t
        0x4bt
        0x55t
        0x54t
        0x19t
        0x53t
        0x9t
        0x4ct
        0x58t
        0x55t
        0x3t
        0x15t
        0x8t
        0x58t
        0x5bt
        0x54t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x15t
        0x45t
        0x46t
        0x41t
        0x49t
        0x3t
        0x70t
        0x1t
        0xft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7et
        0x56t
        0x14t
        0x1t
        0x57t
        0xet
        0x5ft
        0x4bt
        0x14t
        0x10t
        0x5dt
        0x11t
        0x5ft
        0x4ct
        0x46t
        0x1t
        0x5dt
        0x11t
        0x10t
        0x5ft
        0x5bt
        0x17t
        0x56t
        0x6t
        0x10t
        0x5ft
        0x5bt
        0x10t
        0x18t
        0xat
        0x51t
        0x4bt
        0x59t
        0xdt
        0x56t
        0xbt
        0x4at
        0x58t
        0x40t
        0xbt
        0x57t
        0xct
        0x1et
    .end array-data

    :array_4
    .array-data 1
        0x79t
        0x5dt
        0x19t
        0x2t
        0xct
        0xft
        0x58t
        0x40t
        0x19t
        0x13t
        0x6t
        0x10t
        0x58t
        0x47t
        0x4bt
        0x2t
        0x6t
        0x10t
        0x17t
        0x42t
        0x4bt
        0xet
        0x15t
        0xat
        0x53t
        0x57t
        0x5dt
        0x41t
        0x5t
        0xct
        0x45t
        0x12t
        0x51t
        0x0t
        0x11t
        0xet
        0x58t
        0x5ct
        0x50t
        0x1bt
        0x2t
        0x17t
        0x5et
        0x5dt
        0x57t
        0x4ft
    .end array-data
.end method

.method private static intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static shortToByteArray(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    array-length v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    move-result-object v0

    aget-byte v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    aget-byte v0, v0, v7

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-char v4, v2, v0

    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-byte v6, v4, v1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    int-to-byte v2, v1

    aput-byte v2, v3, v0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    return-object v3
.end method

.method private static stringToByteArrayUtf8(Ljava/lang/String;)[B
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0801cc"

    const v2, -0x31778ff7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    int-to-byte v1, v1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x2

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v4

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, v4

    aput-byte v1, v2, v0

    return-object v2

    nop

    :array_0
    .array-data 1
        0x65t
        0x6ct
        0x76t
        0x1ct
        0x5bt
    .end array-data
.end method
