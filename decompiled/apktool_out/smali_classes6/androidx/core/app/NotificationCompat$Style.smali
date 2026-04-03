.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v4, v3}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v0

    sub-float/2addr v0, v4

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr v0, v3

    sub-float v3, v4, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const/16 v1, 0x33

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e5aed9"

    const/16 v3, 0x2ecd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "297f5a"

    const v4, 0x4daf4f23    # 3.676499E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "94f14f"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "93a6e0"

    const-wide/32 v4, 0x3b75e304

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x3d

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "43f05d"

    const/16 v3, -0x6b33

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto/16 :goto_1

    :pswitch_3
    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2ab80d9c -> :sswitch_4
        -0xa3fb04d -> :sswitch_3
        0x366a678b -> :sswitch_2
        0x36cfe824 -> :sswitch_1
        0x7c9f11cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x4t
        0x5bt
        0x5t
        0x17t
        0xbt
        0x50t
        0x1t
        0x4dt
        0x4ft
        0x6t
        0xbt
        0x4bt
        0x0t
        0x1bt
        0x0t
        0x15t
        0x14t
        0x17t
        0x2bt
        0x5at
        0x15t
        0xct
        0x2t
        0x50t
        0x6t
        0x54t
        0x15t
        0xct
        0xbt
        0x57t
        0x26t
        0x5at
        0xct
        0x15t
        0x5t
        0x4dt
        0x41t
        0x78t
        0x4t
        0x16t
        0x17t
        0x58t
        0x2t
        0x5ct
        0xft
        0x2t
        0x37t
        0x4dt
        0x1ct
        0x59t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x57t
        0x53t
        0x14t
        0x5at
        0x8t
        0x56t
        0x41t
        0x19t
        0x5t
        0x5at
        0x13t
        0x57t
        0x17t
        0x56t
        0x16t
        0x45t
        0x4ft
        0x7ct
        0x56t
        0x43t
        0xft
        0x53t
        0x8t
        0x51t
        0x58t
        0x43t
        0xft
        0x5at
        0xft
        0x71t
        0x56t
        0x5at
        0x16t
        0x54t
        0x15t
        0x16t
        0x7bt
        0x5et
        0x1t
        0x61t
        0x4t
        0x4at
        0x4dt
        0x64t
        0x12t
        0x4ct
        0xdt
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x58t
        0x5at
        0x2t
        0x43t
        0x5bt
        0xft
        0x5dt
        0x4ct
        0x48t
        0x52t
        0x5bt
        0x14t
        0x5ct
        0x1at
        0x7t
        0x41t
        0x44t
        0x48t
        0x77t
        0x5bt
        0x12t
        0x58t
        0x52t
        0xft
        0x5at
        0x55t
        0x12t
        0x58t
        0x5bt
        0x8t
        0x7at
        0x5bt
        0xbt
        0x41t
        0x55t
        0x12t
        0x1dt
        0x7dt
        0x8t
        0x53t
        0x5bt
        0x1et
        0x6at
        0x40t
        0x1ft
        0x5dt
        0x51t
    .end array-data

    :array_3
    .array-data 1
        0x58t
        0x5dt
        0x5t
        0x44t
        0xat
        0x59t
        0x5dt
        0x4bt
        0x4ft
        0x55t
        0xat
        0x42t
        0x5ct
        0x1dt
        0x0t
        0x46t
        0x15t
        0x1et
        0x77t
        0x5ct
        0x15t
        0x5ft
        0x3t
        0x59t
        0x5at
        0x52t
        0x15t
        0x5ft
        0xat
        0x5et
        0x7at
        0x5ct
        0xct
        0x46t
        0x4t
        0x44t
        0x1dt
        0x71t
        0x8t
        0x51t
        0x35t
        0x59t
        0x5at
        0x47t
        0x14t
        0x44t
        0x0t
        0x63t
        0x4dt
        0x4at
        0xdt
        0x53t
    .end array-data

    :array_4
    .array-data 1
        0x55t
        0x5dt
        0x2t
        0x42t
        0x5at
        0xdt
        0x50t
        0x4bt
        0x48t
        0x53t
        0x5at
        0x16t
        0x51t
        0x1dt
        0x7t
        0x40t
        0x45t
        0x4at
        0x7at
        0x5ct
        0x12t
        0x59t
        0x53t
        0xdt
        0x57t
        0x52t
        0x12t
        0x59t
        0x5at
        0xat
        0x77t
        0x5ct
        0xbt
        0x40t
        0x54t
        0x10t
        0x10t
        0x77t
        0x3t
        0x53t
        0x5at
        0x16t
        0x55t
        0x47t
        0x3t
        0x54t
        0x76t
        0x11t
        0x47t
        0x47t
        0x9t
        0x5dt
        0x63t
        0xdt
        0x51t
        0x44t
        0x35t
        0x44t
        0x4ct
        0x8t
        0x51t
    .end array-data
