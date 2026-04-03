.class public final Landroidx/emoji2/text/MetadataRepo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataRepo$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROOT_SIZE:I = 0x400

.field private static final S_TRACE_CREATE_REPO:Ljava/lang/String;


# instance fields
.field private final mEmojiCharArray:[C

.field private final mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d42083"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/MetadataRepo;->S_TRACE_CREATE_REPO:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x21t
        0x59t
        0x5dt
        0x5at
        0x51t
        0x70t
        0xbt
        0x59t
        0x42t
        0x51t
        0x4ct
        0x1dt
        0x29t
        0x51t
        0x46t
        0x51t
        0x5ct
        0x52t
        0x10t
        0x55t
        0x60t
        0x55t
        0x48t
        0x5ct
        0x4at
        0x57t
        0x40t
        0x55t
        0x59t
        0x47t
        0x1t
    .end array-data
.end method

.method private constructor <init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Landroid/graphics/Typeface;

    iput-object p2, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    new-instance v0, Landroidx/emoji2/text/MetadataRepo$Node;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    invoke-direct {p0, p2}, Landroidx/emoji2/text/MetadataRepo;->constructIndex(Landroidx/emoji2/text/flatbuffer/MetadataList;)V

    return-void
.end method

.method private constructIndex(Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Landroidx/emoji2/text/EmojiMetadata;

    invoke-direct {v2, p0, v0}, Landroidx/emoji2/text/EmojiMetadata;-><init>(Landroidx/emoji2/text/MetadataRepo;I)V

    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    move-result v3

    iget-object v4, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v3, v4, v5}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {p0, v2}, Landroidx/emoji2/text/MetadataRepo;->put(Landroidx/emoji2/text/EmojiMetadata;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/MetadataRepo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Landroidx/emoji2/text/MetadataRepo;->S_TRACE_CREATE_REPO:Ljava/lang/String;

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {p0, p1}, Landroidx/emoji2/text/MetadataListReader;->read(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method public static create(Landroid/graphics/Typeface;)Landroidx/emoji2/text/MetadataRepo;
    .locals 2

    :try_start_0
    sget-object v0, Landroidx/emoji2/text/MetadataRepo;->S_TRACE_CREATE_REPO:Ljava/lang/String;

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    new-instance v1, Landroidx/emoji2/text/MetadataRepo;

    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/io/InputStream;)Landroidx/emoji2/text/MetadataRepo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Landroidx/emoji2/text/MetadataRepo;->S_TRACE_CREATE_REPO:Ljava/lang/String;

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    invoke-static {p1}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/MetadataRepo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Landroidx/emoji2/text/MetadataRepo;->S_TRACE_CREATE_REPO:Ljava/lang/String;

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    invoke-static {p1}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method


# virtual methods
.method public getEmojiCharArray()[C
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    return-object v0
.end method

.method public getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    return-object v0
.end method

.method getMetadataVersion()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->version()I

    move-result v0

    return v0
.end method

.method getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    return-object v0
.end method

.method getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method put(Landroidx/emoji2/text/EmojiMetadata;)V
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "2bf5fc"

    const/16 v3, 0x5eca

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2b19f1"

    const/16 v4, -0x1869

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/emoji2/text/MetadataRepo$Node;->put(Landroidx/emoji2/text/EmojiMetadata;II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x57t
        0xft
        0x9t
        0x5ft
        0xft
        0x43t
        0x5ft
        0x7t
        0x12t
        0x54t
        0x2t
        0x2t
        0x46t
        0x3t
        0x46t
        0x56t
        0x7t
        0xdt
        0x5ct
        0xdt
        0x12t
        0x15t
        0x4t
        0x6t
        0x12t
        0xct
        0x13t
        0x59t
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5bt
        0xct
        0x47t
        0x58t
        0xat
        0x58t
        0x56t
        0x42t
        0x5ct
        0x5ct
        0x12t
        0x50t
        0x56t
        0x3t
        0x45t
        0x58t
        0x46t
        0x52t
        0x5dt
        0x6t
        0x54t
        0x49t
        0x9t
        0x58t
        0x5ct
        0x16t
        0x11t
        0x55t
        0x3t
        0x5ft
        0x55t
        0x16t
        0x59t
    .end array-data
.end method
