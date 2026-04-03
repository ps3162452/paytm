.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    iput-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    iput-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    iput-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    const-string v2, "f6d79e"

    const v3, 0x4dc06f15    # 4.0356317E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    new-array v1, v10, [B

    fill-array-data v1, :array_1

    const-string v2, "087e04"

    const-wide/32 v4, -0x40f25c3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    if-eq v1, v8, :cond_2

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ca24f7"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_3

    const-string v3, "328edf"

    const-wide v4, -0x3e25abd071c00000L    # -1.766899257E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v8, :cond_3

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "c1cc4a"

    const v3, 0x4bc8f81c    # 2.6341432E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    const-string v3, "d648d3"

    const/16 v4, 0x2618

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "e3037d"

    const/16 v3, 0x2481

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "f847b0"

    const-wide/32 v4, -0x2f224466

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "f707b6"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v8, :cond_7

    new-array v1, v10, [B

    fill-array-data v1, :array_9

    const-string v2, "9e3f50"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_a

    const-string v3, "774443"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v8, :cond_8

    new-array v1, v10, [B

    fill-array-data v1, :array_b

    const-string v2, "834402"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_c

    const-string v3, "3886f5"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "034bb9"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    const-string v2, "fa4bb3"

    const v3, -0x317405b6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const-string v2, "5cd272"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x8t
        0x59t
        0x49t
        0x54t
        0x58t
        0x6t
        0xet
        0x53t
        0x48t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5et
        0x57t
        0x1at
        0x16t
        0x44t
        0x5bt
        0x42t
        0x5dt
        0x1bt
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xet
        0x0t
        0x4at
        0x19t
        0x7t
        0x50t
        0x6t
        0x5ct
    .end array-data

    :array_3
    .array-data 1
        0x1ft
        0x12t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x10t
        0x1ct
        0xet
        0x2t
        0x4ct
        0x0t
        0x4t
        0x54t
        0x5et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x48t
        0x16t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x15t
        0x41t
        0x59t
        0x45t
        0x56t
        0x10t
        0x0t
        0x1ft
        0x10t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x16t
        0x4dt
        0x56t
        0x5bt
        0xbt
        0x53t
        0x4at
        0x18t
    .end array-data

    :array_8
    .array-data 1
        0xbt
        0x42t
        0x43t
        0x43t
        0x4ft
        0x44t
        0x3t
        0x41t
        0x51t
        0x5bt
        0xbt
        0x52t
        0x7t
        0x43t
        0x55t
        0x1bt
        0x42t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x54t
        0x4t
        0x4bt
        0x4bt
        0x46t
        0x44t
        0x58t
        0x9t
        0x56t
        0x5bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1bt
        0x17t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x55t
        0x5at
        0x5at
        0x19t
        0x56t
        0x40t
        0x5dt
        0x40t
        0x5ct
        0x9t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1ft
        0x18t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x5ft
        0x5dt
        0x58t
        0x1bt
        0x4ft
        0x50t
        0x56t
        0x1et
        0x57t
        0x3t
        0x1t
        0x51t
        0x55t
        0x57t
        0x18t
        0x42t
    .end array-data

    :array_e
    .array-data 1
        0x8t
        0xet
        0x19t
        0x16t
        0x10t
        0x52t
        0x8t
        0x12t
        0x52t
        0xdt
        0x10t
        0x5et
        0x4at
        0x41t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x5ct
        0xet
        0x9t
        0x47t
        0x43t
        0x53t
        0x57t
        0xft
        0x1t
        0x1et
        0x17t
    .end array-data
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 29

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v22

    move/from16 v21, v4

    move-object v4, v5

    move/from16 v5, v19

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0xd

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    const-string v23, "df27d3"

    const-wide/32 v24, -0x2f7b0895

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    if-eqz v4, :cond_2

    const/16 v18, 0x0

    :goto_1
    const/16 v19, 0x0

    move/from16 v28, v19

    move/from16 v19, v5

    move/from16 v5, v28

    :cond_0
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_12

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    const-string v23, "0bb1d8"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    if-eq v0, v5, :cond_1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v24, 0x2c

    move/from16 v0, v24

    if-eq v5, v0, :cond_1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v24, 0x3b

    move/from16 v0, v24

    if-ne v5, v0, :cond_4

    :cond_1
    add-int/lit8 v20, v20, 0x1

    const/4 v5, 0x0

    move-object/from16 v28, v5

    move/from16 v5, v20

    move-object/from16 v20, v28

    :goto_3
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_2

    const-string v25, "7b112c"

    const-wide v26, -0x3e247effa1000000L    # -1.845756284E9

    invoke-static/range {v24 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_3
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    const-string v23, "f5a668"

    const v24, -0x310bafa0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v24, 0x22

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    add-int/lit8 v5, v5, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v24, 0x0

    const/16 v25, 0x41

    aput-byte v25, v20, v24

    const-string v24, "c9ad63"

    const/16 v25, 0x7cc0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v28, v5

    move/from16 v5, v20

    move-object/from16 v20, v28

    goto/16 :goto_3

    :cond_5
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_4

    const-string v24, "d0df8a"

    const v25, -0x310a2b0a

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    move/from16 v5, v20

    move-object/from16 v20, v28

    goto/16 :goto_3

    :cond_6
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_5

    const-string v25, "a35a8e"

    const-wide/32 v26, 0x6a29ca50    # 8.799920134E-315

    invoke-static/range {v24 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_6

    const-string v25, "375cf9"

    const-wide/32 v26, -0x4028fcee

    invoke-static/range {v24 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    const/4 v7, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_2

    :cond_8
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_7

    const-string v25, "78fb97"

    const-wide/32 v26, -0x795adda7

    invoke-static/range {v24 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/4 v8, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v8

    goto/16 :goto_2

    :cond_9
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_8

    const-string v25, "8fcbb3"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_a
    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_9

    const-string v25, "8aadce"

    const/16 v26, 0x28e3

    invoke-static/range {v24 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v24, 0xf

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_a

    const-string v25, "24dbca"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_c
    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_b

    const-string v25, "cd9cb3"

    const/16 v26, -0x1d33

    invoke-static/range {v24 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    const v12, 0x7fffffff

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_2

    :cond_d
    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_c

    const-string v25, "510787"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/4 v13, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v13

    goto/16 :goto_2

    :cond_e
    const/16 v20, 0xe

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_d

    const-string v24, "6ea548"

    const-wide v26, -0x3e55b333b6000000L    # -2.20620325E8

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_f
    const/16 v20, 0xc

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_e

    const-string v24, "024c1b"

    const-wide v26, 0x41de3e9b12800000L    # 2.029677642E9

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_10
    const/16 v20, 0x9

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_f

    const-string v24, "db76e0"

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_11
    move/from16 v19, v5

    :cond_12
    add-int/lit8 v5, v21, 0x1

    move/from16 v21, v5

    move/from16 v5, v19

    goto/16 :goto_0

    :cond_13
    if-nez v18, :cond_14

    const/16 v17, 0x0

    :goto_4
    new-instance v4, Lokhttp3/CacheControl;

    invoke-direct/range {v4 .. v17}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v4

    :cond_14
    move-object/from16 v17, v4

    goto :goto_4

    :array_0
    .array-data 1
        0x27t
        0x7t
        0x51t
        0x5ft
        0x1t
        0x1et
        0x27t
        0x9t
        0x5ct
        0x43t
        0x16t
        0x5ct
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0x4et
        0x59t
    .end array-data

    :array_2
    .array-data 1
        0x59t
        0xdt
        0x1ct
        0x52t
        0x53t
        0x0t
        0x5ft
        0x7t
    .end array-data

    :array_3
    .array-data 1
        0x36t
        0x47t
        0x0t
        0x51t
        0x5bt
        0x59t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x48t
        0xbt
    .end array-data

    nop

    :array_5
    .array-data 1
        0xft
        0x5ct
        0x18t
        0x12t
        0x4ct
        0xat
        0x13t
        0x56t
    .end array-data

    :array_6
    .array-data 1
        0x5et
        0x56t
        0x4dt
        0x4et
        0x7t
        0x5et
        0x56t
    .end array-data

    :array_7
    .array-data 1
        0x44t
        0x15t
        0xbt
        0x3t
        0x41t
        0x56t
        0x50t
        0x5dt
    .end array-data

    :array_8
    .array-data 1
        0x48t
        0x14t
        0xat
        0x14t
        0x3t
        0x47t
        0x5dt
    .end array-data

    :array_9
    .array-data 1
        0x48t
        0x14t
        0x3t
        0x8t
        0xat
        0x6t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x5ft
        0x41t
        0x17t
        0x16t
        0x4et
        0x13t
        0x57t
        0x42t
        0x5t
        0xet
        0xat
        0x5t
        0x53t
        0x40t
        0x1t
    .end array-data

    :array_b
    .array-data 1
        0xet
        0x5t
        0x41t
        0x4et
        0x11t
        0x47t
        0x2t
        0x8t
        0x5ct
    .end array-data

    nop

    :array_c
    .array-data 1
        0x58t
        0x58t
        0x5et
        0x1at
        0x5et
        0x45t
        0x50t
        0x42t
        0x58t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x59t
        0xbt
        0xdt
        0x4ct
        0x19t
        0x51t
        0x50t
        0x48t
        0x2t
        0x54t
        0x57t
        0x50t
        0x53t
        0x1t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x5et
        0x5dt
        0x19t
        0x17t
        0x43t
        0x3t
        0x5et
        0x41t
        0x52t
        0xct
        0x43t
        0xft
    .end array-data

    :array_f
    .array-data 1
        0xdt
        0xft
        0x5at
        0x43t
        0x11t
        0x51t
        0x6t
        0xet
        0x52t
    .end array-data
.end method


# virtual methods
.method public immutable()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    goto :goto_0
.end method
