.class public Lorg/apache/commons/logging/impl/LogFactoryImpl;
.super Lorg/apache/commons/logging/LogFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String;

.field public static final ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String;

.field public static final ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String;

.field public static final LOG_PROPERTY:Ljava/lang/String;

.field protected static final LOG_PROPERTY_OLD:Ljava/lang/String;


# instance fields
.field protected attributes:Ljava/util/Hashtable;

.field protected instances:Ljava/util/Hashtable;

.field protected logConstructor:Ljava/lang/reflect/Constructor;

.field protected logConstructorSignature:[Ljava/lang/Class;

.field protected logMethod:Ljava/lang/reflect/Method;

.field protected logMethodSignature:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x33

    const/16 v3, 0x1e

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8ec8dc"

    const v2, -0x315546b4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "90041d"

    const v2, -0x3192fde1    # -9.940848E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "f39bd7"

    const/16 v2, 0x6928

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    const-string v1, "ab0671"

    const v2, 0x4d7b4d69    # 2.6350965E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->LOG_PROPERTY:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_4

    const-string v1, "00ed90"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->LOG_PROPERTY_OLD:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x57t
        0x17t
        0x4t
        0x16t
        0x5t
        0x13t
        0x59t
        0x6t
        0xbt
        0x5dt
        0x4at
        0x0t
        0x57t
        0x8t
        0xet
        0x57t
        0xat
        0x10t
        0x16t
        0x9t
        0xct
        0x5ft
        0x3t
        0xat
        0x56t
        0x2t
        0x4dt
        0x74t
        0xbt
        0x4t
        0x16t
        0x4t
        0xft
        0x54t
        0xbt
        0x14t
        0x7et
        0x9t
        0x2t
        0x4ft
        0x1t
        0x7t
        0x7bt
        0xat
        0xdt
        0x4ct
        0x1t
        0x1bt
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x42t
        0x57t
        0x1at
        0x50t
        0x14t
        0x58t
        0x53t
        0x58t
        0x51t
        0x1ft
        0x7t
        0x56t
        0x5dt
        0x5dt
        0x5bt
        0x5ft
        0x17t
        0x17t
        0x5ct
        0x5ft
        0x53t
        0x56t
        0xdt
        0x57t
        0x57t
        0x1et
        0x78t
        0x5et
        0x3t
        0x17t
        0x51t
        0x5ct
        0x58t
        0x5et
        0x13t
        0x7ft
        0x5ct
        0x51t
        0x43t
        0x54t
        0x0t
        0x7dt
        0x59t
        0x43t
        0x57t
        0x5et
        0x12t
        0x5ct
        0x42t
        0x49t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x41t
        0x5et
        0x4ct
        0x5t
        0x47t
        0x7t
        0x50t
        0x51t
        0x7t
        0x4at
        0x54t
        0x9t
        0x5et
        0x54t
        0xdt
        0xat
        0x44t
        0x48t
        0x5ft
        0x56t
        0x5t
        0x3t
        0x5et
        0x8t
        0x54t
        0x17t
        0x2et
        0xbt
        0x50t
        0x48t
        0x52t
        0x55t
        0xet
        0xbt
        0x40t
        0x20t
        0x5ft
        0x58t
        0x15t
        0x1t
        0x53t
        0x2et
        0x5at
        0x5ct
        0x10t
        0x5t
        0x45t
        0x5t
        0x5bt
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0xet
        0x10t
        0x57t
        0x18t
        0x56t
        0x41t
        0x0t
        0x1t
        0x58t
        0x53t
        0x19t
        0x52t
        0xet
        0xft
        0x5dt
        0x59t
        0x59t
        0x42t
        0x4ft
        0xet
        0x5ft
        0x51t
        0x50t
        0x58t
        0xft
        0x5t
        0x1et
        0x7at
        0x58t
        0x56t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5ft
        0x42t
        0x2t
        0x4at
        0x58t
        0x40t
        0x51t
        0x53t
        0xdt
        0x1t
        0x17t
        0x53t
        0x5ft
        0x5dt
        0x8t
        0xbt
        0x57t
        0x43t
        0x1et
        0x5ct
        0xat
        0x3t
        0x5et
        0x59t
        0x5et
        0x57t
        0x4bt
        0x8t
        0x56t
        0x57t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d67470"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x42t
        0x42t
        0x56t
        0x16t
    .end array-data
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a4d7c3"

    const v3, -0x31160e9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x32t
        0x40t
        0x11t
        0x55t
        0x42t
    .end array-data
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1712b7"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x43t
        0x44t
        0x50t
        0x43t
    .end array-data
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6d8027"

    const v3, -0x318b9fe7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x10t
        0x4dt
        0x52t
        0x13t
    .end array-data
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e59ea6"

    const-wide/32 v4, -0x1fbd9cc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x41t
        0x4ct
        0x7t
        0x40t
    .end array-data
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3955c9"

    const-wide/32 v4, -0xceab709

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x4dt
        0x40t
        0x57t
        0x42t
    .end array-data
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "73743f"

    const/16 v3, 0x2091

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x64t
        0x47t
        0x42t
        0x56t
        0x12t
    .end array-data
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6bc3fa"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x16t
        0x16t
        0x51t
        0x47t
    .end array-data
.end method

.method protected getLogClassName()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "872cc5"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x43t
        0x47t
        0x1t
        0x42t
    .end array-data
.end method

.method protected getLogConstructor()Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "daefe5"

    const-wide v4, -0x3e2a6322d3800000L    # -1.45040709E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x15t
        0x10t
        0x4t
        0x44t
    .end array-data
.end method

.method protected isJdk13LumberjackAvailable()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c0994e"

    const v3, -0x317be403

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x44t
        0x4ct
        0x5bt
        0x15t
    .end array-data
.end method

.method protected isJdk14Available()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "203eea"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x44t
        0x46t
        0x7t
        0x44t
    .end array-data
.end method

.method protected isLog4JAvailable()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4ecc26"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0x11t
        0x16t
        0x1t
        0x13t
    .end array-data
.end method

.method protected logDiagnostic(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3b4bd7"

    const-wide v4, 0x41d11e938d000000L    # 1.1488661E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x16t
        0x41t
        0x0t
        0x45t
    .end array-data
.end method

.method protected newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "27762c"

    const v3, 0x4e4dbb49    # 8.629008E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x43t
        0x42t
        0x54t
        0x13t
    .end array-data
.end method

.method public release()V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c69e3a"

    const-wide/32 v4, 0x6793e532

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x42t
        0x4ct
        0x7t
        0x12t
    .end array-data
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fb7756"

    const-wide v4, -0x3e38d13e81000000L    # -7.77880318E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x16t
        0x42t
        0x55t
        0x14t
    .end array-data
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "52df1c"

    const/16 v3, -0x60af

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x66t
        0x46t
        0x11t
        0x4t
        0x10t
    .end array-data
.end method
