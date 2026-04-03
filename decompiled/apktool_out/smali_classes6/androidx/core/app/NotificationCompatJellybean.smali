.class Landroidx/core/app/NotificationCompatJellybean;
.super Ljava/lang/Object;


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String;

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

.field private static final KEY_ACTION_INTENT:Ljava/lang/String;

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String;

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String;

.field private static final KEY_CHOICES:Ljava/lang/String;

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

.field private static final KEY_EXTRAS:Ljava/lang/String;

.field private static final KEY_ICON:Ljava/lang/String;

.field private static final KEY_LABEL:Ljava/lang/String;

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String;

.field private static final KEY_RESULT_KEY:Ljava/lang/String;

.field private static final KEY_SEMANTIC_ACTION:Ljava/lang/String;

.field private static final KEY_SHOWS_USER_INTERFACE:Ljava/lang/String;

.field private static final KEY_TITLE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x5

    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2a8b37"

    const v2, -0x323128df

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4291da"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_2

    const-string v1, "5c3215"

    const-wide v2, -0x3e34d7721d000000L    # -9.1128519E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ACTION_INTENT:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "e63b40"

    const v2, -0x314f42b3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ALLOWED_DATA_TYPES:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "872d83"

    const-wide/32 v2, 0x25fb94c1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "84b03d"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_CHOICES:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "09397b"

    const/16 v2, -0x116b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "7e7b45"

    const v2, -0x31ad4cda

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "0f3363"

    const v2, -0x317b22cd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ICON:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_9

    const-string v1, "ade637"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_LABEL:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_a

    const-string v1, "bb0afe"

    const v2, -0x31cf1ddf    # -7.419024E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_REMOTE_INPUTS:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "468672"

    const-wide v2, -0x3e4d768e00000000L    # -3.10997504E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_RESULT_KEY:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "86b163"

    const-wide v2, 0x419f0a40c4000000L    # 1.30191409E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_SEMANTIC_ACTION:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_d

    const-string v1, "f0b3d6"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_SHOWS_USER_INTERFACE:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_e

    const-string v1, "9d76d8"

    const v2, 0x4ead40a4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_TITLE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_f

    const-string v1, "c29e64"

    const-wide v2, -0x3e3b5b55dc000000L    # -6.9267156E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x53t
        0xft
        0x5ct
        0x10t
        0x5ct
        0x5et
        0x56t
        0x4ft
        0x4bt
        0x17t
        0x43t
        0x47t
        0x5dt
        0x13t
        0x4ct
        0x4ct
        0x52t
        0x5bt
        0x5et
        0xet
        0x4ft
        0x25t
        0x56t
        0x59t
        0x57t
        0x13t
        0x59t
        0x16t
        0x56t
        0x53t
        0x60t
        0x4t
        0x48t
        0xet
        0x5at
        0x52t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x5ct
        0x5dt
        0x43t
        0xbt
        0x8t
        0x50t
        0x1ct
        0x4at
        0x44t
        0x14t
        0x11t
        0x5bt
        0x40t
        0x4dt
        0x1ft
        0x0t
        0x0t
        0x40t
        0x53t
        0x6bt
        0x54t
        0x9t
        0xet
        0x40t
        0x57t
        0x70t
        0x5ft
        0x14t
        0x14t
        0x40t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x54t
        0x0t
        0x47t
        0x5bt
        0x5et
        0x5bt
        0x7ct
        0xdt
        0x47t
        0x57t
        0x5ft
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x4t
        0x5at
        0x5ft
        0xdt
        0x43t
        0x55t
        0x1t
        0x72t
        0x52t
        0x16t
        0x55t
        0x64t
        0x1ct
        0x46t
        0x56t
        0x11t
    .end array-data

    :array_4
    .array-data 1
        0x59t
        0x5bt
        0x5et
        0xbt
        0x4ft
        0x75t
        0x4at
        0x52t
        0x57t
        0x22t
        0x57t
        0x41t
        0x55t
        0x7et
        0x5ct
        0x14t
        0x4dt
        0x47t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5bt
        0x5ct
        0xdt
        0x59t
        0x50t
        0x1t
        0x4bt
    .end array-data

    :array_6
    .array-data 1
        0x54t
        0x58t
        0x47t
        0x58t
        0x78t
        0xct
        0x5ct
        0x40t
        0x61t
        0x5ct
        0x5at
        0xdt
        0x44t
        0x5ct
        0x7at
        0x57t
        0x47t
        0x17t
        0x44t
        0x4at
    .end array-data

    :array_7
    .array-data 1
        0x52t
        0x1dt
        0x43t
        0x10t
        0x55t
        0x46t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x59t
        0x5t
        0x5ct
        0x5dt
    .end array-data

    :array_9
    .array-data 1
        0xdt
        0x5t
        0x7t
        0x53t
        0x5ft
    .end array-data

    nop

    :array_a
    .array-data 1
        0x10t
        0x7t
        0x5dt
        0xet
        0x12t
        0x0t
        0x2bt
        0xct
        0x40t
        0x14t
        0x12t
        0x16t
    .end array-data

    :array_b
    .array-data 1
        0x46t
        0x53t
        0x4bt
        0x43t
        0x5bt
        0x46t
        0x7ft
        0x53t
        0x41t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x4bt
        0x53t
        0xft
        0x50t
        0x58t
        0x47t
        0x51t
        0x55t
        0x23t
        0x52t
        0x42t
        0x5at
        0x57t
        0x58t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x15t
        0x58t
        0xdt
        0x44t
        0x17t
        0x63t
        0x15t
        0x55t
        0x10t
        0x7at
        0xat
        0x42t
        0x3t
        0x42t
        0x4t
        0x52t
        0x7t
        0x53t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x4dt
        0xdt
        0x43t
        0x5at
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x2dt
        0x5dt
        0x4dt
        0xct
        0x50t
        0x5dt
        0x0t
        0x53t
        0x4dt
        0xct
        0x59t
        0x5at
        0x20t
        0x5dt
        0x54t
        0x15t
        0x57t
        0x40t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .locals 6

    const/16 v4, 0x25

    const/4 v5, 0x1

    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b4a068"

    const/16 v2, -0x61aa

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->KEY_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->KEY_ACTION_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    const-class v0, Landroid/app/Notification;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d859f8"

    const/16 v3, 0x6baa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const-string v3, "455675"

    const/16 v4, 0x270d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v5, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    new-array v2, v4, [B

    fill-array-data v2, :array_3

    const-string v3, "14c0b7"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v5, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x3t
        0x5at
        0x5t
        0x42t
        0x59t
        0x51t
        0x6t
        0x1at
        0x0t
        0x40t
        0x46t
        0x16t
        0x2ct
        0x5bt
        0x15t
        0x59t
        0x50t
        0x51t
        0x1t
        0x55t
        0x15t
        0x59t
        0x59t
        0x56t
        0x46t
        0x75t
        0x2t
        0x44t
        0x5ft
        0x57t
        0xct
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x5bt
        0x41t
        0x50t
        0x9t
        0x56t
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x61t
        0x5bt
        0x54t
        0x54t
        0x5bt
        0x50t
        0x14t
        0x41t
        0x5at
        0x16t
        0x56t
        0x56t
        0x57t
        0x50t
        0x46t
        0x45t
        0x17t
        0x5bt
        0x5bt
        0x41t
        0x5ct
        0x50t
        0x5et
        0x56t
        0x55t
        0x41t
        0x5ct
        0x59t
        0x59t
        0x15t
        0x55t
        0x56t
        0x41t
        0x5ft
        0x58t
        0x5bt
        0x47t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0x5at
        0x2t
        0x52t
        0xet
        0x52t
        0x11t
        0x40t
        0xct
        0x10t
        0x3t
        0x54t
        0x52t
        0x51t
        0x10t
        0x43t
        0x42t
        0x59t
        0x5et
        0x40t
        0xat
        0x56t
        0xbt
        0x54t
        0x50t
        0x40t
        0xat
        0x5ft
        0xct
        0x17t
        0x50t
        0x57t
        0x17t
        0x59t
        0xdt
        0x59t
        0x42t
    .end array-data
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;
    .locals 8

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ALLOWED_DATA_TYPES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/app/RemoteInput;

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->KEY_RESULT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->KEY_LABEL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->KEY_CHOICES:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    return-object v0
.end method

.method private static fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroidx/core/app/RemoteInput;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 8

    const/4 v2, 0x0

    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    :try_start_1
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v5, "202bf2"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    :goto_0
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v6, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v5, v0, v1, v3}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v4

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    const/16 v3, 0x25

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v5, "bf593c"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    :cond_0
    monitor-exit v4

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    move-object v3, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x53t
        0x5et
        0x56t
        0x10t
        0x9t
        0x5bt
        0x56t
        0x1et
        0x41t
        0x17t
        0x16t
        0x42t
        0x5dt
        0x42t
        0x46t
        0x4ct
        0x7t
        0x51t
        0x46t
        0x59t
        0x5dt
        0xct
        0x23t
        0x4at
        0x46t
        0x42t
        0x53t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0x8t
        0x54t
        0x5bt
        0x5ft
        0x6t
        0x42t
        0x12t
        0x5at
        0x19t
        0x52t
        0x0t
        0x1t
        0x3t
        0x46t
        0x4at
        0x13t
        0xdt
        0xdt
        0x12t
        0x5ct
        0x5ft
        0x5at
        0x0t
        0x3t
        0x12t
        0x5ct
        0x56t
        0x5dt
        0x43t
        0x3t
        0x5t
        0x41t
        0x50t
        0x5ct
        0xdt
        0x11t
    .end array-data
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 2

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    :goto_0
    monitor-exit v1

    return v0

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

