.class public Lcom/google/android/gms/actions/ItemListIntents;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ACCEPT_ITEM:Ljava/lang/String;

.field public static final ACTION_APPEND_ITEM_LIST:Ljava/lang/String;

.field public static final ACTION_CREATE_ITEM_LIST:Ljava/lang/String;

.field public static final ACTION_DELETE_ITEM:Ljava/lang/String;

.field public static final ACTION_DELETE_ITEM_LIST:Ljava/lang/String;

.field public static final ACTION_REJECT_ITEM:Ljava/lang/String;

.field public static final EXTRA_ITEM_NAME:Ljava/lang/String;

.field public static final EXTRA_ITEM_NAMES:Ljava/lang/String;

.field public static final EXTRA_ITEM_QUERY:Ljava/lang/String;

.field public static final EXTRA_LIST_NAME:Ljava/lang/String;

.field public static final EXTRA_LIST_QUERY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x2e

    const/4 v6, 0x0

    const/16 v5, 0x2a

    const/4 v3, 0x1

    const/16 v4, 0x2f

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "1a8917"

    const/16 v2, -0x7423

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->ACTION_ACCEPT_ITEM:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "4e820a"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->ACTION_APPEND_ITEM_LIST:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "b40785"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->ACTION_CREATE_ITEM_LIST:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "661c2a"

    invoke-static {v0, v1, v6, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->ACTION_DELETE_ITEM:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v1, "c8a2ef"

    const v2, 0x4dcb0bf5    # 4.258198E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->ACTION_DELETE_ITEM_LIST:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v1, "5b7e73"

    const v2, -0x31665235

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->ACTION_REJECT_ITEM:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_6

    const-string v1, "d05a92"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->EXTRA_ITEM_NAME:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_7

    const-string v1, "bc49c6"

    const v2, 0x4edff7fa    # 1.8787853E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->EXTRA_ITEM_NAMES:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_8

    const-string v1, "3b94a3"

    const-wide/32 v2, -0xcd99fa7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->EXTRA_ITEM_QUERY:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_9

    const-string v1, "74ee35"

    const-wide/32 v2, -0x65a226ad

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->EXTRA_LIST_NAME:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_a

    const-string v1, "6b8504"

    const v2, 0x4ec9a994

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ItemListIntents;->EXTRA_LIST_QUERY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x52t
        0xet
        0x55t
        0x17t
        0x56t
        0x58t
        0x5et
        0x6t
        0x54t
        0x5ct
        0x1ft
        0x56t
        0x5ft
        0x5t
        0x4at
        0x56t
        0x58t
        0x53t
        0x1ft
        0x6t
        0x55t
        0x4at
        0x1ft
        0x56t
        0x52t
        0x15t
        0x51t
        0x56t
        0x5ft
        0x44t
        0x1ft
        0x20t
        0x7bt
        0x7at
        0x74t
        0x67t
        0x65t
        0x3et
        0x71t
        0x6dt
        0x74t
        0x7at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0xat
        0x55t
        0x1ct
        0x57t
        0xet
        0x5bt
        0x2t
        0x54t
        0x57t
        0x1et
        0x0t
        0x5at
        0x1t
        0x4at
        0x5dt
        0x59t
        0x5t
        0x1at
        0x2t
        0x55t
        0x41t
        0x1et
        0x0t
        0x57t
        0x11t
        0x51t
        0x5dt
        0x5et
        0x12t
        0x1at
        0x24t
        0x68t
        0x62t
        0x75t
        0x2ft
        0x70t
        0x3at
        0x71t
        0x66t
        0x75t
        0x2ct
        0x6bt
        0x29t
        0x71t
        0x61t
        0x64t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x5bt
        0x5dt
        0x19t
        0x5ft
        0x5at
        0xdt
        0x53t
        0x5ct
        0x52t
        0x16t
        0x54t
        0xct
        0x50t
        0x42t
        0x58t
        0x51t
        0x51t
        0x4ct
        0x53t
        0x5dt
        0x44t
        0x16t
        0x54t
        0x1t
        0x40t
        0x59t
        0x58t
        0x56t
        0x46t
        0x4ct
        0x77t
        0x62t
        0x72t
        0x79t
        0x61t
        0x27t
        0x6bt
        0x79t
        0x63t
        0x7dt
        0x78t
        0x3dt
        0x78t
        0x79t
        0x64t
        0x6ct
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0x59t
        0x5ct
        0x4dt
        0x55t
        0xet
        0x59t
        0x51t
        0x5dt
        0x6t
        0x1ct
        0x0t
        0x58t
        0x52t
        0x43t
        0xct
        0x5bt
        0x5t
        0x18t
        0x51t
        0x5ct
        0x10t
        0x1ct
        0x0t
        0x55t
        0x42t
        0x58t
        0xct
        0x5ct
        0x12t
        0x18t
        0x72t
        0x74t
        0x2ft
        0x77t
        0x35t
        0x73t
        0x69t
        0x78t
        0x37t
        0x77t
        0x2ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x57t
        0xct
        0x1ct
        0x2t
        0x9t
        0xct
        0x5ft
        0xdt
        0x57t
        0x4bt
        0x7t
        0xdt
        0x5ct
        0x13t
        0x5dt
        0xct
        0x2t
        0x4dt
        0x5ft
        0xct
        0x41t
        0x4bt
        0x7t
        0x0t
        0x4ct
        0x8t
        0x5dt
        0xbt
        0x15t
        0x4dt
        0x7ct
        0x24t
        0x7et
        0x20t
        0x32t
        0x26t
        0x67t
        0x28t
        0x66t
        0x20t
        0x2bt
        0x3ct
        0x74t
        0x28t
        0x61t
        0x31t
    .end array-data

    :array_5
    .array-data 1
        0x56t
        0xdt
        0x5at
        0x4bt
        0x50t
        0x5ct
        0x5at
        0x5t
        0x5bt
        0x0t
        0x19t
        0x52t
        0x5bt
        0x6t
        0x45t
        0xat
        0x5et
        0x57t
        0x1bt
        0x5t
        0x5at
        0x16t
        0x19t
        0x52t
        0x56t
        0x16t
        0x5et
        0xat
        0x59t
        0x40t
        0x1bt
        0x30t
        0x72t
        0x2ft
        0x72t
        0x70t
        0x61t
        0x3dt
        0x7et
        0x31t
        0x72t
        0x7et
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7t
        0x5ft
        0x58t
        0x4ft
        0x5et
        0x5dt
        0xbt
        0x57t
        0x59t
        0x4t
        0x17t
        0x53t
        0xat
        0x54t
        0x47t
        0xet
        0x50t
        0x56t
        0x4at
        0x57t
        0x58t
        0x12t
        0x17t
        0x53t
        0x7t
        0x44t
        0x5ct
        0xet
        0x57t
        0x41t
        0x4at
        0x55t
        0x4dt
        0x15t
        0x4bt
        0x53t
        0x4at
        0x79t
        0x61t
        0x24t
        0x74t
        0x6dt
        0x2at
        0x71t
        0x78t
        0x24t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0xct
        0x59t
        0x17t
        0x4t
        0x59t
        0xdt
        0x4t
        0x58t
        0x5ct
        0x4dt
        0x57t
        0xct
        0x7t
        0x46t
        0x56t
        0xat
        0x52t
        0x4ct
        0x4t
        0x59t
        0x4at
        0x4dt
        0x57t
        0x1t
        0x17t
        0x5dt
        0x56t
        0xdt
        0x45t
        0x4ct
        0x6t
        0x4ct
        0x4dt
        0x11t
        0x57t
        0x4ct
        0x2at
        0x60t
        0x7ct
        0x2et
        0x69t
        0x2ct
        0x22t
        0x79t
        0x7ct
        0x30t
    .end array-data

    :array_8
    .array-data 1
        0x50t
        0xdt
        0x54t
        0x1at
        0x6t
        0x5ct
        0x5ct
        0x5t
        0x55t
        0x51t
        0x4ft
        0x52t
        0x5dt
        0x6t
        0x4bt
        0x5bt
        0x8t
        0x57t
        0x1dt
        0x5t
        0x54t
        0x47t
        0x4ft
        0x52t
        0x50t
        0x16t
        0x50t
        0x5bt
        0xft
        0x40t
        0x1dt
        0x7t
        0x41t
        0x40t
        0x13t
        0x52t
        0x1dt
        0x2bt
        0x6dt
        0x71t
        0x2ct
        0x6ct
        0x62t
        0x37t
        0x7ct
        0x66t
        0x38t
    .end array-data

    :array_9
    .array-data 1
        0x54t
        0x5bt
        0x8t
        0x4bt
        0x54t
        0x5at
        0x58t
        0x53t
        0x9t
        0x0t
        0x1dt
        0x54t
        0x59t
        0x50t
        0x17t
        0xat
        0x5at
        0x51t
        0x19t
        0x53t
        0x8t
        0x16t
        0x1dt
        0x54t
        0x54t
        0x40t
        0xct
        0xat
        0x5dt
        0x46t
        0x19t
        0x51t
        0x1dt
        0x11t
        0x41t
        0x54t
        0x19t
        0x78t
        0x2ct
        0x36t
        0x67t
        0x6at
        0x79t
        0x75t
        0x28t
        0x20t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x55t
        0xdt
        0x55t
        0x1bt
        0x57t
        0x5bt
        0x59t
        0x5t
        0x54t
        0x50t
        0x1et
        0x55t
        0x58t
        0x6t
        0x4at
        0x5at
        0x59t
        0x50t
        0x18t
        0x5t
        0x55t
        0x46t
        0x1et
        0x55t
        0x55t
        0x16t
        0x51t
        0x5at
        0x5et
        0x47t
        0x18t
        0x7t
        0x40t
        0x41t
        0x42t
        0x55t
        0x18t
        0x2et
        0x71t
        0x66t
        0x64t
        0x6bt
        0x67t
        0x37t
        0x7dt
        0x67t
        0x69t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
