.class public Landroidx/emoji2/text/EmojiCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompat$CompatInternal;,
        Landroidx/emoji2/text/EmojiCompat$CompatInternal19;,
        Landroidx/emoji2/text/EmojiCompat$Config;,
        Landroidx/emoji2/text/EmojiCompat$GlyphChecker;,
        Landroidx/emoji2/text/EmojiCompat$InitCallback;,
        Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;,
        Landroidx/emoji2/text/EmojiCompat$LoadStrategy;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;,
        Landroidx/emoji2/text/EmojiCompat$ReplaceStrategy;,
        Landroidx/emoji2/text/EmojiCompat$SpanFactory;
    }
.end annotation


# static fields
.field private static final CONFIG_LOCK:Ljava/lang/Object;

.field public static final EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String;

.field public static final EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String;

.field static final EMOJI_COUNT_UNLIMITED:I = 0x7fffffff

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final LOAD_STATE_DEFAULT:I = 0x3

.field public static final LOAD_STATE_FAILED:I = 0x2

.field public static final LOAD_STATE_LOADING:I = 0x0

.field public static final LOAD_STATE_SUCCEEDED:I = 0x1

.field public static final LOAD_STRATEGY_DEFAULT:I = 0x0

.field public static final LOAD_STRATEGY_MANUAL:I = 0x1

.field private static final NOT_INITIALIZED_ERROR_TEXT:Ljava/lang/String;

.field public static final REPLACE_STRATEGY_ALL:I = 0x1

.field public static final REPLACE_STRATEGY_DEFAULT:I = 0x0

.field public static final REPLACE_STRATEGY_NON_EXISTENT:I = 0x2

.field private static volatile sHasDoneDefaultConfigLookup:Z

.field private static volatile sInstance:Landroidx/emoji2/text/EmojiCompat;


