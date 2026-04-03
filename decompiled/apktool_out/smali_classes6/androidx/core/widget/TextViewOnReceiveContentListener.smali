.class public final Landroidx/core/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;,
        Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a957ce"

    const-wide/32 v2, 0x36a873b1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/TextViewOnReceiveContentListener;->LOG_TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x5ct
        0x56t
        0x52t
        0xat
        0x13t
        0x4t
        0x7at
        0x5at
        0x59t
        0x17t
        0x0t
        0xft
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;->coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;->coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-interface {p0, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method public onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 9

    const/4 v1, 0x0

    sget-object v0, Landroidx/core/widget/TextViewOnReceiveContentListener;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8b430a"

    const v4, 0x4d6cb8dd    # 2.4822114E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/widget/TextViewOnReceiveContentListener;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->getSource()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    move-result v4

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroidx/core/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v1, :cond_3

    invoke-static {v0, v6}, Landroidx/core/widget/TextViewOnReceiveContentListener;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    const-string v8, "\n"

    invoke-interface {v0, v7, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-interface {v0, v7, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x57t
        0xct
        0x66t
        0x56t
        0x53t
        0x4t
        0x51t
        0x14t
        0x51t
        0x9t
        0x10t
    .end array-data
.end method
