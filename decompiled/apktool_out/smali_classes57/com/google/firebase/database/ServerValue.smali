.class public Lcom/google/firebase/database/ServerValue;
.super Ljava/lang/Object;


# static fields
.field public static final TIMESTAMP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "93424d"

    const v2, 0x4e044f6b    # 5.549493E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/ServerValue;->createScalarServerValuePlaceholder(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x5at
        0x59t
        0x57t
        0x47t
        0x10t
        0x58t
        0x5et
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createParameterizedServerValuePlaceholder(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1dcd37"

    const v4, -0x31793503

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x1ft
        0x17t
        0x15t
    .end array-data
.end method

.method private static createScalarServerValuePlaceholder(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "217e27"

    const-wide v4, 0x41bbb0be31000000L    # 4.64567857E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x1ct
        0x42t
        0x41t
    .end array-data
.end method

.method public static final increment(D)Ljava/lang/Object;
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d37745"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/ServerValue;->createParameterizedServerValuePlaceholder(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0xdt
        0x5dt
        0x54t
        0x45t
        0x51t
        0x58t
        0x1t
        0x5dt
        0x43t
    .end array-data
.end method

.method public static final increment(J)Ljava/lang/Object;
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7ddd80"

    const/16 v2, 0x149a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/ServerValue;->createParameterizedServerValuePlaceholder(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x5et
        0xat
        0x7t
        0x16t
        0x5dt
        0x5dt
        0x52t
        0xat
        0x10t
    .end array-data
.end method
