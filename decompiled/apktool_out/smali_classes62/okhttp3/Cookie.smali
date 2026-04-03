.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xf

    const/4 v2, 0x1

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "1e9b3d"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "058882"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "d4af36"

    const/16 v2, -0x7c28

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "01b49e"

    const-wide/32 v2, 0x4b47bce7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        0x19t
        0x39t
        0x5dt
        0x19t
        0x1t
        0x48t
        0x5t
        0x18t
        0x10t
        0x39t
        0x6dt
        0x38t
        0x55t
        0x38t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0xat
        0x51t
        0x11t
        0x10t
        0x58t
        0x51t
        0x5bt
        0x44t
        0x5et
        0x5dt
        0x50t
        0x4ct
        0x58t
        0x59t
        0x4at
        0x44t
        0x53t
        0x40t
        0x47t
        0x44t
        0x55t
        0x59t
        0x4bt
        0x4ct
        0x5ft
        0x4dt
        0x56t
        0x44t
        0x58t
        0x45t
        0x59t
        0x44t
        0x59t
        0x4dt
        0x55t
        0x4ct
        0x46t
        0x5dt
        0x48t
        0x44t
        0x5dt
        0x53t
        0x41t
        0x44t
        0x56t
        0x57t
        0x44t
        0x4ct
        0x51t
        0x5dt
        0x5bt
        0x11t
        0x1ct
        0x1at
    .end array-data

    :array_2
    .array-data 1
        0x4ct
        0x68t
        0x5t
        0x1dt
        0x2t
        0x1at
        0x56t
        0x49t
        0x48t
        0x3dt
        0x6dt
        0x6at
        0x0t
        0x69t
        0x4bt
    .end array-data

    :array_3
    .array-data 1
        0x18t
        0x6dt
        0x6t
        0x4ft
        0x8t
        0x49t
        0x2t
        0x4ct
        0x4bt
        0xet
        0x11t
        0x39t
        0x54t
        0x4at
        0x53t
        0x18t
        0xbt
        0x18t
        0x19t
        0xbt
        0x4at
        0x68t
        0x5dt
        0x1et
        0x1t
        0x1dt
        0x50t
        0x49t
        0x10t
        0x3et
        0x6et
        0x6dt
        0x6t
        0x69t
        0x13t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c9df9e"

    const-wide v4, -0x3e20cd6916c00000L    # -2.093636517E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "da1cc1"

    const-wide v4, -0x3e482af4ec000000L    # -3.99837972E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "fa8ce0"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x4ct
        0xdt
        0xat
        0x5dt
        0x0t
        0x11t
        0x17t
        0xat
        0x7t
        0x54t
        0x0t
        0x43t
        0x4t
        0x59t
        0x46t
        0x57t
        0x10t
        0xft
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x6t
        0x14t
        0x58t
        0xft
        0x7t
        0x54t
        0x16t
        0x4ft
        0x47t
        0x2t
        0xft
        0x44t
        0x1t
        0x41t
        0xct
        0x5et
        0x43t
        0x5ft
        0x11t
        0xdt
        0x5dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0x14t
        0x51t
        0xft
        0x1t
        0x55t
        0x14t
        0x4ft
        0x5ct
        0xct
        0x8t
        0x51t
        0xft
        0xft
        0x18t
        0x5et
        0x58t
        0x10t
        0x8t
        0x14t
        0x54t
        0xft
    .end array-data
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ge v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_4

    :cond_0
    const/16 v4, 0x7f

    if-ge v1, v4, :cond_4

    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    const/16 v4, 0x39

    if-le v1, v4, :cond_4

    :cond_1
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_6

    :cond_4
    move v4, v2

    :goto_1
    if-nez p3, :cond_7

    move v1, v2

    :goto_2
    if-ne v4, v1, :cond_8

    move p2, v0

    :cond_5
    return p2

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 26
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    const/4 v4, 0x0

    const/16 v5, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v4, v1, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v5, v4, v6}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v5

    if-ne v5, v4, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v5}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v5, v4}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-wide v10, 0xe677d21fdbffL

    const-wide/16 v8, -0x1

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 v4, v4, 0x1

    :goto_1
    move/from16 v0, v17

    if-ge v4, v0, :cond_a

    const/16 v18, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v4, v1, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v18

    const/16 v19, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v4, v1, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v4, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v4, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    const-string v21, "4255a3"

    const-wide v22, -0x3e3828b18b000000L    # -7.99972586E8

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v10

    const/4 v15, 0x1

    move-object v4, v5

    move-object/from16 v5, v16

    :goto_3
    add-int/lit8 v16, v18, 0x1

    move-object/from16 v24, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v24

    goto :goto_1

    :cond_4
    const-string v4, ""

    goto :goto_2

    :cond_5
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    const-string v21, "3256c1"

    const-wide v22, 0x41d6d69b86000000L    # 1.53265308E9

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    :try_start_1
    invoke-static {v4}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    const/4 v15, 0x1

    move-object v4, v5

    move-object/from16 v5, v16

    goto :goto_3

    :cond_6
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    const-string v21, "b1b516"

    const/16 v22, -0x160

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    :try_start_2
    invoke-static {v4}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    const/4 v14, 0x0

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    goto :goto_3

    :cond_7
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    const-string v21, "1ef751"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v5, v16

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v19, "2c55fb"

    const v21, 0x4e5d7d6b    # 9.2899603E8f

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v12, 0x1

    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :cond_9
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v19, "8c0af2"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v13, 0x1

    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :cond_a
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v4, v8, v18

    if-nez v4, :cond_c

    const-wide/high16 v8, -0x8000000000000000L

    :cond_b
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    if-nez v16, :cond_f

    move-object v10, v4

    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v4, v11, :cond_10

    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v4

    invoke-virtual {v4, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    const-wide/16 v18, -0x1

    cmp-long v4, v8, v18

    if-eqz v4, :cond_15

    const-wide v10, 0x20c49ba5e353f7L

    cmp-long v4, v8, v10

    if-gtz v4, :cond_e

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    :goto_6
    add-long v8, v8, p0

    cmp-long v4, v8, p0

    if-ltz v4, :cond_d

    const-wide v10, 0xe677d21fdbffL

    cmp-long v4, v8, v10

    if-lez v4, :cond_b

    :cond_d
    const-wide v8, 0xe677d21fdbffL

    goto :goto_4

    :cond_e
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_6

    :cond_f
    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_10
    if-eqz v5, :cond_11

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v11, 0x0

    const/16 v16, 0x1b

    aput-byte v16, v4, v11

    const-string v11, "44ced8"

    const-wide v16, -0x3e33677e0f000000L    # -9.5951357E8

    move-wide/from16 v0, v16

    invoke-static {v4, v11, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :goto_7
    new-instance v5, Lokhttp3/Cookie;

    invoke-direct/range {v5 .. v15}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v11, 0x17

    aput-byte v11, v4, v5

    const-string v5, "8dc6bd"

    const-wide v16, -0x3e2fe5173d800000L    # -1.080795914E9

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :catch_0
    move-exception v4

    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_1
    move-exception v4

    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_2
    move-exception v4

    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :cond_13
    move-object v11, v5

    goto :goto_7

    :cond_14
    move-object/from16 v10, v16

    goto/16 :goto_5

    :cond_15
    move-wide v8, v10

    goto/16 :goto_4

    :cond_16
    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :array_0
    .array-data 1
        0x51t
        0x4at
        0x45t
        0x5ct
        0x13t
        0x56t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x5et
        0x53t
        0x4dt
        0x1bt
        0x2t
        0x56t
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x6t
        0x5et
        0xft
        0x54t
        0x58t
        0x58t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x41t
        0x4t
        0x12t
        0x5ft
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x6t
        0x56t
        0x40t
        0x14t
        0x7t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x50t
        0x17t
        0x44t
        0x11t
        0x9t
        0x5ct
        0x54t
        0x1at
    .end array-data
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b068c6"

    const-wide v2, 0x41c162e5db000000L    # 5.83388086E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :array_0
    .array-data 1
        0x31t
        0x55t
        0x42t
        0x15t
        0x20t
        0x59t
        0xdt
        0x5bt
        0x5ft
        0x5dt
    .end array-data
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [B

    const/16 v1, 0x1b

    aput-byte v1, v0, v3

    const-string v1, "56582c"

    const v2, -0x326a00db

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-array v0, v4, [B

    const/16 v1, 0x4c

    aput-byte v1, v0, v3

    const-string v1, "b7a3a6"

    const-wide v2, 0x41dcda3a28800000L    # 1.936255138E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    return-object v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .locals 11

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v1

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v0, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    sget-object v7, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v10, v1

    move v1, v6

    move v6, v10

    :goto_0
    if-ge v6, p2, :cond_4

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-static {p0, v8, p2, v9}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    sget-object v6, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    :goto_1
    add-int/lit8 v6, v8, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, p2, v8}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    sget-object v6, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    sget-object v6, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    const/16 v6, 0x46

    if-lt v1, v6, :cond_5

    const/16 v6, 0x63

    if-gt v1, v6, :cond_5

    add-int/lit16 v1, v1, 0x76c

    :cond_5
    if-ltz v1, :cond_6

    const/16 v6, 0x45

    if-gt v1, v6, :cond_6

    add-int/lit16 v1, v1, 0x7d0

    :cond_6
    const/16 v6, 0x641

    if-ge v1, v6, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    const/4 v6, 0x1

    if-lt v0, v6, :cond_9

    const/16 v6, 0x1f

    if-le v0, v6, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    if-ltz v4, :cond_b

    const/16 v6, 0x17

    if-le v4, v6, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    if-ltz v3, :cond_d

    const/16 v6, 0x3b

    if-le v3, v6, :cond_e

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    if-ltz v2, :cond_f

    const/16 v6, 0x3b

    if-le v2, v6, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v7, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v6, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {v6, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v6, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "1b505b"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x49

    aput-byte v3, v2, v5

    const-string v3, "d79b04"

    const v4, -0x3104bbdf

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x1ct
        0x5dt
        0x69t
        0x54t
        0x1et
    .end array-data
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v0, [B

    const/16 v4, 0x1e

    aput-byte v4, v3, v1

    const-string v4, "1167a6"

    const/16 v5, -0x3940

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    instance-of v1, p1, Lokhttp3/Cookie;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lokhttp3/Cookie;

    iget-object v1, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->secure:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public expiresAt()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-wide v10, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v12, p0, Lokhttp3/Cookie;->expiresAt:J

    const/16 v0, 0x20

    ushr-long/2addr v12, v0

    xor-long/2addr v10, v12

    long-to-int v9, v10

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    iget-boolean v4, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v4, :cond_3

    move v4, v1

    :goto_2
    iget-boolean v10, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v10, :cond_0

    move v2, v1

    :cond_0
    add-int/lit16 v1, v5, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2
.end method

.method public hostOnly()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v1, v2}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v1}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b2ee16"

    const-wide/32 v4, -0x39ee54b2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_2

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "292668"

    const/16 v3, 0x5728

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x17

    aput-byte v2, v1, v6

    const-string v2, "9209bf"

    const/16 v3, -0x4ea3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "0c18d5"

    const-wide/32 v4, -0x2fcc39c6

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "19465a"

    const-wide v4, -0x3e4c4da422000000L    # -3.3045603E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v1, :cond_4

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    const-string v2, "7a40b1"

    const/16 v3, 0x3780

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-array v1, v7, [B

    fill-array-data v1, :array_5

    const-string v2, "bec5df"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x59t
        0x12t
        0x8t
        0x4t
        0x49t
        0x1bt
        0x3t
        0x55t
        0x0t
        0x58t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x19t
        0x56t
        0x59t
        0x5bt
        0x59t
        0x5bt
        0x57t
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0xbt
        0x43t
        0x41t
        0x59t
        0x10t
        0x5dt
        0xdt
    .end array-data

    :array_3
    .array-data 1
        0xat
        0x19t
        0x47t
        0x53t
        0x56t
        0x14t
        0x43t
        0x5ct
    .end array-data

    :array_4
    .array-data 1
        0xct
        0x41t
        0x5ct
        0x44t
        0x16t
        0x41t
        0x58t
        0xft
        0x58t
        0x49t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x59t
        0x45t
        0x6t
        0x4dt
        0x14t
        0xft
        0x10t
        0x0t
        0x10t
        0x8t
    .end array-data
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
