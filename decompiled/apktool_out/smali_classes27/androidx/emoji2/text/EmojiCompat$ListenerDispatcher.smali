.class Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDispatcher"
.end annotation


# instance fields
.field private final mInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadState:I

.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat$InitCallback;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v4, [Landroidx/emoji2/text/EmojiCompat$InitCallback;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "e5a3f8"

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    return-void

    :array_0
    .array-data 1
        0xct
        0x5bt
        0x8t
        0x47t
        0x25t
        0x59t
        0x9t
        0x59t
        0x3t
        0x52t
        0x5t
        0x53t
        0x45t
        0x56t
        0x0t
        0x5dt
        0x8t
        0x57t
        0x11t
        0x15t
        0x3t
        0x56t
        0x46t
        0x56t
        0x10t
        0x59t
        0xdt
    .end array-data
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;ILjava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8f8ea4"

    const-wide v2, 0x41d0b2be57800000L    # 1.120598366E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    iput p2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    iput-object p3, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    return-void

    :array_0
    .array-data 1
        0x51t
        0x8t
        0x51t
        0x11t
        0x22t
        0x55t
        0x54t
        0xat
        0x5at
        0x4t
        0x2t
        0x5ft
        0x4bt
        0x46t
        0x5bt
        0x4t
        0xft
        0x5at
        0x57t
        0x12t
        0x18t
        0x7t
        0x4t
        0x14t
        0x56t
        0x13t
        0x54t
        0x9t
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    packed-switch v1, :pswitch_data_0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    iget-object v3, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFailed(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
