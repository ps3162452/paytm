.class public final Lorg/apache/http/impl/cookie/DateUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String;

.field public static final PATTERN_RFC1036:Ljava/lang/String;

.field public static final PATTERN_RFC1123:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "056a05"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->PATTERN_ASCTIME:Ljava/lang/String;

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "93d3d6"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->PATTERN_RFC1036:Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "db03ca"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->PATTERN_RFC1123:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    return-void

    nop

    :array_0
    .array-data 1
        0x75t
        0x70t
        0x73t
        0x41t
        0x7dt
        0x78t
        0x7dt
        0x15t
        0x52t
        0x41t
        0x78t
        0x7dt
        0xat
        0x58t
        0x5bt
        0x5bt
        0x43t
        0x46t
        0x10t
        0x4ct
        0x4ft
        0x18t
        0x49t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x76t
        0x21t
        0x76t
        0x48t
        0x16t
        0x5dt
        0x57t
        0x49t
        0x7et
        0x29t
        0x7bt
        0x14t
        0x4at
        0x1dt
        0x13t
        0x2ct
        0x7et
        0x3t
        0x5et
        0x9t
        0x9t
        0x17t
        0x45t
        0x19t
        0x49t
        0x1et
        0x49t
    .end array-data

    :array_2
    .array-data 1
        0x21t
        0x27t
        0x75t
        0x1ft
        0x43t
        0x5t
        0x0t
        0x42t
        0x7dt
        0x7et
        0x2et
        0x41t
        0x1dt
        0x1bt
        0x49t
        0x4at
        0x43t
        0x29t
        0x2ct
        0x58t
        0x5dt
        0x5et
        0x59t
        0x12t
        0x17t
        0x42t
        0x4at
        0x49t
        0x19t
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b81499"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x4ct
        0x44t
        0x56t
        0x18t
    .end array-data
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "95f4d0"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x41t
        0x13t
        0x56t
        0x45t
    .end array-data
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bfcae9"

    const-wide/32 v4, 0x3a444130

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x12t
        0x16t
        0x3t
        0x44t
    .end array-data
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3c7b0d"

    const-wide/32 v4, 0x28079059

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x17t
        0x42t
        0x0t
        0x11t
    .end array-data
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "970133"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6at
        0x43t
        0x45t
        0x53t
        0x12t
    .end array-data
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9cce38"

    const-wide v4, 0x41b77b4ca2000000L    # 3.93956514E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x17t
        0x16t
        0x7t
        0x12t
    .end array-data
.end method
