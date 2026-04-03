.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;
    }
.end annotation


# static fields
.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;

.field private mShowBigPictureWhenCollapsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "22d732"

    const-wide v2, -0x3e2cbfcbd6400000L    # -1.291899047E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->TEMPLATE_CLASS_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x5ct
        0x0t
        0x45t
        0x5ct
        0x5bt
        0x56t
        0x4at
        0x4at
        0x54t
        0x5ct
        0x40t
        0x57t
        0x1ct
        0x5t
        0x47t
        0x43t
        0x1ct
        0x7ct
        0x5dt
        0x10t
        0x5et
        0x55t
        0x5bt
        0x51t
        0x53t
        0x10t
        0x5et
        0x5ct
        0x5ct
        0x71t
        0x5dt
        0x9t
        0x47t
        0x52t
        0x46t
        0x16t
        0x70t
        0xdt
        0x50t
        0x63t
        0x5bt
        0x51t
        0x46t
        0x11t
        0x45t
        0x56t
        0x61t
        0x46t
        0x4bt
        0x8t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private static asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    if-eqz p0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v2, :cond_3

    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;->setSummaryText(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->showBigPictureWhenCollapsed(Landroid/app/Notification$BigPictureStyle;Z)V

    :cond_2
    return-void

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    instance-of v2, p1, Landroidx/core/app/NotificationCompatBuilder;

    if-eqz v2, :cond_4

    check-cast p1, Landroidx/core/app/NotificationCompatBuilder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompatBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_4
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_6
    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    return-object p0

    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "89ffae"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c3f404"

    const-wide/32 v2, -0x2fd34246

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "1226b3"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0x57t
        0x2t
        0x14t
        0xet
        0xct
        0x5ct
        0x17t
        0xat
        0x7t
        0x13t
        0x2t
        0x5dt
        0x70t
        0x5t
        0x9t
        0xft
        0x4bt
        0x5at
        0x50t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x5dt
        0x2t
        0x46t
        0x5ft
        0x5dt
        0x7t
        0x1dt
        0x16t
        0x5dt
        0x53t
        0x40t
        0x16t
        0x41t
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x50t
        0x5ct
        0x56t
        0x44t
        0xdt
        0x5at
        0x55t
        0x1ct
        0x41t
        0x5et
        0xdt
        0x44t
        0x73t
        0x5bt
        0x55t
        0x66t
        0xbt
        0x50t
        0x45t
        0x47t
        0x40t
        0x53t
        0x35t
        0x5bt
        0x54t
        0x5ct
        0x71t
        0x59t
        0xet
        0x5ft
        0x50t
        0x42t
        0x41t
        0x53t
        0x6t
    .end array-data
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->TEMPLATE_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x15

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "abe60f"

    const/16 v2, -0x6bc6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "7dcd30"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    :cond_0
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "af7186"

    const-wide v2, -0x3e2d1f2f67c00000L    # -1.266893409E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "9a1cf3"

    const-wide v2, -0x3e2be99a7e400000L    # -1.348048391E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0xct
        0x1t
        0x44t
        0x5ft
        0xft
        0x5t
        0x4ct
        0x9t
        0x57t
        0x42t
        0x1t
        0x4t
        0x2bt
        0x6t
        0x59t
        0x5et
        0x48t
        0x3t
        0xbt
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0xat
        0x7t
        0x16t
        0x5ct
        0x59t
        0x53t
        0x4at
        0xft
        0x5t
        0x41t
        0x57t
        0x52t
        0x2dt
        0x0t
        0xbt
        0x5dt
        0x1et
        0x55t
        0xdt
        0x4t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x8t
        0x53t
        0x43t
        0x57t
        0x5ft
        0x5t
        0x48t
        0x47t
        0x58t
        0x5bt
        0x42t
        0x14t
        0x14t
        0x52t
    .end array-data

    :array_3
    .array-data 1
        0x58t
        0xft
        0x55t
        0x11t
        0x9t
        0x5at
        0x5dt
        0x4ft
        0x42t
        0xbt
        0x9t
        0x44t
        0x7bt
        0x8t
        0x56t
        0x33t
        0xft
        0x50t
        0x4dt
        0x14t
        0x43t
        0x6t
        0x31t
        0x5bt
        0x5ct
        0xft
        0x72t
        0xct
        0xat
        0x5ft
        0x58t
        0x11t
        0x42t
        0x6t
        0x2t
    .end array-data
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    return-object p0
.end method

.method public showBigPictureWhenCollapsed(Z)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    return-object p0
.end method
