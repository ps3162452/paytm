.class public abstract Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DIAGNOSTICS_DEST_PROPERTY:Ljava/lang/String;

.field public static final FACTORY_DEFAULT:Ljava/lang/String;

.field public static final FACTORY_PROPERTIES:Ljava/lang/String;

.field public static final FACTORY_PROPERTY:Ljava/lang/String;

.field public static final HASHTABLE_IMPLEMENTATION_PROPERTY:Ljava/lang/String;

.field public static final PRIORITY_KEY:Ljava/lang/String;

.field protected static final SERVICE_ID:Ljava/lang/String;

.field public static final TCCL_KEY:Ljava/lang/String;

.field protected static factories:Ljava/util/Hashtable;

.field protected static nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x8

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7d9f45"

    const-wide v2, -0x3e2d99015dc00000L    # -1.234958985E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->DIAGNOSTICS_DEST_PROPERTY:Ljava/lang/String;

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2d3c60"

    const/16 v2, -0x3832

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->FACTORY_DEFAULT:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "3292c9"

    const/16 v2, -0x69d5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->FACTORY_PROPERTIES:Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "7ad9b8"

    const/16 v2, 0x6a76

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->FACTORY_PROPERTY:Ljava/lang/String;

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "8ba808"

    const-wide/32 v2, -0x5a18cca4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->HASHTABLE_IMPLEMENTATION_PROPERTY:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "a80f80"

    const-wide/32 v2, -0x2727acc1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->PRIORITY_KEY:Ljava/lang/String;

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "f0e55c"

    const-wide/32 v2, 0x6ca5f3b6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->SERVICE_ID:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_7

    const-string v1, "bb0ef1"

    const-wide/32 v2, -0x17b08d3b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->TCCL_KEY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x58t
        0x16t
        0x5et
        0x48t
        0x55t
        0x45t
        0x56t
        0x7t
        0x51t
        0x3t
        0x1at
        0x56t
        0x58t
        0x9t
        0x54t
        0x9t
        0x5at
        0x46t
        0x19t
        0x8t
        0x56t
        0x1t
        0x53t
        0x5ct
        0x59t
        0x3t
        0x17t
        0x2t
        0x5dt
        0x54t
        0x50t
        0xat
        0x56t
        0x15t
        0x40t
        0x5ct
        0x54t
        0x17t
        0x17t
        0x2t
        0x51t
        0x46t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x5dt
        0x16t
        0x54t
        0x4dt
        0x57t
        0x40t
        0x53t
        0x7t
        0x5bt
        0x6t
        0x18t
        0x53t
        0x5dt
        0x9t
        0x5et
        0xct
        0x58t
        0x43t
        0x1ct
        0x8t
        0x5ct
        0x4t
        0x51t
        0x59t
        0x5ct
        0x3t
        0x1dt
        0xat
        0x5bt
        0x40t
        0x5et
        0x4at
        0x7ft
        0xct
        0x51t
        0x76t
        0x53t
        0x7t
        0x47t
        0xct
        0x44t
        0x49t
        0x7bt
        0x9t
        0x43t
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x50t
        0x5dt
        0x54t
        0x5ft
        0xct
        0x57t
        0x40t
        0x1ft
        0x55t
        0x5dt
        0x4t
        0x5et
        0x5at
        0x5ct
        0x5et
        0x1ct
        0x13t
        0x4bt
        0x5ct
        0x42t
        0x5ct
        0x40t
        0x17t
        0x50t
        0x56t
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x58t
        0x13t
        0x3t
        0x17t
        0x3t
        0x48t
        0x56t
        0x2t
        0xct
        0x5ct
        0x4ct
        0x5bt
        0x58t
        0xct
        0x9t
        0x56t
        0xct
        0x4bt
        0x19t
        0xdt
        0xbt
        0x5et
        0x5t
        0x51t
        0x59t
        0x6t
        0x4at
        0x75t
        0xdt
        0x5ft
        0x71t
        0x0t
        0x7t
        0x4dt
        0xdt
        0x4at
        0x4et
    .end array-data

    nop

    :array_4
    .array-data 1
        0x57t
        0x10t
        0x6t
        0x16t
        0x51t
        0x48t
        0x59t
        0x1t
        0x9t
        0x5dt
        0x1et
        0x5bt
        0x57t
        0xft
        0xct
        0x57t
        0x5et
        0x4bt
        0x16t
        0xet
        0xet
        0x5ft
        0x57t
        0x51t
        0x56t
        0x5t
        0x4ft
        0x74t
        0x5ft
        0x5ft
        0x7et
        0x3t
        0x2t
        0x4ct
        0x5ft
        0x4at
        0x41t
        0x4ct
        0x29t
        0x59t
        0x43t
        0x50t
        0x4ct
        0x3t
        0x3t
        0x54t
        0x55t
        0x71t
        0x55t
        0x12t
        0xdt
    .end array-data

    :array_5
    .array-data 1
        0x11t
        0x4at
        0x59t
        0x9t
        0x4at
        0x59t
        0x15t
        0x41t
    .end array-data

    :array_6
    .array-data 1
        0x2bt
        0x75t
        0x31t
        0x74t
        0x18t
        0x2at
        0x28t
        0x76t
        0x4at
        0x46t
        0x50t
        0x11t
        0x10t
        0x59t
        0x6t
        0x50t
        0x46t
        0x4ct
        0x9t
        0x42t
        0x2t
        0x1bt
        0x54t
        0x13t
        0x7t
        0x53t
        0xdt
        0x50t
        0x1bt
        0x0t
        0x9t
        0x5dt
        0x8t
        0x5at
        0x5bt
        0x10t
        0x48t
        0x5ct
        0xat
        0x52t
        0x52t
        0xat
        0x8t
        0x57t
        0x4bt
        0x79t
        0x5at
        0x4t
        0x20t
        0x51t
        0x6t
        0x41t
        0x5at
        0x11t
        0x1ft
    .end array-data

    :array_7
    .array-data 1
        0x17t
        0x11t
        0x55t
        0x3at
        0x12t
        0x52t
        0x1t
        0xet
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a5e405"

    const v3, -0x31441e80

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x41t
        0x10t
        0x56t
        0x11t
    .end array-data
