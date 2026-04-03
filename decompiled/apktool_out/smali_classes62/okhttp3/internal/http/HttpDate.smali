.class public final Lokhttp3/internal/http/HttpDate;
.super Ljava/lang/Object;


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public static final MAX_DATE:J = 0xe677d21fdbffL

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0x19

    const/16 v9, 0x18

    const/4 v8, 0x1

    const/16 v7, 0x1a

    const/4 v6, 0x0

    new-instance v0, Lokhttp3/internal/http/HttpDate$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "756980"

    const/16 v3, 0x7c2d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b2f461"

    const v3, -0x3204ab15    # -5.270808E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "48a932"

    invoke-static {v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "60311b"

    const-wide/32 v4, -0x1b34054

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "485406"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v10, [B

    fill-array-data v2, :array_5

    const-string v3, "94378a"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [B

    fill-array-data v2, :array_6

    const-string v3, "87ed89"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [B

    fill-array-data v2, :array_7

    const-string v3, "319cd4"

    invoke-static {v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [B

    fill-array-data v2, :array_8

    const-string v3, "b04e4d"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [B

    fill-array-data v2, :array_9

    const-string v3, "259c9f"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [B

    fill-array-data v2, :array_a

    const-string v3, "ad4977"

    const v4, 0x4e347803    # 7.56941E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v9, [B

    fill-array-data v2, :array_b

    const-string v3, "45edb1"

    const-wide v4, 0x41b5989f56000000L    # 3.62323798E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [B

    fill-array-data v2, :array_c

    const-string v3, "d1322f"

    const v4, 0x4e19a120    # 6.443684E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [B

    fill-array-data v2, :array_d

    const-string v3, "07a263"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v10, [B

    fill-array-data v2, :array_e

    const-string v3, "b2a6b2"

    const-wide v4, -0x3e2a4c160f400000L    # -1.456449475E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void

    :array_0
    .array-data 1
        0x72t
        0x70t
        0x73t
        0x15t
        0x18t
        0x54t
        0x53t
        0x15t
        0x7bt
        0x74t
        0x75t
        0x10t
        0x4et
        0x4ct
        0x4ft
        0x40t
        0x18t
        0x78t
        0x7ft
        0xft
        0x5bt
        0x54t
        0x2t
        0x43t
        0x44t
        0x15t
        0x4ct
        0x43t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x77t
        0x23t
        0x71t
        0x1at
        0x11t
        0x6t
        0x56t
        0x4bt
        0x79t
        0x7bt
        0x7ct
        0x4ft
        0x4bt
        0x1ft
        0x14t
        0x7et
        0x79t
        0x58t
        0x5ft
        0xbt
        0xet
        0x45t
        0x42t
        0x42t
        0x48t
        0x1ct
        0x4et
    .end array-data

    :array_2
    .array-data 1
        0x71t
        0x7dt
        0x24t
        0x19t
        0x7et
        0x7ft
        0x79t
        0x18t
        0x5t
        0x19t
        0x7bt
        0x7at
        0xet
        0x55t
        0xct
        0x3t
        0x40t
        0x41t
        0x14t
        0x41t
        0x18t
        0x40t
        0x4at
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0x75t
        0x76t
        0x1dt
        0x11t
        0x6t
        0x52t
        0x1dt
        0x7et
        0x7ct
        0x7ct
        0x4ft
        0x4ft
        0x49t
        0x4at
        0x48t
        0x11t
        0x2at
        0x7et
        0xat
        0x5et
        0x5ct
        0xbt
        0x11t
        0x45t
        0x10t
        0x49t
    .end array-data

    :array_4
    .array-data 1
        0x71t
        0x7dt
        0x70t
        0x18t
        0x10t
        0x52t
        0x50t
        0x15t
        0x78t
        0x79t
        0x7dt
        0x1bt
        0x4dt
        0x41t
        0x4ct
        0x4dt
        0x10t
        0x7et
        0x7ct
        0x15t
        0x58t
        0x59t
        0x1dt
        0x45t
        0x47t
        0x18t
        0x4ft
    .end array-data

    :array_5
    .array-data 1
        0x7ct
        0x71t
        0x76t
        0x1bt
        0x18t
        0x5t
        0x5dt
        0x14t
        0x7et
        0x7at
        0x75t
        0x41t
        0x40t
        0x4dt
        0x13t
        0x7ft
        0x70t
        0x5bt
        0x54t
        0x59t
        0x9t
        0x44t
        0x4bt
        0x41t
        0x43t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7dt
        0x72t
        0x20t
        0x44t
        0x5ct
        0x5dt
        0x15t
        0x7at
        0x28t
        0x29t
        0x15t
        0x40t
        0x41t
        0x4et
        0x1ct
        0x44t
        0x70t
        0x71t
        0x2t
        0x5at
        0x8t
        0x5et
        0x4bt
        0x4at
        0x18t
        0x4dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x76t
        0x74t
        0x7ct
        0x43t
        0x0t
        0x50t
        0x13t
        0x7ct
        0x74t
        0x2et
        0x44t
        0x4dt
        0x4at
        0x48t
        0x40t
        0x43t
        0x2ct
        0x7ct
        0x9t
        0x5ct
        0x54t
        0x59t
        0x17t
        0x47t
        0x13t
        0x4bt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x27t
        0x75t
        0x71t
        0x45t
        0x50t
        0x0t
        0x4ft
        0x7dt
        0x79t
        0x28t
        0x19t
        0x1dt
        0x1bt
        0x49t
        0x4dt
        0x45t
        0x7ct
        0x2ct
        0x4ft
        0x5dt
        0x59t
        0x48t
        0x47t
        0x17t
        0x42t
        0x4at
    .end array-data

    nop

    :array_9
    .array-data 1
        0x77t
        0x70t
        0x7ct
        0x43t
        0x5dt
        0x2t
        0x1ft
        0x78t
        0x74t
        0x2et
        0x14t
        0x1ft
        0x4bt
        0x15t
        0x71t
        0x2bt
        0x3t
        0xbt
        0x5ft
        0xft
        0x4at
        0x10t
        0x19t
        0x1ct
    .end array-data

    :array_a
    .array-data 1
        0x24t
        0x21t
        0x71t
        0x19t
        0x53t
        0x53t
        0x41t
        0x29t
        0x79t
        0x74t
        0x17t
        0x4et
        0x18t
        0x44t
        0x7ct
        0x71t
        0xdt
        0x5at
        0xct
        0x5et
        0x47t
        0x4at
        0x17t
        0x4dt
    .end array-data

    :array_b
    .array-data 1
        0x71t
        0x70t
        0x20t
        0x48t
        0x6t
        0x55t
        0x19t
        0x78t
        0x28t
        0x29t
        0x4ft
        0x48t
        0x4dt
        0x15t
        0x2dt
        0x2ct
        0x58t
        0x5ct
        0x59t
        0xft
        0x16t
        0x17t
        0x42t
        0x4bt
    .end array-data

    :array_c
    .array-data 1
        0x21t
        0x74t
        0x76t
        0x1et
        0x56t
        0x2t
        0x49t
        0x7ct
        0x7et
        0x7ft
        0x1ft
        0x1ft
        0x1dt
        0x48t
        0x4at
        0x12t
        0x7at
        0x2et
        0x5et
        0x5ct
        0x5et
        0x8t
        0x41t
        0x15t
        0x44t
        0x4bt
    .end array-data

    nop

    :array_d
    .array-data 1
        0x75t
        0x72t
        0x24t
        0x1et
        0x16t
        0x57t
        0x54t
        0x1at
        0x2ct
        0x7ft
        0x1bt
        0x4at
        0x49t
        0x4et
        0x18t
        0x12t
        0x7et
        0x7bt
        0xat
        0x5at
        0xct
        0x8t
        0x45t
        0x40t
        0x10t
        0x4dt
    .end array-data

    nop

    :array_e
    .array-data 1
        0x27t
        0x77t
        0x24t
        0x16t
        0x2ft
        0x7ft
        0x2ft
        0x12t
        0x5t
        0x16t
        0x1bt
        0x4bt
        0x1bt
        0x4bt
        0x41t
        0x7et
        0x2at
        0x8t
        0xft
        0x5ft
        0x5bt
        0x45t
        0x11t
        0x12t
        0x18t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v2}, Ljava/text/ParsePosition;-><init>(I)V

    sget-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v5, v0

    :goto_1
    if-ge v2, v5, :cond_4

    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v6, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v6, v6, v2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v6, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object v6, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v0, v6, v2

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    if-eqz v6, :cond_3

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method