.method static getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .locals 11

    const/4 v10, 0x0

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :goto_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->KEY_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->KEY_ACTION_INTENT:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroidx/core/app/NotificationCompatJellybean;->KEY_REMOTE_INPUTS:Ljava/lang/String;

    invoke-static {p0, v5}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v5

    sget-object v6, Landroidx/core/app/NotificationCompatJellybean;->KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

    invoke-static {p0, v6}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v6

    sget-object v8, Landroidx/core/app/NotificationCompatJellybean;->KEY_SEMANTIC_ACTION:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroidx/core/app/NotificationCompatJellybean;->KEY_SHOWS_USER_INTERFACE:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-direct/range {v0 .. v10}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V

    return-object v0

    :cond_0
    move v7, v10

    goto :goto_0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroidx/core/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    const/16 v4, 0x25

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "cb3202"

    const-wide v6, -0x3e249a4f80c00000L    # -1.838596605E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x36t
        0xct
        0x52t
        0x50t
        0x5ct
        0x57t
        0x43t
        0x16t
        0x5ct
        0x12t
        0x51t
        0x51t
        0x0t
        0x7t
        0x40t
        0x41t
        0x10t
        0x5ct
        0xct
        0x16t
        0x5at
        0x54t
        0x59t
        0x51t
        0x2t
        0x16t
        0x5at
        0x5dt
        0x5et
        0x12t
        0x2t
        0x1t
        0x47t
        0x5bt
        0x5ft
        0x5ct
        0x10t
    .end array-data