# instance fields
.field final mEmojiAsDefaultStyleExceptions:[I

.field private final mEmojiSpanIndicatorColor:I

.field private final mEmojiSpanIndicatorEnabled:Z

.field private final mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

.field private final mInitCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile mLoadState:I

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field final mReplaceAll:Z

.field final mUseEmojiAsDefaultStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0bc6c2"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String;

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "36c5c5"

    const-wide/32 v2, -0x280080f0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String;

    const/16 v0, 0x5da

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "5f459a"

    const v2, -0x341748e0    # -3.0502464E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->NOT_INITIALIZED_ERROR_TEXT:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x51t
        0xct
        0x7t
        0x44t
        0xct
        0x5bt
        0x54t
        0x4ct
        0x10t
        0x43t
        0x13t
        0x42t
        0x5ft
        0x10t
        0x17t
        0x18t
        0x17t
        0x57t
        0x48t
        0x16t
        0x4dt
        0x53t
        0xet
        0x5dt
        0x5at
        0xbt
        0x4dt
        0x53t
        0xet
        0x5dt
        0x5at
        0xbt
        0x20t
        0x59t
        0xet
        0x42t
        0x51t
        0x16t
        0x3ct
        0x5bt
        0x6t
        0x46t
        0x51t
        0x6t
        0x2t
        0x42t
        0x2t
        0x64t
        0x55t
        0x10t
        0x10t
        0x5ft
        0xct
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x58t
        0x7t
        0x47t
        0xct
        0x5ct
        0x57t
        0x18t
        0x10t
        0x40t
        0x13t
        0x45t
        0x5ct
        0x44t
        0x17t
        0x1bt
        0x17t
        0x50t
        0x4bt
        0x42t
        0x4dt
        0x50t
        0xet
        0x5at
        0x59t
        0x5ft
        0x4dt
        0x50t
        0xet
        0x5at
        0x59t
        0x5ft
        0x20t
        0x5at
        0xet
        0x45t
        0x52t
        0x42t
        0x3ct
        0x47t
        0x6t
        0x45t
        0x5ft
        0x57t
        0x0t
        0x50t
        0x22t
        0x59t
        0x5ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x70t
        0xbt
        0x5bt
        0x5ft
        0x50t
        0x22t
        0x5at
        0xbt
        0x44t
        0x54t
        0x4dt
        0x41t
        0x5ct
        0x15t
        0x14t
        0x5bt
        0x56t
        0x15t
        0x15t
        0xft
        0x5at
        0x5ct
        0x4dt
        0x8t
        0x54t
        0xat
        0x5dt
        0x4ft
        0x5ct
        0x5t
        0x1bt
        0x6ct
        0x3et
        0x6ct
        0x56t
        0x14t
        0x15t
        0xbt
        0x41t
        0x46t
        0x4dt
        0x41t
        0x5ct
        0x8t
        0x5dt
        0x41t
        0x50t
        0x0t
        0x59t
        0xft
        0x4et
        0x50t
        0x19t
        0x24t
        0x58t
        0x9t
        0x5et
        0x5ct
        0x7at
        0xet
        0x58t
        0x16t
        0x55t
        0x41t
        0x19t
        0x11t
        0x47t
        0xft
        0x5bt
        0x47t
        0x19t
        0x15t
        0x5at
        0x46t
        0x46t
        0x50t
        0x5ft
        0x4t
        0x47t
        0x3t
        0x5at
        0x56t
        0x50t
        0xft
        0x52t
        0x46t
        0x40t
        0x5dt
        0x5ct
        0x41t
        0x70t
        0xbt
        0x5bt
        0x5ft
        0x50t
        0x22t
        0x5at
        0xbt
        0x44t
        0x54t
        0x4dt
        0x41t
        0x5ct
        0x8t
        0x47t
        0x41t
        0x58t
        0xft
        0x56t
        0x3t
        0x1at
        0x3ft
        0x33t
        0x35t
        0x5dt
        0x3t
        0x14t
        0x58t
        0x56t
        0x12t
        0x41t
        0x46t
        0x58t
        0x5ct
        0x52t
        0x4t
        0x59t
        0x1ft
        0x14t
        0x56t
        0x58t
        0x14t
        0x46t
        0x3t
        0x14t
        0x5at
        0x5ft
        0x41t
        0x41t
        0xet
        0x5dt
        0x46t
        0x19t
        0x4t
        0x47t
        0x14t
        0x5bt
        0x47t
        0x19t
        0x8t
        0x46t
        0x46t
        0x50t
        0x5ct
        0x4at
        0x0t
        0x57t
        0xat
        0x5dt
        0x5bt
        0x5et
        0x41t
        0x41t
        0xet
        0x51t
        0x15t
        0x7ct
        0xct
        0x5at
        0xct
        0x5dt
        0x76t
        0x56t
        0xct
        0x45t
        0x7t
        0x40t
        0x7ct
        0x57t
        0x8t
        0x41t
        0xft
        0x55t
        0x59t
        0x50t
        0x1bt
        0x50t
        0x14t
        0x3et
        0x50t
        0x50t
        0x15t
        0x5dt
        0x3t
        0x46t
        0x15t
        0x5ct
        0x19t
        0x45t
        0xat
        0x5dt
        0x56t
        0x50t
        0x15t
        0x59t
        0x1ft
        0x14t
        0x5ct
        0x57t
        0x41t
        0x74t
        0x8t
        0x50t
        0x47t
        0x56t
        0x8t
        0x51t
        0x2bt
        0x55t
        0x5bt
        0x50t
        0x7t
        0x50t
        0x15t
        0x40t
        0x1bt
        0x41t
        0xct
        0x59t
        0x4at
        0x14t
        0x5at
        0x4bt
        0x41t
        0x57t
        0x1ft
        0x14t
        0x5ct
        0x57t
        0x2t
        0x59t
        0x13t
        0x50t
        0x5ct
        0x57t
        0x6t
        0x3ft
        0x7t
        0x5at
        0x51t
        0x4bt
        0xet
        0x5ct
        0x2t
        0x4ct
        0x1bt
        0x5ct
        0xct
        0x5at
        0xct
        0x5dt
        0x7t
        0x3t
        0x4t
        0x58t
        0x9t
        0x5et
        0x5ct
        0xbt
        0x4ct
        0x57t
        0x13t
        0x5at
        0x51t
        0x55t
        0x4t
        0x51t
        0x48t
        0x3et
        0x3ft
        0x78t
        0x14t
        0x41t
        0x9t
        0x59t
        0x54t
        0x4dt
        0x8t
        0x56t
        0x46t
        0x5dt
        0x5bt
        0x50t
        0x15t
        0x5ct
        0x7t
        0x58t
        0x5ct
        0x43t
        0x0t
        0x41t
        0xft
        0x5bt
        0x5bt
        0x19t
        0x8t
        0x46t
        0x46t
        0x40t
        0x4ct
        0x49t
        0x8t
        0x56t
        0x7t
        0x58t
        0x59t
        0x40t
        0x41t
        0x45t
        0x3t
        0x46t
        0x53t
        0x56t
        0x13t
        0x58t
        0x3t
        0x50t
        0x15t
        0x5bt
        0x18t
        0x15t
        0x23t
        0x59t
        0x5at
        0x53t
        0x8t
        0x76t
        0x9t
        0x59t
        0x45t
        0x58t
        0x15t
        0x7ct
        0x8t
        0x5dt
        0x41t
        0x50t
        0x0t
        0x59t
        0xft
        0x4et
        0x50t
        0x4bt
        0x4ft
        0x15t
        0x2ft
        0x52t
        0x3ft
        0x40t
        0xet
        0x40t
        0x46t
        0x55t
        0x47t
        0x5ct
        0x41t
        0x5bt
        0x9t
        0x40t
        0x15t
        0x5ct
        0x19t
        0x45t
        0x3t
        0x57t
        0x41t
        0x50t
        0xft
        0x52t
        0x46t
        0x40t
        0x5at
        0x19t
        0x8t
        0x5bt
        0xft
        0x40t
        0x5ct
        0x58t
        0xdt
        0x5ct
        0x1ct
        0x51t
        0x15t
        0x7ct
        0xct
        0x5at
        0xct
        0x5dt
        0x76t
        0x56t
        0xct
        0x45t
        0x7t
        0x40t
        0x15t
        0x54t
        0x0t
        0x5bt
        0x13t
        0x55t
        0x59t
        0x55t
        0x18t
        0x15t
        0xft
        0x5at
        0x15t
        0x40t
        0xet
        0x40t
        0x14t
        0x14t
        0x54t
        0x49t
        0x11t
        0x59t
        0xft
        0x57t
        0x54t
        0x4dt
        0x8t
        0x5at
        0x8t
        0x18t
        0x3ft
        0x49t
        0xdt
        0x50t
        0x7t
        0x47t
        0x50t
        0x19t
        0x2t
        0x5dt
        0x3t
        0x57t
        0x5et
        0x19t
        0x15t
        0x5at
        0x46t
        0x51t
        0x5bt
        0x4at
        0x14t
        0x47t
        0x3t
        0x14t
        0x5ct
        0x4dt
        0x41t
        0x5dt
        0x7t
        0x47t
        0x15t
        0x57t
        0xet
        0x41t
        0x46t
        0x56t
        0x50t
        0x5ct
        0xft
        0x15t
        0x14t
        0x51t
        0x58t
        0x56t
        0x17t
        0x50t
        0x2t
        0x14t
        0x53t
        0x4bt
        0xet
        0x58t
        0x46t
        0x4dt
        0x5at
        0x4ct
        0x13t
        0x15t
        0x27t
        0x64t
        0x7et
        0x1et
        0x12t
        0x15t
        0xbt
        0x55t
        0x5bt
        0x50t
        0x7t
        0x50t
        0x15t
        0x40t
        0x1bt
        0x19t
        0x38t
        0x5at
        0x13t
        0x14t
        0x56t
        0x58t
        0xft
        0x3ft
        0x2t
        0x5bt
        0x15t
        0x4dt
        0x9t
        0x5ct
        0x15t
        0x14t
        0x5ct
        0x57t
        0x41t
        0x74t
        0x8t
        0x50t
        0x47t
        0x56t
        0x8t
        0x51t
        0x46t
        0x67t
        0x41t
        0x4ct
        0x5t
        0x5ct
        0x9t
        0x14t
        0x40t
        0x4at
        0x8t
        0x5bt
        0x1t
        0x14t
        0x77t
        0x4ct
        0x8t
        0x59t
        0x2t
        0x14t
        0xbt
        0x19t
        0x20t
        0x5bt
        0x7t
        0x58t
        0x4ct
        0x43t
        0x4t
        0x15t
        0x27t
        0x64t
        0x7et
        0x17t
        0x6bt
        0x3ft
        0x2ft
        0x5at
        0x15t
        0x4dt
        0x9t
        0x50t
        0x46t
        0x75t
        0x65t
        0x72t
        0x41t
        0x74t
        0x8t
        0x55t
        0x59t
        0x40t
        0x1bt
        0x50t
        0x14t
        0x18t
        0x15t
        0x5ct
        0xft
        0x46t
        0x13t
        0x46t
        0x50t
        0x19t
        0x15t
        0x5dt
        0x7t
        0x40t
        0x15t
        0x4dt
        0x9t
        0x50t
        0x46t
        0x47t
        0x41t
        0x58t
        0x13t
        0x41t
        0x13t
        0x44t
        0x15t
        0x5ct
        0xft
        0x41t
        0x14t
        0x4dt
        0x15t
        0x5ft
        0xet
        0x47t
        0x6ct
        0x71t
        0x58t
        0x56t
        0xbt
        0x5ct
        0x25t
        0x5bt
        0x58t
        0x49t
        0x0t
        0x41t
        0x2ft
        0x5at
        0x5ct
        0x4dt
        0x8t
        0x54t
        0xat
        0x5dt
        0x4ft
        0x5ct
        0x13t
        0x15t
        0x7t
        0x5at
        0x51t
        0x19t
        0x28t
        0x5bt
        0xft
        0x40t
        0x5ct
        0x58t
        0xdt
        0x5ct
        0x1ct
        0x55t
        0x41t
        0x50t
        0xet
        0x5bt
        0x36t
        0x46t
        0x5at
        0x4ft
        0x8t
        0x51t
        0x3t
        0x46t
        0x15t
        0x50t
        0x12t
        0x15t
        0x16t
        0x46t
        0x50t
        0x4at
        0x4t
        0x5bt
        0x12t
        0x14t
        0x5ct
        0x57t
        0x6bt
        0x15t
        0x27t
        0x5at
        0x51t
        0x4bt
        0xet
        0x5ct
        0x2t
        0x79t
        0x54t
        0x57t
        0x8t
        0x53t
        0x3t
        0x47t
        0x41t
        0x17t
        0x19t
        0x58t
        0xat
        0x1at
        0x15t
        0x70t
        0x7t
        0x15t
        0xft
        0x40t
        0x15t
        0x50t
        0x12t
        0x15t
        0xbt
        0x5dt
        0x46t
        0x4at
        0x8t
        0x5bt
        0x1t
        0x14t
        0x5at
        0x4bt
        0x41t
        0x56t
        0x9t
        0x5at
        0x41t
        0x58t
        0x8t
        0x5bt
        0x15t
        0x14t
        0x41t
        0x56t
        0xet
        0x59t
        0x15t
        0xet
        0x5bt
        0x56t
        0x5t
        0x50t
        0x5bt
        0x16t
        0x47t
        0x5ct
        0xct
        0x5at
        0x10t
        0x51t
        0x17t
        0x15t
        0x41t
        0x54t
        0x8t
        0x50t
        0x15t
        0x40t
        0xet
        0x40t
        0x6ct
        0x5dt
        0x5bt
        0x4dt
        0x4t
        0x5bt
        0x2t
        0x14t
        0x41t
        0x56t
        0x41t
        0x40t
        0x15t
        0x51t
        0x15t
        0x58t
        0x14t
        0x41t
        0x9t
        0x59t
        0x54t
        0x4dt
        0x8t
        0x56t
        0x46t
        0x57t
        0x5at
        0x57t
        0x7t
        0x5ct
        0x1t
        0x41t
        0x47t
        0x58t
        0x15t
        0x5ct
        0x9t
        0x5at
        0x19t
        0x19t
        0x17t
        0x50t
        0x14t
        0x5dt
        0x53t
        0x40t
        0x5bt
        0x3ft
        0x6ct
        0x14t
        0x15t
        0x8t
        0x4ft
        0x15t
        0x3ft
        0x5bt
        0x40t
        0x4bt
        0x41t
        0x54t
        0x16t
        0x44t
        0x59t
        0x50t
        0x2t
        0x54t
        0x12t
        0x5dt
        0x5at
        0x57t
        0x41t
        0x51t
        0x9t
        0x51t
        0x46t
        0x19t
        0xft
        0x5at
        0x12t
        0x14t
        0x5ct
        0x57t
        0x2t
        0x59t
        0x13t
        0x50t
        0x50t
        0x19t
        0x4t
        0x58t
        0x9t
        0x5et
        0x5ct
        0xbt
        0x4ct
        0x57t
        0x13t
        0x5at
        0x51t
        0x55t
        0x4t
        0x51t
        0x6ct
        0x14t
        0x15t
        0xbt
        0x4ft
        0x15t
        0x27t
        0x58t
        0x59t
        0x19t
        0xct
        0x5at
        0x2t
        0x41t
        0x59t
        0x5ct
        0x12t
        0x15t
        0x2t
        0x5bt
        0x15t
        0x57t
        0xet
        0x41t
        0x46t
        0x57t
        0x5at
        0x57t
        0x15t
        0x54t
        0xft
        0x5at
        0x15t
        0x58t
        0xft
        0x15t
        0x3t
        0x4ct
        0x56t
        0x55t
        0x14t
        0x46t
        0xft
        0x5bt
        0x5bt
        0x19t
        0xct
        0x54t
        0x8t
        0x5dt
        0x53t
        0x5ct
        0x12t
        0x41t
        0x46t
        0x46t
        0x40t
        0x55t
        0x4t
        0x15t
        0x0t
        0x5bt
        0x47t
        0x33t
        0x41t
        0x15t
        0x46t
        0x14t
        0x15t
        0x7ct
        0xct
        0x5at
        0xct
        0x5dt
        0x76t
        0x56t
        0xct
        0x45t
        0x7t
        0x40t
        0x7ct
        0x57t
        0x8t
        0x41t
        0xft
        0x55t
        0x59t
        0x50t
        0x1bt
        0x50t
        0x14t
        0x14t
        0x5at
        0x4bt
        0x41t
        0x7ct
        0x8t
        0x5dt
        0x41t
        0x50t
        0x0t
        0x59t
        0xft
        0x4et
        0x54t
        0x4dt
        0x8t
        0x5at
        0x8t
        0x64t
        0x47t
        0x56t
        0x17t
        0x5ct
        0x2t
        0x51t
        0x47t
        0x17t
        0x41t
        0x73t
        0x9t
        0x46t
        0x15t
        0x54t
        0xet
        0x47t
        0x3t
        0x14t
        0x5ct
        0x57t
        0x7t
        0x5at
        0x14t
        0x59t
        0x54t
        0x4dt
        0x8t
        0x5at
        0x8t
        0x3et
        0x15t
        0x19t
        0x41t
        0x15t
        0x46t
        0x55t
        0x57t
        0x56t
        0x14t
        0x41t
        0x46t
        0x59t
        0x54t
        0x57t
        0x8t
        0x53t
        0x3t
        0x47t
        0x41t
        0x19t
        0x4t
        0x4dt
        0x5t
        0x58t
        0x40t
        0x4at
        0x8t
        0x5at
        0x8t
        0x47t
        0x15t
        0x4at
        0x4t
        0x50t
        0x46t
        0x40t
        0x5dt
        0x5ct
        0x41t
        0x51t
        0x9t
        0x57t
        0x40t
        0x54t
        0x4t
        0x5bt
        0x12t
        0x55t
        0x41t
        0x50t
        0xet
        0x5bt
        0x46t
        0x52t
        0x5at
        0x4bt
        0x41t
        0x41t
        0xet
        0x51t
        0x15t
        0x58t
        0xft
        0x51t
        0x14t
        0x5bt
        0x5ct
        0x5dt
        0x19t
        0x15t
        0x15t
        0x40t
        0x54t
        0x4bt
        0x15t
        0x40t
        0x16t
        0x3et
        0x15t
        0x19t
        0x41t
        0x15t
        0x46t
        0x58t
        0x5ct
        0x5bt
        0x13t
        0x54t
        0x14t
        0x4dt
        0x1bt
        0x33t
        0x6bt
        0x7ct
        0x0t
        0x14t
        0x4ct
        0x56t
        0x14t
        0x15t
        0xft
        0x5at
        0x41t
        0x5ct
        0xft
        0x51t
        0x46t
        0x40t
        0x5at
        0x19t
        0x14t
        0x46t
        0x3t
        0x14t
        0x50t
        0x54t
        0xet
        0x5ft
        0xft
        0x6t
        0x18t
        0x5bt
        0x14t
        0x5bt
        0x2t
        0x58t
        0x50t
        0x5dt
        0x4dt
        0x15t
        0x16t
        0x58t
        0x50t
        0x58t
        0x12t
        0x50t
        0x46t
        0x57t
        0x54t
        0x55t
        0xdt
        0x15t
        0x23t
        0x59t
        0x5at
        0x53t
        0x8t
        0x76t
        0x9t
        0x59t
        0x45t
        0x58t
        0x15t
        0x1bt
        0xft
        0x5at
        0x5ct
        0x4dt
        0x4ft
        0x15t
        0x3ft
        0x5bt
        0x40t
        0x19t
        0x2t
        0x54t
        0x8t
        0x3et
        0x59t
        0x5ct
        0x0t
        0x47t
        0x8t
        0x14t
        0x58t
        0x56t
        0x13t
        0x50t
        0x46t
        0x5dt
        0x5bt
        0x19t
        0x15t
        0x5dt
        0x3t
        0x14t
        0x51t
        0x56t
        0x2t
        0x40t
        0xbt
        0x51t
        0x5bt
        0x4dt
        0x0t
        0x41t
        0xft
        0x5bt
        0x5bt
        0x19t
        0x7t
        0x5at
        0x14t
        0x14t
        0x77t
        0x4ct
        0xft
        0x51t
        0xat
        0x51t
        0x51t
        0x7ct
        0xct
        0x5at
        0xct
        0x5dt
        0x76t
        0x56t
        0xct
        0x45t
        0x7t
        0x40t
        0x76t
        0x56t
        0xft
        0x53t
        0xft
        0x53t
        0x1bt
        0x33t
        0x6bt
        0x7ct
        0x0t
        0x14t
        0x4ct
        0x56t
        0x14t
        0x15t
        0xft
        0x5at
        0x41t
        0x5ct
        0xft
        0x51t
        0x3t
        0x50t
        0x15t
        0x4dt
        0xet
        0x15t
        0x16t
        0x51t
        0x47t
        0x5ft
        0xet
        0x47t
        0xbt
        0x14t
        0x58t
        0x58t
        0xft
        0x40t
        0x7t
        0x58t
        0x15t
        0x5at
        0xet
        0x5bt
        0x0t
        0x5dt
        0x52t
        0x4ct
        0x13t
        0x54t
        0x12t
        0x5dt
        0x5at
        0x57t
        0x4dt
        0x15t
        0xft
        0x40t
        0x15t
        0x50t
        0x12t
        0x15t
        0x14t
        0x51t
        0x56t
        0x56t
        0xct
        0x58t
        0x3t
        0x5at
        0x51t
        0x5ct
        0x5t
        0x15t
        0x12t
        0x5ct
        0x54t
        0x4dt
        0x41t
        0x4ct
        0x9t
        0x41t
        0x15t
        0x5at
        0x0t
        0x59t
        0xat
        0x3et
        0x70t
        0x54t
        0xet
        0x5ft
        0xft
        0x77t
        0x5at
        0x54t
        0x11t
        0x54t
        0x12t
        0x1at
        0x5ct
        0x57t
        0x8t
        0x41t
        0x46t
        0x5dt
        0x58t
        0x54t
        0x4t
        0x51t
        0xft
        0x55t
        0x41t
        0x5ct
        0xdt
        0x4ct
        0x46t
        0x5bt
        0x5bt
        0x19t
        0x0t
        0x45t
        0x16t
        0x58t
        0x5ct
        0x5at
        0x0t
        0x41t
        0xft
        0x5bt
        0x5bt
        0x19t
        0x12t
        0x41t
        0x7t
        0x46t
        0x41t
        0x4ct
        0x11t
        0x1bt
        0x6ct
        0x3et
        0x7ct
        0x5ft
        0x41t
        0x4ct
        0x9t
        0x41t
        0x15t
        0x4at
        0x15t
        0x5ct
        0xat
        0x58t
        0x15t
        0x5at
        0x0t
        0x5bt
        0x8t
        0x5bt
        0x41t
        0x19t
        0x13t
        0x50t
        0x15t
        0x5bt
        0x59t
        0x4ft
        0x4t
        0x15t
        0x12t
        0x5ct
        0x5ct
        0x4at
        0x41t
        0x5ct
        0x15t
        0x47t
        0x40t
        0x5ct
        0x4dt
        0x15t
        0x16t
        0x58t
        0x50t
        0x58t
        0x12t
        0x50t
        0x46t
        0x5bt
        0x45t
        0x5ct
        0xft
        0x15t
        0x7t
        0x14t
        0x57t
        0x4ct
        0x6t
        0x15t
        0x11t
        0x5dt
        0x41t
        0x51t
        0x41t
        0x4ct
        0x9t
        0x41t
        0x47t
        0x19t
        0x12t
        0x45t
        0x3t
        0x57t
        0x5ct
        0x5ft
        0x8t
        0x56t
        0x6ct
        0x57t
        0x5at
        0x57t
        0x7t
        0x5ct
        0x1t
        0x41t
        0x47t
        0x58t
        0x15t
        0x5ct
        0x9t
        0x5at
        0x15t
        0x4dt
        0xet
        0x15t
        0xet
        0x51t
        0x59t
        0x49t
        0x41t
        0x5ct
        0xbt
        0x44t
        0x47t
        0x56t
        0x17t
        0x50t
        0x46t
        0x51t
        0x47t
        0x4bt
        0xet
        0x47t
        0x46t
        0x59t
        0x50t
        0x4at
        0x12t
        0x54t
        0x1t
        0x51t
        0x1bt
    .end array-data
.end method

.method private constructor <init>(Landroidx/emoji2/text/EmojiCompat$Config;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mReplaceAll:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    new-instance v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    :goto_0
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->loadMetadata()V

    return-void

    :cond_1
    new-instance v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    return-object v0
.end method

.method public static get()Landroidx/emoji2/text/EmojiCompat;
    .locals 4

    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v3, Landroidx/emoji2/text/EmojiCompat;->NOT_INITIALIZED_ERROR_TEXT:Ljava/lang/String;

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    monitor-exit v1

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/EmojiProcessor;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/EmojiProcessor;->handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;
    .locals 3

    sget-boolean v0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object v0

    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    :cond_2
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    new-instance p1, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;-><init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V

    goto :goto_1
.end method

.method public static init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    if-nez v0, :cond_1

    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/text/EmojiCompat;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isConfigured()Z
    .locals 1

    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadMetadata()V
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->loadMetadata()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .locals 2

    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroidx/emoji2/text/EmojiCompat;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat;
    .locals 2

    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static skipDefaultConfigurationLookup(Z)V
    .locals 2

    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAssetSignature()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7c69d6"

    const-wide v4, 0x41d019c31f800000L    # 1.08049523E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->getAssetSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x79t
        0xct
        0x42t
        0x19t
        0xdt
        0x58t
        0x5et
        0x17t
        0x5ft
        0x58t
        0x8t
        0x5ft
        0x4dt
        0x6t
        0x52t
        0x19t
        0x1dt
        0x53t
        0x43t
    .end array-data
.end method

.method public getEmojiSpanIndicatorColor()I
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    return v0
.end method

.method public getLoadState()I
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0f3bf2"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "53a0ca"

    const-wide/32 v2, 0x2a098fd2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x7et
        0x9t
        0x47t
        0x42t
        0xft
        0x5ct
        0x59t
        0x12t
        0x5at
        0x3t
        0xat
        0x5bt
        0x4at
        0x3t
        0x57t
        0x42t
        0x1ft
        0x57t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x56t
        0x10t
        0x45t
        0x6t
        0xft
        0x56t
        0x56t
        0x41t
        0x53t
        0x2t
        0xft
        0x5bt
        0x5ct
        0x15t
        0x10t
        0x1t
        0x4t
        0x15t
        0x5dt
        0x14t
        0x5ct
        0xft
    .end array-data
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;I)Z
    .locals 6

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "376a62"

    const-wide v4, -0x3e3eeb3a60000000L    # -5.73147968E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "fe3b49"

    const-wide v2, 0x41d214d2a1000000L    # 1.213418116E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x7dt
        0x58t
        0x42t
        0x41t
        0x5ft
        0x5ct
        0x5at
        0x43t
        0x5ft
        0x0t
        0x5at
        0x5bt
        0x49t
        0x52t
        0x52t
        0x41t
        0x4ft
        0x57t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x0t
        0x42t
        0x17t
        0x51t
        0x57t
        0x5t
        0x0t
        0x13t
        0x1t
        0x55t
        0x57t
        0x8t
        0xat
        0x47t
        0x42t
        0x56t
        0x5ct
        0x46t
        0xbt
        0x46t
        0xet
        0x58t
    .end array-data
.end method

.method public isEmojiSpanIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    return v0
.end method

.method public load()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    if-ne v2, v0, :cond_0

    :goto_0
    const/16 v1, 0x4a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6b6401"

    const-wide/32 v4, 0x5d9b01cb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->loadMetadata()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :array_0
    .array-data 1
        0x65t
        0x7t
        0x42t
        0x14t
        0x5dt
        0x54t
        0x42t
        0x3t
        0x52t
        0x55t
        0x44t
        0x50t
        0x7at
        0xdt
        0x57t
        0x50t
        0x63t
        0x45t
        0x44t
        0x3t
        0x42t
        0x51t
        0x57t
        0x48t
        0x16t
        0x16t
        0x59t
        0x14t
        0x7ct
        0x7et
        0x77t
        0x26t
        0x69t
        0x67t
        0x64t
        0x63t
        0x77t
        0x36t
        0x73t
        0x73t
        0x69t
        0x6et
        0x7bt
        0x23t
        0x78t
        0x61t
        0x71t
        0x7dt
        0x16t
        0x16t
        0x59t
        0x14t
        0x55t
        0x49t
        0x53t
        0x1t
        0x43t
        0x40t
        0x55t
        0x11t
        0x5bt
        0x3t
        0x58t
        0x41t
        0x51t
        0x5dt
        0x16t
        0xet
        0x59t
        0x55t
        0x54t
        0x58t
        0x58t
        0x5t
    .end array-data
.end method

.method onMetadataLoadFailed(Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method onMetadataLoadSuccess()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    invoke-direct {v2, v0, v3}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "0b1146"

    const-wide/32 v6, 0x3f47c364

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "345184"

    invoke-static {v0, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v3, "0551d4"

    const v4, 0x4eb2daf6

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v3, "c97578"

    invoke-static {v0, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    if-gt p2, p3, :cond_1

    move v0, v1

    :goto_0
    const/16 v3, 0x1b

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "325e15"

    const-wide/32 v6, -0x158bed45

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    move v0, v1

    :goto_2
    const/16 v3, 0x2a

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "da8ccf"

    const-wide v6, 0x41c71a29c1800000L    # 7.75181187E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_4

    move v0, v1

    :goto_3
    const/16 v3, 0x28

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "5b737c"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, p3, :cond_0

    packed-switch p5, :pswitch_data_0

    iget-boolean v5, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    :goto_4
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :pswitch_0
    move v5, v2

    goto :goto_4

    :pswitch_1
    move v5, v1

    goto :goto_4

    nop

    :array_0
    .array-data 1
        0x7et
        0xdt
        0x45t
        0x11t
        0x5dt
        0x58t
        0x59t
        0x16t
        0x58t
        0x50t
        0x58t
        0x5ft
        0x4at
        0x7t
        0x55t
        0x11t
        0x4dt
        0x53t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x40t
        0x54t
        0x43t
        0x4ct
        0x14t
        0x50t
        0x55t
        0x5bt
        0x5ft
        0x57t
        0x40t
        0x13t
        0x56t
        0x50t
        0x11t
        0x56t
        0x51t
        0x54t
        0x55t
        0x41t
        0x58t
        0x4et
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x5bt
        0x51t
        0x11t
        0x7t
        0x55t
        0x5et
        0x5bt
        0x5at
        0x45t
        0x44t
        0x56t
        0x55t
        0x15t
        0x5bt
        0x54t
        0x3t
        0x55t
        0x44t
        0x5ct
        0x43t
        0x54t
    .end array-data

    nop

    :array_3
    .array-data 1
        0xet
        0x58t
        0x4ft
        0x70t
        0x5at
        0x57t
        0x9t
        0x50t
        0x74t
        0x5at
        0x42t
        0x56t
        0x17t
        0x19t
        0x54t
        0x54t
        0x59t
        0x56t
        0xct
        0x4dt
        0x17t
        0x57t
        0x52t
        0x18t
        0xdt
        0x5ct
        0x50t
        0x54t
        0x43t
        0x51t
        0x15t
        0x5ct
    .end array-data

    :array_4
    .array-data 1
        0x40t
        0x46t
        0x54t
        0x17t
        0x45t
        0x15t
        0x40t
        0x5at
        0x5at
        0x10t
        0x5dt
        0x51t
        0x13t
        0x50t
        0x50t
        0x45t
        0xdt
        0x8t
        0x13t
        0x46t
        0x5dt
        0x4t
        0x5ft
        0x15t
        0x56t
        0x5ct
        0x51t
    .end array-data

    :array_5
    .array-data 1
        0x17t
        0x15t
        0x59t
        0x11t
        0x17t
        0x46t
        0x17t
        0x9t
        0x57t
        0x16t
        0xft
        0x2t
        0x44t
        0x3t
        0x5dt
        0x43t
        0x5ft
        0x46t
        0x10t
        0x9t
        0x59t
        0xdt
        0x43t
        0x5t
        0xct
        0x0t
        0x4at
        0x30t
        0x6t
        0x17t
        0x11t
        0x4t
        0x56t
        0x0t
        0x6t
        0x46t
        0x8t
        0x4t
        0x56t
        0x4t
        0x17t
        0xet
    .end array-data

    nop

    :array_6
    .array-data 1
        0x50t
        0xct
        0x53t
        0x13t
        0x44t
        0xbt
        0x5at
        0x17t
        0x5bt
        0x57t
        0x17t
        0x1t
        0x50t
        0x42t
        0xbt
        0x13t
        0x43t
        0xbt
        0x54t
        0xct
        0x17t
        0x50t
        0x5ft
        0x2t
        0x47t
        0x31t
        0x52t
        0x42t
        0x42t
        0x6t
        0x5bt
        0x1t
        0x52t
        0x13t
        0x5bt
        0x6t
        0x5bt
        0x5t
        0x43t
        0x5bt
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 4

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "23987b"

    const-wide/32 v2, 0x3561e683

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    invoke-direct {v1, p1, v2}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Landroidx/emoji2/text/EmojiCompat$InitCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5dt
        0x50t
        0x4ct
        0x74t
        0x3t
        0x5et
        0x5ft
        0x5bt
        0x59t
        0x54t
        0x9t
        0x12t
        0x50t
        0x58t
        0x56t
        0x59t
        0xdt
        0x46t
        0x13t
        0x5bt
        0x5dt
        0x17t
        0xct
        0x47t
        0x5ft
        0x55t
    .end array-data
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 3

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "87540a"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :array_0
    .array-data 1
        0x51t
        0x59t
        0x5ct
        0x40t
        0x73t
        0x0t
        0x54t
        0x5bt
        0x57t
        0x55t
        0x53t
        0xat
        0x18t
        0x54t
        0x54t
        0x5at
        0x5et
        0xet
        0x4ct
        0x17t
        0x57t
        0x51t
        0x10t
        0xft
        0x4dt
        0x5bt
        0x59t
    .end array-data
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method
