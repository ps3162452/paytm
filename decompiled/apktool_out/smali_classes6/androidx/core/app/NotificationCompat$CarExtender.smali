.class public final Landroidx/core/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;,
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_CAR_EXTENDER:Ljava/lang/String;

.field private static final EXTRA_COLOR:Ljava/lang/String;

.field private static final EXTRA_CONVERSATION:Ljava/lang/String;

.field static final EXTRA_INVISIBLE_ACTIONS:Ljava/lang/String;

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String;

.field private static final KEY_AUTHOR:Ljava/lang/String;

.field private static final KEY_MESSAGES:Ljava/lang/String;

.field private static final KEY_ON_READ:Ljava/lang/String;

.field private static final KEY_ON_REPLY:Ljava/lang/String;

.field private static final KEY_PARTICIPANTS:Ljava/lang/String;

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String;

.field private static final KEY_TEXT:Ljava/lang/String;

.field private static final KEY_TIMESTAMP:Ljava/lang/String;


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "290a09"

    const-wide/32 v2, -0x3d2ff460

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_CAR_EXTENDER:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v1, "539b81"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_COLOR:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "b1d490"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_CONVERSATION:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "88413b"

    const-wide/32 v2, -0x56ab5cc0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_INVISIBLE_ACTIONS:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "018823"

    const-wide/32 v2, 0x6a42970e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_LARGE_ICON:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "5fa380"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_AUTHOR:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "5a2fd4"

    const/16 v2, 0x5815

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_MESSAGES:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "5bc6cb"

    const/16 v2, 0x98b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_ON_READ:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_8

    const-string v1, "df0f24"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_ON_REPLY:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_9

    const-string v1, "8666ef"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_PARTICIPANTS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_a

    const-string v1, "e7d34c"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_REMOTE_INPUT:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "fa7225"

    const-wide v2, 0x41d5b1ac7d800000L    # 1.455862262E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_TEXT:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_c

    const-string v1, "147778"

    const-wide v2, 0x41d15b06c0c00000L    # 1.164712707E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_TIMESTAMP:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x53t
        0x57t
        0x54t
        0x13t
        0x5ft
        0x50t
        0x56t
        0x17t
        0x53t
        0x0t
        0x42t
        0x17t
        0x77t
        0x61t
        0x64t
        0x24t
        0x7et
        0x6at
        0x7bt
        0x76t
        0x7et
        0x32t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0x43t
        0x49t
        0x3dt
        0x5bt
        0x5et
        0x59t
        0x5ct
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x50t
        0x16t
        0x6bt
        0x5at
        0x5ft
        0xct
        0x47t
        0x1t
        0x46t
        0x4at
        0x51t
        0x16t
        0x58t
        0xbt
        0x5at
    .end array-data

    :array_3
    .array-data 1
        0x51t
        0x56t
        0x42t
        0x58t
        0x40t
        0xbt
        0x5at
        0x54t
        0x51t
        0x6et
        0x52t
        0x1t
        0x4ct
        0x51t
        0x5bt
        0x5ft
        0x40t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5ct
        0x50t
        0x4at
        0x5ft
        0x57t
        0x6ct
        0x59t
        0x52t
        0x57t
        0x56t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x54t
        0x13t
        0x15t
        0x5bt
        0x57t
        0x42t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x58t
        0x4t
        0x41t
        0x15t
        0x5t
        0x53t
        0x50t
        0x12t
    .end array-data

    :array_7
    .array-data 1
        0x5at
        0xct
        0x3ct
        0x44t
        0x6t
        0x3t
        0x51t
    .end array-data

    :array_8
    .array-data 1
        0xbt
        0x8t
        0x6ft
        0x14t
        0x57t
        0x44t
        0x8t
        0x1ft
    .end array-data

    :array_9
    .array-data 1
        0x48t
        0x57t
        0x44t
        0x42t
        0xct
        0x5t
        0x51t
        0x46t
        0x57t
        0x58t
        0x11t
        0x15t
    .end array-data

    :array_a
    .array-data 1
        0x17t
        0x52t
        0x9t
        0x5ct
        0x40t
        0x6t
        0x3at
        0x5et
        0xat
        0x43t
        0x41t
        0x17t
    .end array-data

    :array_b
    .array-data 1
        0x12t
        0x4t
        0x4ft
        0x46t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x5dt
        0x5at
        0x52t
        0x44t
        0x4ct
        0x50t
        0x59t
        0x47t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "21e95d"

    invoke-static {v0, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "db4d05"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "cdf7c2"

    const-wide/32 v4, 0x6987a5b0

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$CarExtender;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "7f31b8"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5et
        0x50t
        0x17t
        0x5et
        0x50t
        0x3bt
        0x5bt
        0x52t
        0xat
        0x57t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5t
        0x12t
        0x44t
        0x3bt
        0x53t
        0x5at
        0x8t
        0xdt
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x5t
        0x14t
        0x68t
        0x0t
        0x5dt
        0xdt
        0x12t
        0x3t
        0x45t
        0x10t
        0x53t
        0x17t
        0xdt
        0x9t
        0x59t
    .end array-data

    :array_3
    .array-data 1
        0x56t
        0x8t
        0x57t
        0x43t
        0xdt
        0x51t
        0x53t
        0x48t
        0x50t
        0x50t
        0x10t
        0x16t
        0x72t
        0x3et
        0x67t
        0x74t
        0x2ct
        0x6bt
        0x7et
        0x29t
        0x7dt
        0x62t
    .end array-data
.end method

.method private static getBundleForUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Landroid/os/Parcelable;

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_TEXT:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_AUTHOR:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_MESSAGES:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroidx/core/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_REMOTE_INPUT:Ljava/lang/String;

    new-instance v3, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_ON_REPLY:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_ON_READ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_PARTICIPANTS:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getLatestTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v2
.end method

.method private static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 13

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_MESSAGES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v0, v4

    new-array v2, v0, [Ljava/lang/String;

    move v1, v5

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_6

    aget-object v0, v4, v1

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_3

    move v0, v5

    :goto_2
    if-eqz v0, :cond_0

    move-object v10, v2

    :goto_3
    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_ON_READ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_ON_REPLY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_REMOTE_INPUT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/RemoteInput;

    sget-object v0, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_PARTICIPANTS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    array-length v0, v11

    if-ne v0, v3, :cond_0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-lt v0, v12, :cond_2

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v5

    :cond_2
    new-instance v0, Landroidx/core/app/RemoteInput;

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    move-object v2, v0

    :goto_4
    new-instance v0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    sget-object v1, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, v10

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    move-object v7, v0

    goto :goto_0

    :cond_3
    aget-object v0, v4, v1

    check-cast v0, Landroid/os/Bundle;

    sget-object v6, Landroidx/core/app/NotificationCompat$CarExtender;->KEY_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    aget-object v0, v2, v1

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v2, v7

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move-object v10, v7

    goto :goto_3
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_LARGE_ICON:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    if-eqz v1, :cond_2

    sget-object v2, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v1, :cond_3

    sget-object v2, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_CONVERSATION:Ljava/lang/String;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$CarExtender;->getBundleForUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Landroidx/core/app/NotificationCompat$CarExtender;->EXTRA_CAR_EXTENDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object p0
.end method
