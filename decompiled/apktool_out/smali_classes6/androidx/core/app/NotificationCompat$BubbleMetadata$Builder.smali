.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4731f9"

    const/16 v3, 0x2e76

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "2fb062"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x42t
        0x51t
        0x53t
        0xat
        0x5ct
        0x47t
        0x17t
        0x41t
        0x54t
        0x17t
        0x4ct
        0x5dt
        0x45t
        0x56t
        0x11t
        0x8t
        0x56t
        0x5at
        0x1at
        0x5dt
        0x44t
        0xat
        0x55t
        0x14t
        0x5et
        0x50t
        0x5et
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x13t
        0x0t
        0x52t
        0x5at
        0x57t
        0x12t
        0x14t
        0x7t
        0x41t
        0x43t
        0x5bt
        0x40t
        0x3t
        0x11t
        0x10t
        0x58t
        0x5dt
        0x5ct
        0x4bt
        0xct
        0x45t
        0x5at
        0x5et
        0x12t
        0x16t
        0x7t
        0x5et
        0x52t
        0x5bt
        0x5ct
        0x1t
        0x42t
        0x59t
        0x58t
        0x46t
        0x57t
        0x8t
        0x16t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e694e5"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x27t
        0x43t
        0x5bt
        0x56t
        0x9t
        0x50t
        0x45t
        0x44t
        0x5ct
        0x45t
        0x10t
        0x5ct
        0x17t
        0x53t
        0x4at
        0x14t
        0x4t
        0x15t
        0xbt
        0x59t
        0x57t
        0x19t
        0xbt
        0x40t
        0x9t
        0x5at
        0x19t
        0x47t
        0xdt
        0x5at
        0x17t
        0x42t
        0x5at
        0x41t
        0x11t
        0x15t
        0xct
        0x52t
    .end array-data
.end method

.method private setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public build()Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 9

    iget-object v7, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    :cond_0
    if-nez v7, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget v4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget v6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$1;)V

    iget v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->setFlags(I)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0977b6"

    const v3, 0x4dc886c6    # 4.2053446E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c89cd2"

    const v3, -0x323432ad

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x4ct
        0x44t
        0x43t
        0x42t
        0x45t
        0x45t
        0x49t
        0x47t
        0x5bt
        0x1bt
        0x16t
        0x40t
        0x5ct
        0x59t
        0x53t
        0xbt
        0x58t
        0x57t
        0x19t
        0x5et
        0x59t
        0x16t
        0x53t
        0x5et
        0x4dt
        0x17t
        0x58t
        0x10t
        0x16t
        0x43t
        0x51t
        0x58t
        0x45t
        0x16t
        0x55t
        0x45t
        0x4dt
        0x17t
        0x43t
        0xdt
        0x16t
        0x52t
        0x4ct
        0x55t
        0x55t
        0xet
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x2et
        0x4dt
        0x4at
        0x17t
        0x44t
        0x41t
        0x16t
        0x48t
        0x49t
        0xft
        0x1dt
        0x12t
        0x2t
        0x56t
        0x19t
        0xat
        0x7t
        0x5dt
        0xdt
        0x18t
        0x56t
        0x11t
        0x44t
        0x41t
        0xbt
        0x57t
        0x4bt
        0x17t
        0x7t
        0x47t
        0x17t
        0x18t
        0x5ft
        0xct
        0x16t
        0x12t
        0x17t
        0x50t
        0x5ct
        0x43t
        0x6t
        0x47t
        0x1t
        0x5at
        0x55t
        0x6t
    .end array-data
.end method

.method public setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    return-object p0
.end method