.end method

.method protected static createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b0b6bb"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0x44t
        0x17t
        0x54t
        0x43t
    .end array-data
.end method

.method protected static directGetContextClassLoader()Ljava/lang/ClassLoader;
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

    const-string v2, "0b6c9a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x16t
        0x43t
        0x1t
        0x18t
    .end array-data
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c78ff8"

    const-wide v4, -0x3e49c39a98000000L    # -3.73056872E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x43t
        0x4dt
        0x4t
        0x47t
    .end array-data
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
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

    const-string v2, "90727c"

    const v3, 0x4e67d9f2    # 9.7245504E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x44t
        0x42t
        0x50t
        0x16t
    .end array-data
.end method

.method public static getFactory()Lorg/apache/commons/logging/LogFactory;
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

    const-string v2, "d31106"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x47t
        0x44t
        0x53t
        0x11t
    .end array-data
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ee9f26"

    const-wide v4, -0x3e25263d14000000L    # -1.801915312E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x11t
        0x4ct
        0x4t
        0x13t
    .end array-data
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
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

    const-string v2, "cfb329"

    const/16 v3, -0xd64

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x12t
        0x17t
        0x51t
        0x13t
    .end array-data
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dff8ad"

    const-wide/32 v4, 0x7dbc279d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x12t
        0x13t
        0x5at
        0x40t
    .end array-data
.end method

.method protected static final logRawDiagnostic(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c08bc2"

    const-wide v4, -0x3e46f671de000000L    # -4.2005661E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x44t
        0x4dt
        0x0t
        0x42t
    .end array-data
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "aa7bff"

    const/16 v3, -0x68b0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x15t
        0x42t
        0x0t
        0x47t
    .end array-data
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
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

    const-string v2, "1fad0e"

    const v3, 0x4e959927

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x12t
        0x14t
        0x6t
        0x11t
    .end array-data
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2916d2"

    const/16 v3, 0x30e1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x4dt
        0x44t
        0x54t
        0x45t
    .end array-data
.end method

.method public static release(Ljava/lang/ClassLoader;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2689d2"

    const-wide/32 v4, -0x5b21bf31

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x42t
        0x4dt
        0x5bt
        0x45t
    .end array-data
.end method

.method public static releaseAll()V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ce4609"

    const-wide v4, 0x41c125f3c7800000L    # 5.75399823E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x11t
        0x41t
        0x54t
        0x11t
    .end array-data
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
