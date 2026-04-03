.class public final Lorg/apache/http/HttpVersion;
.super Lorg/apache/http/ProtocolVersion;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP:Ljava/lang/String;

.field public static final HTTP_0_9:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/http/HttpVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0b9515"

    const-wide/32 v2, -0x268807b4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP:Ljava/lang/String;

    sput-object v4, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    sput-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    sput-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x36t
        0x6dt
        0x65t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "467bfd"

    const v3, -0x314335b4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x67t
        0x42t
        0x42t
        0x0t
        0x47t
    .end array-data
.end method


# virtual methods
.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "988516"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x4ct
        0x4dt
        0x57t
        0x10t
    .end array-data
.end method
