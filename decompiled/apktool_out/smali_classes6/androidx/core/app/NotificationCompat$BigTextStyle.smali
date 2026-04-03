.class public Landroidx/core/app/NotificationCompat$BigTextStyle;
.super Landroidx/core/app/NotificationCompat$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7096e3"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$BigTextStyle;->TEMPLATE_CLASS_NAME:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x56t
        0x5et
        0x5dt
        0x44t
        0xat
        0x5at
        0x53t
        0x48t
        0x17t
        0x55t
        0xat
        0x41t
        0x52t
        0x1et
        0x58t
        0x46t
        0x15t
        0x1dt
        0x79t
        0x5ft
        0x4dt
        0x5ft
        0x3t
        0x5at
        0x54t
        0x51t
        0x4dt
        0x5ft
        0xat
        0x5dt
        0x74t
        0x5ft
        0x54t
        0x46t
        0x4t
        0x47t
        0x13t
        0x72t
        0x50t
        0x51t
        0x31t
        0x56t
        0x4ft
        0x44t
        0x6at
        0x42t
        0x1ct
        0x5ft
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

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8ab073"

    const v2, -0x312d1dba

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0xft
        0x6t
        0x42t
        0x58t
        0x5at
        0x5ct
        0x4ft
        0x0t
        0x59t
        0x50t
        0x67t
        0x5dt
        0x19t
        0x16t
    .end array-data
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "78b014"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x56t
        0x56t
        0x6t
        0x42t
        0x5et
        0x5dt
        0x53t
        0x16t
        0x0t
        0x59t
        0x56t
        0x60t
        0x52t
        0x40t
        0x16t
    .end array-data
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/core/app/NotificationCompat$BigTextStyle;->TEMPLATE_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a70725"

    const-wide/32 v2, -0x4a509e3a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x59t
        0x54t
        0x45t
        0x5dt
        0x5ct
        0x5t
        0x19t
        0x52t
        0x5et
        0x55t
        0x61t
        0x4t
        0x4ft
        0x44t
    .end array-data
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    return-object p0
.end method
