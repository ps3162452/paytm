.class final Landroidx/emoji2/viewsintegration/EmojiInputFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;
    }
.end annotation


# instance fields
.field private mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;-><init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    return-object v0
.end method

.method static updateSelection(Landroid/text/Spannable;II)V
    .locals 0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_0

    invoke-static {p0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    if-nez p6, :cond_2

    if-nez p5, :cond_2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-ne p1, v2, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_3

    :goto_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