.end method

.method private static constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_0

    :cond_2
    const-class v1, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto :goto_0

    :cond_3
    const-class v1, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto :goto_0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_0

    :cond_5
    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    goto :goto_0
.end method

.method static constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .locals 6

    const/16 v5, 0xf

    const/4 v4, 0x0

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6712c4"

    const-wide/32 v2, 0x5872f29a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "654553"

    const-wide/32 v2, -0x5be6727a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "02382a"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_0

    :cond_2
    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "a24a6d"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_0

    :cond_3
    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "6a072b"

    const/16 v2, -0x62cb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "939dd7"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "86587b"

    const-wide/32 v2, 0x4737d4fe

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x57t
        0x59t
        0x55t
        0x40t
        0xct
        0x5dt
        0x52t
        0x4ft
        0x1ft
        0x51t
        0xct
        0x46t
        0x53t
        0x19t
        0x50t
        0x42t
        0x13t
        0x1at
        0x53t
        0x4ft
        0x45t
        0x40t
        0x2t
        0x1at
        0x75t
        0x78t
        0x7ct
        0x62t
        0x22t
        0x60t
        0x69t
        0x63t
        0x74t
        0x7ft
        0x33t
        0x78t
        0x77t
        0x63t
        0x74t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x5bt
        0x50t
        0x47t
        0x5at
        0x5at
        0x52t
        0x1bt
        0x47t
        0x50t
        0x59t
        0x55t
        0x72t
        0x5ct
        0x47t
        0x45t
        0x59t
        0x52t
        0x4ft
        0x7bt
        0x55t
        0x58t
        0x50t
    .end array-data

    :array_2
    .array-data 1
        0x51t
        0x5ct
        0x57t
        0x4at
        0x5dt
        0x8t
        0x54t
        0x1ct
        0x5et
        0x5dt
        0x41t
        0x12t
        0x51t
        0x55t
        0x5at
        0x56t
        0x55t
        0x32t
        0x44t
        0x4bt
        0x5ft
        0x5dt
        0x67t
        0x12t
        0x55t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x5ct
        0x50t
        0x13t
        0x59t
        0xdt
        0x5t
        0x1ct
        0x44t
        0x8t
        0x55t
        0x10t
        0x14t
        0x40t
        0x51t
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0xft
        0x54t
        0x45t
        0x5dt
        0xbt
        0x52t
        0x4ft
        0x52t
        0x5et
        0x55t
        0x36t
        0x53t
        0x19t
        0x44t
    .end array-data

    :array_5
    .array-data 1
        0x58t
        0x5dt
        0x5dt
        0x16t
        0xbt
        0x5et
        0x5dt
        0x1dt
        0x4dt
        0x1t
        0x1ct
        0x43t
        0x75t
        0x5at
        0x57t
        0x1t
        0x17t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x59t
        0x58t
        0x51t
        0x4at
        0x58t
        0xbt
        0x5ct
        0x18t
        0x41t
        0x5dt
        0x5at
        0x12t
        0x54t
        0x57t
        0x41t
        0x5dt
    .end array-data
.end method