.method public setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "da1142"

    const-wide v4, 0x41aab4a1da000000L    # 2.24022765E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x74

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b71ae6"

    const-wide v4, -0x3e293c9899000000L    # -1.527618972E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x26t
        0x14t
        0x53t
        0x53t
        0x58t
        0x57t
        0x17t
        0x41t
        0x43t
        0x54t
        0x45t
        0x47t
        0xdt
        0x13t
        0x54t
        0x11t
        0x5at
        0x5dt
        0xat
        0x4ct
        0x5ft
        0x44t
        0x58t
        0x5et
        0x44t
        0x8t
        0x52t
        0x5et
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x45t
        0x54t
        0x0t
        0x11t
        0x53t
        0x6t
        0x17t
        0x50t
        0x12t
        0x45t
        0x57t
        0x42t
        0x44t
        0x59t
        0xet
        0x17t
        0x42t
        0x1t
        0x42t
        0x45t
        0x41t
        0x7t
        0x43t
        0x0t
        0x55t
        0x5dt
        0x4t
        0x49t
        0x16t
        0x1t
        0x56t
        0x5ft
        0xft
        0xat
        0x42t
        0x42t
        0x44t
        0x54t
        0x15t
        0x45t
        0x57t
        0xct
        0x17t
        0x78t
        0x2t
        0xat
        0x58t
        0x4ct
        0x17t
        0x72t
        0xet
        0xbt
        0x45t
        0xbt
        0x53t
        0x54t
        0x13t
        0x45t
        0x43t
        0x11t
        0x5et
        0x5ft
        0x6t
        0x45t
        0x74t
        0x17t
        0x55t
        0x53t
        0xdt
        0x0t
        0x7bt
        0x7t
        0x43t
        0x50t
        0x5t
        0x4t
        0x42t
        0x3t
        0x19t
        0x73t
        0x14t
        0xct
        0x5at
        0x6t
        0x52t
        0x43t
        0x49t
        0x35t
        0x53t
        0xct
        0x53t
        0x58t
        0xft
        0x2t
        0x7ft
        0xct
        0x43t
        0x54t
        0xft
        0x11t
        0x1at
        0x2bt
        0x54t
        0x5et
        0xft
        0x4ct
        0x16t
        0xbt
        0x59t
        0x42t
        0x15t
        0x0t
        0x57t
        0x6t
        0x19t
    .end array-data
.end method

.method public setIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 5

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "150de0"

    const v3, -0x313ad005    # -1.654128E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x7c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d5eb72"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x73t
        0x40t
        0x52t
        0x6t
        0x9t
        0x55t
        0x11t
        0x47t
        0x55t
        0x15t
        0x10t
        0x59t
        0x43t
        0x50t
        0x43t
        0x44t
        0xbt
        0x5ft
        0x5ft
        0x18t
        0x5et
        0x11t
        0x9t
        0x5ct
        0x11t
        0x45t
        0x55t
        0xat
        0x1t
        0x59t
        0x5ft
        0x52t
        0x10t
        0xdt
        0xbt
        0x44t
        0x54t
        0x5bt
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x47t
        0x0t
        0x3t
        0x43t
        0x57t
        0x0t
        0x15t
        0x4t
        0x11t
        0x17t
        0x53t
        0x44t
        0x46t
        0xdt
        0xdt
        0x45t
        0x46t
        0x7t
        0x40t
        0x11t
        0x42t
        0x55t
        0x47t
        0x6t
        0x57t
        0x9t
        0x7t
        0x1bt
        0x12t
        0x7t
        0x54t
        0xbt
        0xct
        0x58t
        0x46t
        0x44t
        0x46t
        0x0t
        0x16t
        0x17t
        0x53t
        0x44t
        0x65t
        0x0t
        0xct
        0x53t
        0x5bt
        0xat
        0x52t
        0x2ct
        0xct
        0x43t
        0x57t
        0xat
        0x41t
        0x4bt
        0x42t
        0x74t
        0x5dt
        0xat
        0x46t
        0xct
        0x6t
        0x52t
        0x40t
        0x44t
        0x40t
        0x16t
        0xbt
        0x59t
        0x55t
        0x44t
        0x77t
        0x10t
        0x0t
        0x55t
        0x5et
        0x1t
        0x78t
        0x0t
        0x16t
        0x56t
        0x56t
        0x5t
        0x41t
        0x4t
        0x4ct
        0x75t
        0x47t
        0xdt
        0x59t
        0x1t
        0x7t
        0x45t
        0x1at
        0x34t
        0x50t
        0xbt
        0x6t
        0x5et
        0x5ct
        0x3t
        0x7ct
        0xbt
        0x16t
        0x52t
        0x5ct
        0x10t
        0x19t
        0x2ct
        0x1t
        0x58t
        0x5ct
        0x4dt
        0x15t
        0xct
        0xct
        0x44t
        0x46t
        0x1t
        0x54t
        0x1t
        0x4ct
    .end array-data
.end method

.method public setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    return-object p0
.end method
