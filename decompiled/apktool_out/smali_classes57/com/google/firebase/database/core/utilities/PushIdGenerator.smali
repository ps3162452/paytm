.class public Lcom/google/firebase/database/core/utilities/PushIdGenerator;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z

.field private static final PUSH_CHARS:Ljava/lang/String;

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c45d40"

    const/16 v2, 0x7dc2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->PUSH_CHARS:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x4et
        0x4t
        0x4t
        0x56t
        0x7t
        0x4t
        0x56t
        0x2t
        0x2t
        0x5ct
        0xdt
        0x71t
        0x21t
        0x77t
        0x71t
        0x21t
        0x72t
        0x77t
        0x2bt
        0x7dt
        0x7ft
        0x2ft
        0x78t
        0x7dt
        0x2dt
        0x7bt
        0x65t
        0x35t
        0x66t
        0x63t
        0x37t
        0x61t
        0x63t
        0x33t
        0x6ct
        0x69t
        0x39t
        0x6bt
        0x54t
        0x6t
        0x57t
        0x54t
        0x6t
        0x52t
        0x52t
        0xct
        0x5dt
        0x5at
        0x8t
        0x58t
        0x58t
        0xat
        0x5bt
        0x40t
        0x12t
        0x46t
        0x46t
        0x10t
        0x41t
        0x46t
        0x14t
        0x4ct
        0x4ct
        0x1et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePushChildName(J)Ljava/lang/String;
    .locals 10

    const/16 v8, 0xc

    const/4 v0, 0x0

    const-class v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sput-wide p0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v1, 0x8

    new-array v3, v1, [C

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x7

    :goto_1
    if-ltz v1, :cond_1

    sget-object v5, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->PUSH_CHARS:Ljava/lang/String;

    const-wide/16 v6, 0x40

    rem-long v6, p0, v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v1

    const-wide/16 v6, 0x40

    div-long/2addr p0, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    move v1, v0

    :goto_2
    if-ge v1, v8, :cond_3

    sget-object v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v3, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->incrementArray()V

    :cond_3
    :goto_3
    if-ge v0, v8, :cond_4

    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->PUSH_CHARS:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-class v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-exit v1

    throw v0
.end method

.method private static incrementArray()V
    .locals 4

    const/16 v0, 0xb

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v1, v0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
