.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;,
        Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;,
        Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    }
.end annotation


# static fields
.field private static final ACTION_ADVANCE_BOTH:I = 0x1

.field private static final ACTION_ADVANCE_END:I = 0x2

.field private static final ACTION_FLUSH:I = 0x3


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    return-void
.end method

.method private addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    invoke-virtual {v0, p2}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;->createSpan(Landroidx/emoji2/text/EmojiMetadata;)Landroidx/emoji2/text/EmojiSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p1, v0, p3, p4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->hasModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v3, v0}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, v3, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v0, :cond_6

    array-length v2, v0

    if-lez v2, :cond_6

    array-length v4, v0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    aget-object v5, v0, v2

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eqz p2, :cond_2

    if-eq v6, v3, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v5, v3, :cond_4

    :cond_3
    if-le v3, v6, :cond_5

    if-ge v3, v5, :cond_5

    :cond_4
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_6

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v2, v0}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eq v1, v4, :cond_5

    if-ne v0, v4, :cond_9

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    sub-int/2addr v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v0, v2, p3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_1
    const-class v0, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, v2, v1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v0, :cond_8

    array-length v4, v0

    if-lez v4, :cond_8

    array-length v5, v0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_7

    aget-object v6, v0, v1

    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    :cond_9
    move v2, v1

    move v1, v0

    goto :goto_1
.end method

.method static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    :goto_1
    return v0

    :sswitch_0
    invoke-static {p0, p2, v0}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z
    .locals 2

    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getSdkAdded()S

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/emoji2/text/EmojiMetadata;->setHasGlyph(Z)V

    :cond_0
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasInvalidSelection(II)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasModifiers(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getEmojiMetadata(Ljava/lang/CharSequence;)Landroidx/emoji2/text/EmojiMetadata;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v4, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v2, v1, v3, v4}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    goto :goto_1
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 11

    const/4 v5, 0x0

    instance-of v6, p1, Landroidx/emoji2/text/SpannableBuilder;

    if-eqz v6, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    :cond_0
    const/4 v2, 0x0

    if-nez v6, :cond_1

    :try_start_0
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    move-object v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    const-class v1, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v2, p2, p3, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v1, :cond_6

    array-length v3, v1

    if-lez v3, :cond_6

    array-length v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v7, v1, v3

    :try_start_1
    invoke-interface {v2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v2, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-eq v8, p3, :cond_3

    invoke-interface {v2, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v9, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x1

    const-class v7, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v1, v3, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gt v1, p3, :cond_2

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_5
    throw v1

    :cond_6
    move v4, p2

    if-eq v4, p3, :cond_7

    :try_start_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-lt v4, v1, :cond_9

    :cond_7
    if-eqz v6, :cond_8

    move-object v1, p1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_8
    :goto_2
    return-object p1

    :cond_9
    const v1, 0x7fffffff

    if-eq p4, v1, :cond_a

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v7, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v2, v1, v3, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    array-length v1, v1

    sub-int/2addr p4, v1

    :cond_a
    new-instance v7, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v8, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v7, v1, v3, v8}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object v1, v2

    move v2, v5

    move v5, v4

    :goto_3
    if-ge v5, p3, :cond_e

    if-ge v2, p4, :cond_e

    invoke-virtual {v7, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move v10, v3

    move-object v3, v1

    move v1, v10

    :goto_4
    move v10, v1

    move-object v1, v3

    move v3, v10

    goto :goto_3

    :pswitch_0
    if-nez p5, :cond_b

    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v8

    invoke-direct {p0, p1, v4, v5, v8}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_b
    if-nez v1, :cond_c

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v8

    invoke-direct {p0, v1, v8, v4, v5}, Landroidx/emoji2/text/EmojiProcessor;->addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V

    add-int/lit8 v2, v2, 0x1

    :cond_d
    move v4, v5

    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto :goto_4

    :pswitch_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v5, v8

    if-ge v5, p3, :cond_15

    invoke-static {p1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto :goto_4

    :pswitch_2
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, p3, :cond_14

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    move v5, v4

    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto :goto_4

    :cond_e
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result v3

    if-eqz v3, :cond_11

    if-ge v2, p4, :cond_11

    if-nez p5, :cond_f

    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v2

    invoke-direct {p0, p1, v4, v5, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    if-nez v1, :cond_10

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_10
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4, v5}, Landroidx/emoji2/text/EmojiProcessor;->addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    if-nez v1, :cond_12

    move-object v1, p1

    :cond_12
    if-eqz v6, :cond_13

    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_13
    move-object p1, v1

    goto/16 :goto_2

    :cond_14
    move v5, v4

    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto :goto_4

    :cond_15
    move v10, v3

    move-object v3, v1

    move v1, v10

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
