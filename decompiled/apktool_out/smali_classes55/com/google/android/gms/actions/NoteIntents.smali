.class public Lcom/google/android/gms/actions/NoteIntents;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_APPEND_NOTE:Ljava/lang/String;

.field public static final ACTION_CREATE_NOTE:Ljava/lang/String;

.field public static final ACTION_DELETE_NOTE:Ljava/lang/String;

.field public static final EXTRA_NAME:Ljava/lang/String;

.field public static final EXTRA_NOTE_QUERY:Ljava/lang/String;

.field public static final EXTRA_TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x29

    const/4 v4, 0x0

    const/16 v3, 0x2a

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "043659"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->ACTION_APPEND_NOTE:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "1f8169"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->ACTION_CREATE_NOTE:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "5ba25b"

    const-wide/32 v2, -0x51ecc1d6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->ACTION_DELETE_NOTE:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "9b70eb"

    const-wide/32 v2, 0x3d2aa698

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->EXTRA_NAME:Ljava/lang/String;

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "91de15"

    const/16 v2, -0x245c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->EXTRA_NOTE_QUERY:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v1, "69864d"

    const v2, 0x4e03a0e6    # 5.5209E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/NoteIntents;->EXTRA_TEXT:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x53t
        0x5bt
        0x5et
        0x18t
        0x52t
        0x56t
        0x5ft
        0x53t
        0x5ft
        0x53t
        0x1bt
        0x58t
        0x5et
        0x50t
        0x41t
        0x59t
        0x5ct
        0x5dt
        0x1et
        0x53t
        0x5et
        0x45t
        0x1bt
        0x58t
        0x53t
        0x40t
        0x5at
        0x59t
        0x5bt
        0x4at
        0x1et
        0x75t
        0x63t
        0x66t
        0x70t
        0x77t
        0x74t
        0x6bt
        0x7dt
        0x79t
        0x61t
        0x7ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x9t
        0x55t
        0x1ft
        0x51t
        0x56t
        0x5et
        0x1t
        0x54t
        0x54t
        0x18t
        0x58t
        0x5ft
        0x2t
        0x4at
        0x5et
        0x5ft
        0x5dt
        0x1ft
        0x1t
        0x55t
        0x42t
        0x18t
        0x58t
        0x52t
        0x12t
        0x51t
        0x5et
        0x58t
        0x4at
        0x1ft
        0x25t
        0x6at
        0x74t
        0x77t
        0x6dt
        0x74t
        0x39t
        0x76t
        0x7et
        0x62t
        0x7ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x56t
        0xdt
        0xct
        0x1ct
        0x52t
        0xdt
        0x5at
        0x5t
        0xdt
        0x57t
        0x1bt
        0x3t
        0x5bt
        0x6t
        0x13t
        0x5dt
        0x5ct
        0x6t
        0x1bt
        0x5t
        0xct
        0x41t
        0x1bt
        0x3t
        0x56t
        0x16t
        0x8t
        0x5dt
        0x5bt
        0x11t
        0x1bt
        0x26t
        0x24t
        0x7et
        0x70t
        0x36t
        0x70t
        0x3dt
        0x2ft
        0x7dt
        0x61t
        0x27t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5at
        0xdt
        0x5at
        0x1et
        0x2t
        0xdt
        0x56t
        0x5t
        0x5bt
        0x55t
        0x4bt
        0x3t
        0x57t
        0x6t
        0x45t
        0x5ft
        0xct
        0x6t
        0x17t
        0x5t
        0x5at
        0x43t
        0x4bt
        0x3t
        0x5at
        0x16t
        0x5et
        0x5ft
        0xbt
        0x11t
        0x17t
        0x7t
        0x4ft
        0x44t
        0x17t
        0x3t
        0x17t
        0x2ct
        0x76t
        0x7dt
        0x20t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5at
        0x5et
        0x9t
        0x4bt
        0x56t
        0x5at
        0x56t
        0x56t
        0x8t
        0x0t
        0x1ft
        0x54t
        0x57t
        0x55t
        0x16t
        0xat
        0x58t
        0x51t
        0x17t
        0x56t
        0x9t
        0x16t
        0x1ft
        0x54t
        0x5at
        0x45t
        0xdt
        0xat
        0x5ft
        0x46t
        0x17t
        0x54t
        0x1ct
        0x11t
        0x43t
        0x54t
        0x17t
        0x7ft
        0x2bt
        0x31t
        0x74t
        0x6at
        0x68t
        0x64t
        0x21t
        0x37t
        0x68t
    .end array-data

    :array_5
    .array-data 1
        0x55t
        0x56t
        0x55t
        0x18t
        0x53t
        0xbt
        0x59t
        0x5et
        0x54t
        0x53t
        0x1at
        0x5t
        0x58t
        0x5dt
        0x4at
        0x59t
        0x5dt
        0x0t
        0x18t
        0x5et
        0x55t
        0x45t
        0x1at
        0x5t
        0x55t
        0x4dt
        0x51t
        0x59t
        0x5at
        0x17t
        0x18t
        0x5ct
        0x40t
        0x42t
        0x46t
        0x5t
        0x18t
        0x6dt
        0x7dt
        0x6et
        0x60t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
