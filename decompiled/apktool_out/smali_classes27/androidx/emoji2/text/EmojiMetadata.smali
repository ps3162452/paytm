.class public Landroidx/emoji2/text/EmojiMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiMetadata$HasGlyph;
    }
.end annotation


# static fields
.field public static final HAS_GLYPH_ABSENT:I = 0x1

.field public static final HAS_GLYPH_EXISTS:I = 0x2

.field public static final HAS_GLYPH_UNKNOWN:I

.field private static final sMetadataItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/emoji2/text/flatbuffer/MetadataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mHasGlyph:I

.field private final mIndex:I

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiMetadata;->sMetadataItem:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    iput-object p1, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    iput p2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    return-void
.end method

.method private getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 3

    sget-object v1, Landroidx/emoji2/text/EmojiMetadata;->sMetadataItem:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1

    iget v2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    invoke-virtual {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 8

    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    iget-object v1, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getEmojiCharArray()[C

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    move-object v0, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public getCodepointAt(I)I
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepoints(I)I

    move-result v0

    return v0
.end method

.method public getCodepointsLength()I
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsLength()I

    move-result v0

    return v0
.end method

.method public getCompatAdded()S
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->compatAdded()S

    move-result v0

    return v0
.end method

.method public getHasGlyph()I
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    return v0
.end method

.method public getHeight()S
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->height()S

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->id()I

    move-result v0

    return v0
.end method

.method public getSdkAdded()S
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->sdkAdded()S

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()S
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->width()S

    move-result v0

    return v0
.end method

.method public isDefaultEmoji()Z
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->emojiStyle()Z

    move-result v0

    return v0
.end method

.method public resetHasGlyphCache()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    return-void
.end method

.method public setHasGlyph(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "beb899"

    const v3, -0x32750ab4

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "46feb3"

    const/16 v3, 0x4b2c

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4et
        0x45t
        0xbt
        0x5ct
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x16t
        0x5t
        0xat
        0x6t
        0x56t
        0x44t
        0x59t
        0xft
        0xbt
        0x16t
        0x40t
        0xet
    .end array-data
.end method
