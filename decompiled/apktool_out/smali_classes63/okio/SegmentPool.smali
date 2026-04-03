.class final Lokio/SegmentPool;
.super Ljava/lang/Object;


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recycle(Lokio/Segment;)V
    .locals 6

    const-wide/16 v4, 0x2000

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const-class v0, Lokio/SegmentPool;

    monitor-enter v0

    :try_start_0
    sget-wide v0, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const-class v0, Lokio/SegmentPool;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lokio/SegmentPool;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    sget-wide v0, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v0, v4

    sput-wide v0, Lokio/SegmentPool;->byteCount:J

    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->pos:I

    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    const-class v0, Lokio/SegmentPool;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static take()Lokio/Segment;
    .locals 6

    const-class v0, Lokio/SegmentPool;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v0, :cond_0

    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    sput-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v1, 0x0

    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    const-class v1, Lokio/SegmentPool;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lokio/SegmentPool;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lokio/SegmentPool;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