.end method

.method private static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, [Landroid/os/Bundle;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    check-cast v0, [Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    const-class v2, [Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method static getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v0

    :goto_0
    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_TITLE:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ACTION_INTENT:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_REMOTE_INPUTS:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_SHOWS_USER_INTERFACE:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_SEMANTIC_ACTION:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 8

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    if-eqz v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    const-class v0, Landroid/app/Notification;

    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "9d767b"

    const-wide/32 v6, 0x499bc402

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    :cond_2
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    const/16 v4, 0x24

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "3510d4"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->TAG:Ljava/lang/String;

    const/16 v4, 0x24

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "a3cfcc"

    const v6, -0x31e5143d

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :array_0
    .array-data 1
        0x77t
        0xbt
        0x43t
        0x5ft
        0x51t
        0xbt
        0x5at
        0x5t
        0x43t
        0x5ft
        0x58t
        0xct
        0x17t
        0x1t
        0x4ft
        0x42t
        0x45t
        0x3t
        0x4at
        0x44t
        0x51t
        0x5ft
        0x52t
        0xet
        0x5dt
        0x44t
        0x5et
        0x45t
        0x17t
        0xct
        0x56t
        0x10t
        0x17t
        0x59t
        0x51t
        0x42t
        0x4dt
        0x1dt
        0x47t
        0x53t
        0x17t
        0x20t
        0x4ct
        0xat
        0x53t
        0x5at
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x5bt
        0x50t
        0x52t
        0x8t
        0x51t
        0x13t
        0x41t
        0x5et
        0x10t
        0x5t
        0x57t
        0x50t
        0x50t
        0x42t
        0x43t
        0x44t
        0x5at
        0x5ct
        0x41t
        0x58t
        0x56t
        0xdt
        0x57t
        0x52t
        0x41t
        0x58t
        0x5ft
        0xat
        0x14t
        0x56t
        0x4dt
        0x45t
        0x42t
        0x5t
        0x47t
    .end array-data

    :array_2
    .array-data 1
        0x34t
        0x5dt
        0x2t
        0x4t
        0xft
        0x6t
        0x41t
        0x47t
        0xct
        0x46t
        0x2t
        0x0t
        0x2t
        0x56t
        0x10t
        0x15t
        0x43t
        0xdt
        0xet
        0x47t
        0xat
        0x0t
        0xat
        0x0t
        0x0t
        0x47t
        0xat
        0x9t
        0xdt
        0x43t
        0x4t
        0x4bt
        0x17t
        0x14t
        0x2t
        0x10t
    .end array-data
.end method

.method public static readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4e47a6"

    invoke-static {v0, v1, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v5

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

    invoke-static {p3, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v6

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v10, v8

    invoke-direct/range {v0 .. v10}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V

    return-object v0

    :cond_0
    move v7, v8

    move-object v5, v6

    goto :goto_0

    :array_0
    .array-data 1
        0x55t
        0xbt
        0x50t
        0x45t
        0xet
        0x5ft
        0x50t
        0x4bt
        0x47t
        0x42t
        0x11t
        0x46t
        0x5bt
        0x17t
        0x40t
        0x19t
        0x13t
        0x53t
        0x59t
        0xat
        0x40t
        0x52t
        0x28t
        0x58t
        0x44t
        0x10t
        0x40t
        0x44t
    .end array-data
.end method

.method private static toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_RESULT_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_LABEL:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_CHOICES:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->KEY_ALLOWED_DATA_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-object v1
.end method

.method private static toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f17993"

    const-wide v4, -0x3e3288f44d800000L    # -9.88682085E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x7t
        0x5ft
        0x53t
        0x4bt
        0x56t
        0x5at
        0x2t
        0x1ft
        0x44t
        0x4ct
        0x49t
        0x43t
        0x9t
        0x43t
        0x43t
        0x17t
        0x4bt
        0x56t
        0xbt
        0x5et
        0x43t
        0x5ct
        0x70t
        0x5dt
        0x16t
        0x44t
        0x43t
        0x4at
    .end array-data
.end method
