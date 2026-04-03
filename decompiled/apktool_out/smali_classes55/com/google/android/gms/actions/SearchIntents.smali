.class public Lcom/google/android/gms/actions/SearchIntents;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_SEARCH:Ljava/lang/String;

.field public static final EXTRA_QUERY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0d5287"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/SearchIntents;->ACTION_SEARCH:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "fbd599"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/SearchIntents;->EXTRA_QUERY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x53t
        0xbt
        0x58t
        0x1ct
        0x5ft
        0x58t
        0x5ft
        0x3t
        0x59t
        0x57t
        0x16t
        0x56t
        0x5et
        0x0t
        0x47t
        0x5dt
        0x51t
        0x53t
        0x1et
        0x3t
        0x58t
        0x41t
        0x16t
        0x56t
        0x53t
        0x10t
        0x5ct
        0x5dt
        0x56t
        0x44t
        0x1et
        0x37t
        0x70t
        0x73t
        0x6at
        0x74t
        0x78t
        0x3bt
        0x74t
        0x71t
        0x6ct
        0x7et
        0x7ft
        0x2at
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x17t
        0x1t
        0x47t
        0x40t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
