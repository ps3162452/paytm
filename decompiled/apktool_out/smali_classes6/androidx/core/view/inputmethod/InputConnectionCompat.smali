.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String;

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String;

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String;

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String;

.field private static final EXTRA_INPUT_CONTENT_INFO:Ljava/lang/String;

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x48

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "77bfd1"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "3be2a8"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "9a4cd8"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    const/16 v0, 0x4e

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "8a73d3"

    const-wide v2, 0x41cddd201f000000L    # 1.002061886E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "c307ec"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "1b10b8"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String;

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "13753f"

    const-wide/32 v2, 0x1d047cb

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "9df849"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String;

    const/16 v0, 0x4b

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "e167ef"

    const/16 v2, 0x4068

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String;

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "f70a72"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "e0c4d0"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String;

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "e11e5d"

    const/16 v2, 0x409e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    const/16 v0, 0x52

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "b268fc"

    const/16 v2, 0x10d3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String;

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "fa0908"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String;

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "c7f3c5"

    const-wide/32 v2, 0x5586732f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->EXTRA_INPUT_CONTENT_INFO:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "153dc3"

    const/16 v2, -0x3283

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->LOG_TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x56t
        0x59t
        0x6t
        0x14t
        0xbt
        0x58t
        0x53t
        0x4ft
        0x4ct
        0x5t
        0xbt
        0x43t
        0x52t
        0x19t
        0x14t
        0xft
        0x1t
        0x46t
        0x19t
        0x5et
        0xct
        0x16t
        0x11t
        0x45t
        0x5at
        0x52t
        0x16t
        0xet
        0xbt
        0x55t
        0x19t
        0x7et
        0xct
        0x16t
        0x11t
        0x45t
        0x74t
        0x58t
        0xct
        0x8t
        0x1t
        0x52t
        0x43t
        0x5et
        0xdt
        0x8t
        0x27t
        0x5et
        0x5at
        0x47t
        0x3t
        0x12t
        0x4at
        0x72t
        0x78t
        0x7at
        0x2ft
        0x2ft
        0x30t
        0x6et
        0x74t
        0x78t
        0x2ct
        0x32t
        0x21t
        0x7ft
        0x63t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0xct
        0x1t
        0x40t
        0xet
        0x51t
        0x57t
        0x4ct
        0x16t
        0x47t
        0x11t
        0x48t
        0x5ct
        0x10t
        0x11t
        0x1ct
        0x17t
        0x9t
        0x0t
        0x4ct
        0x13t
        0x5bt
        0x4t
        0x4ft
        0x1dt
        0xbt
        0xbt
        0x42t
        0x14t
        0x4ct
        0x5et
        0x7t
        0x11t
        0x5at
        0xet
        0x5ct
        0x1dt
        0x2bt
        0xbt
        0x42t
        0x14t
        0x4ct
        0x70t
        0xdt
        0xbt
        0x5ct
        0x4t
        0x5bt
        0x47t
        0xbt
        0xat
        0x5ct
        0x22t
        0x57t
        0x5et
        0x12t
        0x4t
        0x46t
        0x4ft
        0x7bt
        0x7ct
        0x2ct
        0x31t
        0x77t
        0x2ft
        0x6ct
        0x6ct
        0x37t
        0x37t
        0x7bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x58t
        0xft
        0x50t
        0x11t
        0xbt
        0x51t
        0x5dt
        0x19t
        0x1at
        0x0t
        0xbt
        0x4at
        0x5ct
        0x4ft
        0x42t
        0xat
        0x1t
        0x4ft
        0x17t
        0x8t
        0x5at
        0x13t
        0x11t
        0x4ct
        0x54t
        0x4t
        0x40t
        0xbt
        0xbt
        0x5ct
        0x17t
        0x28t
        0x5at
        0x13t
        0x11t
        0x4ct
        0x7at
        0xet
        0x5at
        0xdt
        0x1t
        0x5bt
        0x4dt
        0x8t
        0x5bt
        0xdt
        0x27t
        0x57t
        0x54t
        0x11t
        0x55t
        0x17t
        0x4at
        0x7bt
        0x76t
        0x2ft
        0x60t
        0x26t
        0x2at
        0x6ct
        0x66t
        0x34t
        0x66t
        0x2at
    .end array-data

    :array_3
    .array-data 1
        0x59t
        0xft
        0x53t
        0x41t
        0xbt
        0x5at
        0x5ct
        0x4ft
        0x44t
        0x46t
        0x14t
        0x43t
        0x57t
        0x13t
        0x43t
        0x1dt
        0x12t
        0x2t
        0xbt
        0x4ft
        0x41t
        0x5at
        0x1t
        0x44t
        0x16t
        0x8t
        0x59t
        0x43t
        0x11t
        0x47t
        0x55t
        0x4t
        0x43t
        0x5bt
        0xbt
        0x57t
        0x16t
        0x28t
        0x59t
        0x43t
        0x11t
        0x47t
        0x7bt
        0xet
        0x59t
        0x5dt
        0x1t
        0x50t
        0x4ct
        0x8t
        0x58t
        0x5dt
        0x27t
        0x5ct
        0x55t
        0x11t
        0x56t
        0x47t
        0x4at
        0x70t
        0x77t
        0x2ft
        0x63t
        0x76t
        0x2at
        0x67t
        0x67t
        0x25t
        0x72t
        0x60t
        0x27t
        0x61t
        0x71t
        0x31t
        0x63t
        0x7at
        0x2bt
        0x7dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2t
        0x5dt
        0x54t
        0x45t
        0xat
        0xat
        0x7t
        0x4bt
        0x1et
        0x54t
        0xat
        0x11t
        0x6t
        0x1dt
        0x46t
        0x5et
        0x0t
        0x14t
        0x4dt
        0x5at
        0x5et
        0x47t
        0x10t
        0x17t
        0xet
        0x56t
        0x44t
        0x5ft
        0xat
        0x7t
        0x4dt
        0x7at
        0x5et
        0x47t
        0x10t
        0x17t
        0x20t
        0x5ct
        0x5et
        0x59t
        0x0t
        0x0t
        0x17t
        0x5at
        0x5ft
        0x59t
        0x26t
        0xct
        0xet
        0x43t
        0x51t
        0x43t
        0x4bt
        0x20t
        0x2ct
        0x7dt
        0x64t
        0x72t
        0x2bt
        0x37t
        0x3ct
        0x77t
        0x75t
        0x64t
        0x26t
        0x31t
        0x2at
        0x63t
        0x64t
        0x7et
        0x2at
        0x2dt
    .end array-data

    :array_5
    .array-data 1
        0x50t
        0xct
        0x55t
        0x42t
        0xdt
        0x51t
        0x55t
        0x4ct
        0x42t
        0x45t
        0x12t
        0x48t
        0x5et
        0x10t
        0x45t
        0x1et
        0x14t
        0x9t
        0x2t
        0x4ct
        0x47t
        0x59t
        0x7t
        0x4ft
        0x1ft
        0xbt
        0x5ft
        0x40t
        0x17t
        0x4ct
        0x5ct
        0x7t
        0x45t
        0x58t
        0xdt
        0x5ct
        0x1ft
        0x2bt
        0x5ft
        0x40t
        0x17t
        0x4ct
        0x72t
        0xdt
        0x5ft
        0x5et
        0x7t
        0x5bt
        0x45t
        0xbt
        0x5et
        0x5et
        0x21t
        0x57t
        0x5ct
        0x12t
        0x50t
        0x44t
        0x4ct
        0x7bt
        0x7et
        0x2ct
        0x65t
        0x75t
        0x2ct
        0x6ct
        0x6et
        0x24t
        0x7dt
        0x71t
        0x25t
        0x6bt
    .end array-data

    :array_6
    .array-data 1
        0x50t
        0x5dt
        0x53t
        0x47t
        0x5ct
        0xft
        0x55t
        0x4bt
        0x19t
        0x56t
        0x5ct
        0x14t
        0x54t
        0x1dt
        0x41t
        0x5ct
        0x56t
        0x11t
        0x1ft
        0x5at
        0x59t
        0x45t
        0x46t
        0x12t
        0x5ct
        0x56t
        0x43t
        0x5dt
        0x5ct
        0x2t
        0x1ft
        0x7at
        0x59t
        0x45t
        0x46t
        0x12t
        0x72t
        0x5ct
        0x59t
        0x5bt
        0x56t
        0x5t
        0x45t
        0x5at
        0x58t
        0x5bt
        0x70t
        0x9t
        0x5ct
        0x43t
        0x56t
        0x41t
        0x1dt
        0x25t
        0x7et
        0x7dt
        0x63t
        0x70t
        0x7dt
        0x32t
        0x6et
        0x75t
        0x7bt
        0x74t
        0x74t
        0x35t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x58t
        0xat
        0x2t
        0x4at
        0x5bt
        0x50t
        0x5dt
        0x4at
        0x15t
        0x4dt
        0x44t
        0x49t
        0x56t
        0x16t
        0x12t
        0x16t
        0x42t
        0x8t
        0xat
        0x4at
        0x10t
        0x51t
        0x51t
        0x4et
        0x17t
        0xdt
        0x8t
        0x48t
        0x41t
        0x4dt
        0x54t
        0x1t
        0x12t
        0x50t
        0x5bt
        0x5dt
        0x17t
        0x2dt
        0x8t
        0x48t
        0x41t
        0x4dt
        0x7at
        0xbt
        0x8t
        0x56t
        0x51t
        0x5at
        0x4dt
        0xdt
        0x9t
        0x56t
        0x77t
        0x56t
        0x54t
        0x14t
        0x7t
        0x4ct
        0x1at
        0x7at
        0x76t
        0x29t
        0x2bt
        0x71t
        0x60t
        0x66t
        0x7at
        0x2bt
        0x28t
        0x6ct
        0x71t
        0x77t
        0x6dt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x4t
        0x5ft
        0x52t
        0x45t
        0xat
        0xft
        0x1t
        0x1ft
        0x45t
        0x42t
        0x15t
        0x16t
        0xat
        0x43t
        0x42t
        0x19t
        0x13t
        0x57t
        0x56t
        0x1ft
        0x40t
        0x5et
        0x0t
        0x11t
        0x4bt
        0x58t
        0x58t
        0x47t
        0x10t
        0x12t
        0x8t
        0x54t
        0x42t
        0x5ft
        0xat
        0x2t
        0x4bt
        0x78t
        0x58t
        0x47t
        0x10t
        0x12t
        0x26t
        0x5et
        0x58t
        0x59t
        0x0t
        0x5t
        0x11t
        0x58t
        0x59t
        0x59t
        0x26t
        0x9t
        0x8t
        0x41t
        0x57t
        0x43t
        0x4bt
        0x25t
        0x2at
        0x7ft
        0x62t
        0x72t
        0x2bt
        0x32t
        0x3at
        0x7dt
        0x7ft
        0x79t
        0x2et
        0x39t
        0x30t
        0x63t
        0x7ft
    .end array-data

    :array_9
    .array-data 1
        0x7t
        0x59t
        0x54t
        0x13t
        0x58t
        0x5bt
        0x2t
        0x4ft
        0x1et
        0x2t
        0x58t
        0x40t
        0x3t
        0x19t
        0x46t
        0x8t
        0x52t
        0x45t
        0x48t
        0x5et
        0x5et
        0x11t
        0x42t
        0x46t
        0xbt
        0x52t
        0x44t
        0x9t
        0x58t
        0x56t
        0x48t
        0x7et
        0x5et
        0x11t
        0x42t
        0x46t
        0x25t
        0x58t
        0x5et
        0xft
        0x52t
        0x51t
        0x12t
        0x5et
        0x5ft
        0xft
        0x74t
        0x5dt
        0xbt
        0x47t
        0x51t
        0x15t
        0x19t
        0x71t
        0x29t
        0x79t
        0x64t
        0x24t
        0x79t
        0x66t
        0x39t
        0x7bt
        0x79t
        0x2ft
        0x7ct
        0x6dt
        0x33t
        0x65t
        0x79t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x4t
        0x5et
        0x7t
        0x46t
        0xbt
        0x59t
        0x1t
        0x1et
        0x10t
        0x41t
        0x14t
        0x40t
        0xat
        0x42t
        0x17t
        0x1at
        0x12t
        0x1t
        0x56t
        0x1et
        0x15t
        0x5dt
        0x1t
        0x47t
        0x4bt
        0x59t
        0xdt
        0x44t
        0x11t
        0x44t
        0x8t
        0x55t
        0x17t
        0x5ct
        0xbt
        0x54t
        0x4bt
        0x79t
        0xdt
        0x44t
        0x11t
        0x44t
        0x26t
        0x5ft
        0xdt
        0x5at
        0x1t
        0x53t
        0x11t
        0x59t
        0xct
        0x5at
        0x27t
        0x5ft
        0x8t
        0x40t
        0x2t
        0x40t
        0x4at
        0x73t
        0x2at
        0x7et
        0x37t
        0x71t
        0x2at
        0x64t
        0x3at
        0x7ft
        0x33t
        0x60t
        0x37t
    .end array-data

    :array_b
    .array-data 1
        0x4t
        0x5ft
        0x55t
        0x17t
        0x5at
        0xdt
        0x1t
        0x49t
        0x1ft
        0x6t
        0x5at
        0x16t
        0x0t
        0x1ft
        0x47t
        0xct
        0x50t
        0x13t
        0x4bt
        0x58t
        0x5ft
        0x15t
        0x40t
        0x10t
        0x8t
        0x54t
        0x45t
        0xdt
        0x5at
        0x0t
        0x4bt
        0x78t
        0x5ft
        0x15t
        0x40t
        0x10t
        0x26t
        0x5et
        0x5ft
        0xbt
        0x50t
        0x7t
        0x11t
        0x58t
        0x5et
        0xbt
        0x76t
        0xbt
        0x8t
        0x41t
        0x50t
        0x11t
        0x1bt
        0x27t
        0x2at
        0x7ft
        0x65t
        0x20t
        0x7bt
        0x30t
        0x3at
        0x7et
        0x61t
        0x31t
        0x66t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x3t
        0x5ct
        0x52t
        0x4at
        0x9t
        0xat
        0x6t
        0x1ct
        0x45t
        0x4dt
        0x16t
        0x13t
        0xdt
        0x40t
        0x42t
        0x16t
        0x10t
        0x52t
        0x51t
        0x1ct
        0x40t
        0x51t
        0x3t
        0x14t
        0x4ct
        0x5bt
        0x58t
        0x48t
        0x13t
        0x17t
        0xft
        0x57t
        0x42t
        0x50t
        0x9t
        0x7t
        0x4ct
        0x7bt
        0x58t
        0x48t
        0x13t
        0x17t
        0x21t
        0x5dt
        0x58t
        0x56t
        0x3t
        0x0t
        0x16t
        0x5bt
        0x59t
        0x56t
        0x25t
        0xct
        0xft
        0x42t
        0x57t
        0x4ct
        0x48t
        0x20t
        0x2dt
        0x7ct
        0x62t
        0x7dt
        0x28t
        0x37t
        0x3dt
        0x60t
        0x73t
        0x6bt
        0x33t
        0x2ft
        0x36t
        0x6dt
        0x64t
        0x7dt
        0x25t
        0x26t
        0x2bt
        0x64t
        0x73t
        0x6at
    .end array-data

    nop

    :array_d
    .array-data 1
        0x7t
        0xft
        0x54t
        0x4bt
        0x5ft
        0x51t
        0x2t
        0x19t
        0x1et
        0x5at
        0x5ft
        0x4at
        0x3t
        0x4ft
        0x46t
        0x50t
        0x55t
        0x4ft
        0x48t
        0x8t
        0x5et
        0x49t
        0x45t
        0x4ct
        0xbt
        0x4t
        0x44t
        0x51t
        0x5ft
        0x5ct
        0x48t
        0x28t
        0x5et
        0x49t
        0x45t
        0x4ct
        0x25t
        0xet
        0x5et
        0x57t
        0x55t
        0x5bt
        0x12t
        0x8t
        0x5ft
        0x57t
        0x73t
        0x57t
        0xbt
        0x11t
        0x51t
        0x4dt
        0x1et
        0x7bt
        0x29t
        0x2ft
        0x64t
        0x7ct
        0x7et
        0x6ct
        0x39t
        0x33t
        0x75t
        0x6at
        0x65t
        0x74t
        0x32t
        0x3et
        0x62t
        0x7ct
        0x73t
        0x7dt
        0x2ft
        0x37t
        0x75t
        0x6bt
    .end array-data

    :array_e
    .array-data 1
        0x2t
        0x59t
        0x2t
        0x41t
        0xct
        0x5ct
        0x7t
        0x4ft
        0x48t
        0x50t
        0xct
        0x47t
        0x6t
        0x19t
        0x10t
        0x5at
        0x6t
        0x42t
        0x4dt
        0x52t
        0x1et
        0x47t
        0x11t
        0x54t
        0x4dt
        0x7et
        0x28t
        0x63t
        0x36t
        0x61t
        0x3ct
        0x74t
        0x29t
        0x7dt
        0x37t
        0x70t
        0x2dt
        0x63t
        0x39t
        0x7at
        0x2dt
        0x73t
        0x2ct
    .end array-data

    :array_f
    .array-data 1
        0x78t
        0x5bt
        0x43t
        0x11t
        0x17t
        0x70t
        0x5et
        0x5bt
        0x5dt
        0x1t
        0x0t
        0x47t
        0x58t
        0x5at
        0x5dt
        0x27t
        0xct
        0x5et
        0x41t
        0x54t
        0x47t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_2

    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-interface {p0, v0, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v0, v1

    :pswitch_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_3

    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_4

    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String;

    :goto_4
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String;

    :goto_5
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_6

    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String;

    :goto_6
    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_7

    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String;

    :goto_7
    invoke-virtual {v2, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String;

    :goto_8
    invoke-interface {p0, v0, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    goto :goto_3

    :cond_4
    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    goto :goto_4

    :cond_5
    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    goto :goto_5

    :cond_6
    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    goto :goto_6

    :cond_7
    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    goto :goto_7

    :cond_8
    sget-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move v2, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .locals 1

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$3;

    invoke-direct {v0, p0}, Landroidx/core/view/inputmethod/InputConnectionCompat$3;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static createWrapper(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-static {p0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b98103"

    const/4 v2, 0x1

    invoke-static {v0, v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c83601"

    const/16 v2, 0x4038

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "d50f46"

    const-wide/32 v2, -0x38b3ec5e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v0, p0, v4, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v0, p0, v4, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v0

    goto :goto_0

    :array_0
    .array-data 1
        0xbt
        0x57t
        0x48t
        0x44t
        0x44t
        0x70t
        0xdt
        0x57t
        0x56t
        0x54t
        0x53t
        0x47t
        0xbt
        0x56t
        0x56t
        0x11t
        0x5dt
        0x46t
        0x11t
        0x4dt
        0x18t
        0x53t
        0x55t
        0x13t
        0xct
        0x56t
        0x56t
        0x1ct
        0x5et
        0x46t
        0xet
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x6t
        0x5ct
        0x5at
        0x42t
        0x5ft
        0x43t
        0x2at
        0x56t
        0x55t
        0x59t
        0x10t
        0x5ct
        0x16t
        0x4bt
        0x47t
        0x16t
        0x52t
        0x54t
        0x43t
        0x56t
        0x5ct
        0x58t
        0x1dt
        0x5ft
        0x16t
        0x54t
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        0xbt
        0x5bt
        0x73t
        0x9t
        0x59t
        0x5bt
        0xdt
        0x41t
        0x73t
        0x9t
        0x5at
        0x42t
        0x1t
        0x5bt
        0x44t
        0x2at
        0x5dt
        0x45t
        0x10t
        0x50t
        0x5et
        0x3t
        0x46t
        0x16t
        0x9t
        0x40t
        0x43t
        0x12t
        0x14t
        0x54t
        0x1t
        0x15t
        0x5et
        0x9t
        0x5at
        0x1bt
        0xat
        0x40t
        0x5ct
        0xat
    .end array-data
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    sget-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v8, v6

    :goto_1
    if-eqz v8, :cond_4

    sget-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String;

    :goto_2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_5

    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String;

    :goto_3
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_6

    sget-object v2, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String;

    :goto_4
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ClipDescription;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_7

    sget-object v3, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String;

    :goto_5
    :try_start_3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_8

    sget-object v4, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String;

    :goto_6
    :try_start_4
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    if-eqz v8, :cond_9

    sget-object v4, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String;

    :goto_7
    :try_start_5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    new-instance v8, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v8, v1, v2, v3}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    invoke-interface {p2, v8, v9, v4}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    :goto_8
    if-eqz v0, :cond_2

    if-eqz v2, :cond_b

    move v1, v5

    :goto_9
    invoke-virtual {v0, v1, v7}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    move v6, v2

    goto :goto_0

    :cond_3
    sget-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v5

    goto :goto_1

    :cond_4
    sget-object v0, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v1, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    goto :goto_3

    :cond_6
    sget-object v2, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    goto :goto_4

    :cond_7
    sget-object v3, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    goto :goto_5

    :cond_8
    sget-object v4, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    goto :goto_6

    :cond_9
    sget-object v4, Landroidx/core/view/inputmethod/InputConnectionCompat;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_a
    if-eqz v1, :cond_a

    invoke-virtual {v1, v6, v7}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_a
    throw v0

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_a

    :cond_b
    move v1, v6

    goto :goto_9

    :cond_c
    move v2, v6

    goto :goto_8
.end method
