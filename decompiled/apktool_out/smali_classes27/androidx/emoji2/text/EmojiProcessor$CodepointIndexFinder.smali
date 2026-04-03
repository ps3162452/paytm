.class final Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ltz p1, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_0

    move v1, p1

    move v3, v2

    :goto_1
    if-nez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, -0x1

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 7

    const/4 v4, 0x0

    const/4 v0, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz p1, :cond_0

    if-ge v2, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_0

    move v3, v4

    move v1, p1

    :goto_1
    if-nez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-lt v1, v2, :cond_3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz v3, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
