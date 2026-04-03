.class final Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessorSm"
.end annotation


# static fields
.field private static final STATE_DEFAULT:I = 0x1

.field private static final STATE_WALKING:I = 0x2


# instance fields
.field private mCurrentDepth:I

.field private mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mLastCodepoint:I

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mState:I

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-boolean p2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    return-void
.end method

.method private static isEmojiStyle(I)Z
    .locals 1

    const v0, 0xfe0f

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTextStyle(I)Z
    .locals 1

    const v0, 0xfe0e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()I
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    return v1
.end method

.method private shouldUseEmojiPresentationStyleForSingleCodepoint()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v2}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiMetadata;->isDefaultEmoji()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    invoke-static {v2}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v2}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v2

    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method check(I)I
    .locals 5

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x2

    iget-object v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v2, p1}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v2

    iget v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    packed-switch v3, :pswitch_data_0

    if-nez v2, :cond_6

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v0

    :cond_0
    :goto_0
    iput p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    return v0

    :pswitch_0
    if-eqz v2, :cond_1

    iput-object v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isTextStyle(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v0

    goto :goto_0

    :cond_6
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    iput-object v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput v4, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    return-object v0
.end method

.method getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    return-object v0
.end method

.method isInFlushableState()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    if-gt v1, v0, :cond_0

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
