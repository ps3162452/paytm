.class public final Lokio/Pipe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Pipe$PipeSink;,
        Lokio/Pipe$PipeSource;
    }
.end annotation


# instance fields
.field final buffer:Lokio/Buffer;

.field private foldedSink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field sinkClosed:Z

.field private final source:Lokio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    new-instance v0, Lokio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lokio/Pipe$PipeSink;-><init>(Lokio/Pipe;)V

    iput-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    new-instance v0, Lokio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lokio/Pipe$PipeSource;-><init>(Lokio/Pipe;)V

    iput-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4866ed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    return-void

    :array_0
    .array-data 1
        0x59t
        0x59t
        0x4et
        0x74t
        0x10t
        0x2t
        0x52t
        0x5dt
        0x44t
        0x65t
        0xct
        0x1et
        0x51t
        0x18t
        0xat
        0x16t
        0x54t
        0x5et
        0x14t
    .end array-data
.end method

.method static synthetic access$000(Lokio/Pipe;)Lokio/Sink;
    .locals 1

    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object v0
.end method


# virtual methods
.method public fold(Lokio/Sink;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "55cf6e"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Pipe;->sourceClosed:Z

    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-object v4, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-wide v4, v2, Lokio/Buffer;->size:J

    invoke-interface {p1, v2, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lokio/Pipe;->sourceClosed:Z

    iget-object v2, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_2
    :try_start_4
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :array_0
    .array-data 1
        0x46t
        0x5ct
        0xdt
        0xdt
        0x16t
        0x4t
        0x59t
        0x47t
        0x6t
        0x7t
        0x52t
        0x1ct
        0x15t
        0x53t
        0xct
        0xat
        0x52t
        0x0t
        0x51t
    .end array-data
.end method

.method public final sink()Lokio/Sink;
    .locals 1

    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final source()Lokio/Source;
    .locals 1

    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method