.method static constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v3, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_2
    move v0, p3

    goto :goto_0
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .locals 6

    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;
    .locals 1

    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    goto :goto_0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 2

    const/16 v1, 0x8

    sget v0, Landroidx/core/R$id;->title:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "adc511"

    const-wide v2, 0x41dc30e68d800000L    # 1.89186719E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f388ae"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "7c225a"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0xat
        0x7t
        0x47t
        0x5et
        0x58t
        0x5t
        0x4at
        0x10t
        0x40t
        0x5ct
        0x5ct
        0x0t
        0x16t
        0x1at
        0x61t
        0x54t
        0x49t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x7t
        0x5dt
        0x5ct
        0x4at
        0xet
        0xct
        0x2t
        0x1dt
        0x4ct
        0x51t
        0x15t
        0x9t
        0x3t
        0x1dt
        0x5at
        0x51t
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x56t
        0xdt
        0x56t
        0x40t
        0x5at
        0x8t
        0x53t
        0x1bt
        0x1ct
        0x51t
        0x5at
        0x13t
        0x52t
        0x4dt
        0x53t
        0x42t
        0x45t
        0x4ft
        0x52t
        0x1bt
        0x46t
        0x40t
        0x54t
        0x4ft
        0x74t
        0x2ct
        0x7ft
        0x62t
        0x74t
        0x35t
        0x68t
        0x37t
        0x77t
        0x7ft
        0x65t
        0x2dt
        0x76t
        0x37t
        0x77t
    .end array-data
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 0

    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v2, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-direct {v2, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result v3

    const/4 v10, 0x0

    const/4 v6, -0x1

    if-ge v3, v6, :cond_7

    const/4 v3, 0x1

    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    if-eqz v3, :cond_8

    sget v3, Landroidx/core/R$id;->notification_background:I

    const/16 v6, 0x15

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "8d098a"

    const-wide v8, 0x41b98445d6000000L    # 4.2809903E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    sget v7, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v3, Landroidx/core/R$id;->icon:I

    const/16 v6, 0x15

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "a7d69e"

    const-wide v8, -0x3e3e0e4c4e000000L    # -6.021057E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    sget v7, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v3, v6, :cond_9

    sget v3, Landroidx/core/R$id;->icon:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroidx/core/R$id;->icon:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_2
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_1

    sget v3, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v6, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v6, v8}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    sget v6, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_3
    sget v3, Landroidx/core/R$id;->right_icon:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    sget v3, Landroidx/core/R$id;->title:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_16

    sget v3, Landroidx/core/R$id;->text:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v3, 0x1

    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_e

    sget v3, Landroidx/core/R$id;->info:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Landroidx/core/R$id;->info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v8, v3

    move v9, v4

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_12

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_12

    sget v3, Landroidx/core/R$id;->text:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_11

    sget v3, Landroidx/core/R$id;->text2:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Landroidx/core/R$id;->text2:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    if-eqz p3, :cond_3

    sget v3, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    sget v4, Landroidx/core/R$id;->text:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_3
    sget v3, Landroidx/core/R$id;->line1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v3, :cond_13

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_13

    sget v3, Landroidx/core/R$id;->chronometer:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroidx/core/R$id;->chronometer:I

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "b3a110"

    const-wide v6, -0x3e34c62fa4800000L    # -9.13547447E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    add-long/2addr v6, v12

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    sget v3, Landroidx/core/R$id;->chronometer:I

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "dc793a"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    if-eqz v3, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    sget v3, Landroidx/core/R$id;->chronometer:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    :cond_5
    :goto_9
    const/4 v9, 0x1

    :cond_6
    sget v4, Landroidx/core/R$id;->right_side:I

    if-eqz v9, :cond_14

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v4, Landroidx/core/R$id;->line3:I

    if-eqz v8, :cond_15

    move v3, v10

    :goto_b
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v2

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    sget v3, Landroidx/core/R$id;->notification_background:I

    const/16 v6, 0x15

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "15c619"

    const-wide v8, 0x41b6f2d751000000L    # 3.85013585E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    sget v7, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v3, Landroidx/core/R$id;->icon:I

    const/16 v6, 0x15

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "b83872"

    const-wide/32 v8, 0x5ac7fbb

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    sget v7, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    sget v3, Landroidx/core/R$id;->icon:I

    const/16 v6, 0x8

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_a
    sget v3, Landroidx/core/R$id;->right_icon:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    const/4 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_b
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_1

    sget v3, Landroidx/core/R$id;->icon:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_c

    sget v3, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v6, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v7, v6}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    sget v6, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_c
    sget v3, Landroidx/core/R$id;->icon:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    const/4 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v6, :cond_10

    sget v3, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-le v4, v3, :cond_f

    sget v3, Landroidx/core/R$id;->info:I

    sget v4, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_c
    sget v3, Landroidx/core/R$id;->info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v8, v3

    move v9, v4

    goto/16 :goto_7

    :cond_f
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v3

    sget v4, Landroidx/core/R$id;->info:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_c

    :cond_10
    sget v6, Landroidx/core/R$id;->info:I

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v8, v3

    move v9, v4

    goto/16 :goto_7

    :cond_11
    sget v3, Landroidx/core/R$id;->text2:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_13
    sget v3, Landroidx/core/R$id;->time:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroidx/core/R$id;->time:I

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "073d26"

    const v6, -0x31b888f2

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_9

    :cond_14
    const/16 v3, 0x8

    goto/16 :goto_a

    :cond_15
    const/16 v3, 0x8

    goto/16 :goto_b

    :cond_16
    move v3, v4

    goto/16 :goto_5

    nop

    :array_0
    .array-data 1
        0x4bt
        0x1t
        0x44t
        0x7bt
        0x59t
        0x2t
        0x53t
        0x3t
        0x42t
        0x56t
        0x4dt
        0xft
        0x5ct
        0x36t
        0x55t
        0x4at
        0x57t
        0x14t
        0x4at
        0x7t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x52t
        0x10t
        0x74t
        0x58t
        0x6t
        0xat
        0x50t
        0x16t
        0x59t
        0x4ct
        0xbt
        0x5t
        0x65t
        0x1t
        0x45t
        0x56t
        0x10t
        0x13t
        0x54t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x56t
        0x15t
        0x73t
        0x50t
        0x43t
        0x7t
    .end array-data

    :array_3
    .array-data 1
        0x17t
        0x6t
        0x43t
        0x6at
        0x47t
        0x0t
        0x16t
        0x17t
        0x52t
        0x5dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x42t
        0x50t
        0x17t
        0x74t
        0x50t
        0x5at
        0x5at
        0x52t
        0x11t
        0x59t
        0x44t
        0x57t
        0x55t
        0x67t
        0x6t
        0x45t
        0x5et
        0x4ct
        0x43t
        0x56t
        0x6t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x11t
        0x5dt
        0x47t
        0x7at
        0x56t
        0x51t
        0x9t
        0x5ft
        0x41t
        0x57t
        0x42t
        0x5ct
        0x6t
        0x6at
        0x56t
        0x4bt
        0x58t
        0x47t
        0x10t
        0x5bt
        0x56t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x43t
        0x52t
        0x47t
        0x30t
        0x5bt
        0x5bt
        0x55t
    .end array-data
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v1, Landroidx/core/R$id;->notification_main_column_container:I

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v3

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_0
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "683000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "76bb60"

    const/16 v2, -0x618

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "a4a1da"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x56t
        0x57t
        0x42t
        0x5ft
        0x59t
        0x52t
        0x16t
        0x40t
        0x45t
        0x5dt
        0x5dt
        0x57t
        0x4at
        0x4at
        0x64t
        0x55t
        0x48t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0x58t
        0x6t
        0x10t
        0x59t
        0x59t
        0x53t
        0x18t
        0x16t
        0xbt
        0x42t
        0x5ct
        0x52t
        0x18t
        0x0t
        0xbt
        0x51t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x5at
        0x5t
        0x43t
        0xbt
        0x8t
        0x5t
        0x4ct
        0x4ft
        0x52t
        0xbt
        0x13t
        0x4t
        0x1at
        0x0t
        0x41t
        0x14t
        0x4ft
        0x4t
        0x4ct
        0x15t
        0x43t
        0x5t
        0x4ft
        0x22t
        0x7bt
        0x2ct
        0x61t
        0x25t
        0x35t
        0x3et
        0x60t
        0x24t
        0x7ct
        0x34t
        0x2dt
        0x20t
        0x60t
        0x24t
    .end array-data
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public displayCustomViewInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x13

    const/4 v3, 0x1

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "468db1"

    const v2, -0x32c8f2a4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "6cb2bf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    iput-boolean v3, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    :cond_0
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "b024c8"

    const/16 v2, 0x31f1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        0x58t
        0x5ct
        0x16t
        0xdt
        0x58t
        0x50t
        0x18t
        0x4bt
        0x11t
        0xft
        0x5ct
        0x55t
        0x44t
        0x41t
        0x30t
        0x7t
        0x49t
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0xdt
        0x6t
        0x40t
        0xdt
        0xft
        0x52t
        0x4dt
        0x11t
        0x47t
        0xft
        0xbt
        0x57t
        0x11t
        0x1bt
        0x66t
        0x7t
        0x1et
        0x42t
    .end array-data

    :array_2
    .array-data 1
        0x3t
        0x5et
        0x56t
        0x46t
        0xct
        0x51t
        0x6t
        0x1et
        0x46t
        0x5dt
        0x17t
        0x54t
        0x7t
        0x1et
        0x50t
        0x5dt
        0x4t
    .end array-data
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method
