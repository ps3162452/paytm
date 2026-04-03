.class public Landroidx/core/app/NotificationCompat$MessagingStyle;
.super Landroidx/core/app/NotificationCompat$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mConversationTitle:Ljava/lang/CharSequence;

.field private final mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGroupConversation:Ljava/lang/Boolean;

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Landroidx/core/app/Person;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7f3d78"

    const v2, 0x4e43c44a    # 8.211053E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat$MessagingStyle;->TEMPLATE_CLASS_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x56t
        0x8t
        0x57t
        0x16t
        0x58t
        0x51t
        0x53t
        0x1et
        0x1dt
        0x7t
        0x58t
        0x4at
        0x52t
        0x48t
        0x52t
        0x14t
        0x47t
        0x16t
        0x79t
        0x9t
        0x47t
        0xdt
        0x51t
        0x51t
        0x54t
        0x7t
        0x47t
        0xdt
        0x58t
        0x56t
        0x74t
        0x9t
        0x5et
        0x14t
        0x56t
        0x4ct
        0x13t
        0x2bt
        0x56t
        0x17t
        0x44t
        0x59t
        0x50t
        0xft
        0x5dt
        0x3t
        0x64t
        0x4ct
        0x4et
        0xat
        0x56t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/Person;)V
    .locals 6

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1eaae7"

    const-wide v4, -0x3e254fd807000000L    # -1.79100874E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x64t
        0x16t
        0x4t
        0x13t
        0x42t
        0x44t
        0x11t
        0xbt
        0x0t
        0xct
        0x0t
        0x17t
        0x5ct
        0x10t
        0x12t
        0x15t
        0x45t
        0x59t
        0x5et
        0x11t
        0x41t
        0x3t
        0x0t
        0x17t
        0x54t
        0x8t
        0x11t
        0x15t
        0x1ct
        0x19t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    return-void
.end method

.method public static extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 2

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    instance-of v1, v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findLatestIncomingMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 3

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hasMessagesWithoutSender()Z
    .locals 3

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 7

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-eqz v3, :cond_2

    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    :cond_0
    invoke-virtual {v4, v1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v6, 0x21

    invoke-virtual {v5, v0, v1, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v2

    :goto_3
    const-string v1, "  "

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v4, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v5

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x19

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1f4748"

    const-wide/32 v2, 0x40239786

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "0f230a"

    const v2, 0x4c8c710d    # 7.363185E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "30df70"

    const v2, 0x4ee21186

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "749507"

    const-wide/32 v2, -0x52e4ed3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "6a452f"

    const/16 v2, 0x656b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "56e22d"

    const-wide v2, -0x3e39547cdf000000L    # -7.60677954E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "c31b7c"

    const v3, -0x31e87a71

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x50t
        0x8t
        0x50t
        0x45t
        0x5bt
        0x51t
        0x55t
        0x48t
        0x47t
        0x52t
        0x58t
        0x5et
        0x75t
        0xft
        0x47t
        0x47t
        0x58t
        0x59t
        0x48t
        0x28t
        0x55t
        0x5at
        0x51t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x8t
        0x56t
        0x41t
        0x5ft
        0x8t
        0x54t
        0x48t
        0x5ft
        0x56t
        0x43t
        0x12t
        0x51t
        0x1t
        0x5bt
        0x5dt
        0x57t
        0x32t
        0x44t
        0x1ft
        0x5et
        0x56t
        0x65t
        0x12t
        0x55t
        0x14t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x52t
        0x5et
        0x0t
        0x14t
        0x58t
        0x59t
        0x57t
        0x1et
        0xct
        0xft
        0x53t
        0x54t
        0x56t
        0x5et
        0x27t
        0x9t
        0x59t
        0x46t
        0x56t
        0x42t
        0x17t
        0x7t
        0x43t
        0x59t
        0x5ct
        0x5et
        0x30t
        0xft
        0x43t
        0x5ct
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x56t
        0x5at
        0x5dt
        0x47t
        0x5ft
        0x5et
        0x53t
        0x1at
        0x5at
        0x5at
        0x5et
        0x41t
        0x52t
        0x46t
        0x4at
        0x54t
        0x44t
        0x5et
        0x58t
        0x5at
        0x6dt
        0x5ct
        0x44t
        0x5bt
        0x52t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x57t
        0xft
        0x50t
        0x47t
        0x5dt
        0xft
        0x52t
        0x4ft
        0x59t
        0x50t
        0x41t
        0x15t
        0x57t
        0x6t
        0x51t
        0x46t
    .end array-data

    :array_5
    .array-data 1
        0x54t
        0x58t
        0x1t
        0x40t
        0x5dt
        0xdt
        0x51t
        0x18t
        0x8t
        0x57t
        0x41t
        0x17t
        0x54t
        0x51t
        0x0t
        0x41t
        0x1ct
        0xct
        0x5ct
        0x45t
        0x11t
        0x5dt
        0x40t
        0xdt
        0x56t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x2t
        0x5dt
        0x55t
        0x10t
        0x58t
        0xat
        0x7t
        0x1dt
        0x58t
        0x11t
        0x70t
        0x11t
        0xct
        0x46t
        0x41t
        0x21t
        0x58t
        0xdt
        0x15t
        0x56t
        0x43t
        0x11t
        0x56t
        0x17t
        0xat
        0x5ct
        0x5ft
    .end array-data
.end method

.method public addHistoricMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 2

    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    new-instance v2, Landroidx/core/app/Person$Builder;

    invoke-direct {v2}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v2, p4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 6

    const/16 v3, 0x1c

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->isGroupConversation()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    new-instance v0, Landroid/app/Notification$MessagingStyle;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toAndroidMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toAndroidMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$MessagingStyle;->addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    :cond_5
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->findLatestIncomingMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_d

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->hasMessagesWithoutSender()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    const/4 v0, 0x1

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_10

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    if-eqz v1, :cond_f

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_8
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_b

    const-string v5, "\n"

    invoke-virtual {v4, v2, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_b
    invoke-virtual {v4, v2, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    :cond_c
    if-eqz v0, :cond_8

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_e
    move v1, v2

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8

    :cond_10
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto/16 :goto_3
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x19

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0624c8"

    const-wide v2, -0x3e26ccc316c00000L    # -1.691153317E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4ff54d"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "e7104f"

    const-wide v2, 0x41d5e30bbc400000L    # 1.468804849E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "3e0be4"

    const-wide/32 v2, 0x4f13972e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "40ce7a"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "62dedc"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "17a476"

    const-wide v2, 0x41c18f439d000000L    # 5.89203258E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x51t
        0x58t
        0x56t
        0x46t
        0xct
        0x51t
        0x54t
        0x18t
        0x5ft
        0x51t
        0x10t
        0x4bt
        0x51t
        0x51t
        0x5bt
        0x5at
        0x4t
        0x6bt
        0x44t
        0x4ft
        0x5et
        0x51t
        0x36t
        0x4bt
        0x55t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x8t
        0x2t
        0x47t
        0x5bt
        0xdt
        0x50t
        0x48t
        0x15t
        0x50t
        0x58t
        0x2t
        0x70t
        0xft
        0x15t
        0x45t
        0x58t
        0x5t
        0x4dt
        0x28t
        0x7t
        0x58t
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x4t
        0x59t
        0x55t
        0x42t
        0x5bt
        0xft
        0x1t
        0x19t
        0x52t
        0x5ft
        0x5at
        0x10t
        0x0t
        0x45t
        0x42t
        0x51t
        0x40t
        0xft
        0xat
        0x59t
        0x65t
        0x59t
        0x40t
        0xat
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x52t
        0xbt
        0x54t
        0x10t
        0xat
        0x5dt
        0x57t
        0x4bt
        0x58t
        0xbt
        0x1t
        0x50t
        0x56t
        0xbt
        0x73t
        0xdt
        0xbt
        0x42t
        0x56t
        0x17t
        0x43t
        0x3t
        0x11t
        0x5dt
        0x5ct
        0xbt
        0x64t
        0xbt
        0x11t
        0x58t
        0x56t
    .end array-data

    :array_4
    .array-data 1
        0x55t
        0x5et
        0x7t
        0x17t
        0x58t
        0x8t
        0x50t
        0x1et
        0xet
        0x0t
        0x44t
        0x12t
        0x55t
        0x57t
        0x6t
        0x16t
    .end array-data

    :array_5
    .array-data 1
        0x57t
        0x5ct
        0x0t
        0x17t
        0xbt
        0xat
        0x52t
        0x1ct
        0x9t
        0x0t
        0x17t
        0x10t
        0x57t
        0x55t
        0x1t
        0x16t
        0x4at
        0xbt
        0x5ft
        0x41t
        0x10t
        0xat
        0x16t
        0xat
        0x55t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x50t
        0x59t
        0x5t
        0x46t
        0x58t
        0x5ft
        0x55t
        0x19t
        0x8t
        0x47t
        0x70t
        0x44t
        0x5et
        0x42t
        0x11t
        0x77t
        0x58t
        0x58t
        0x47t
        0x52t
        0x13t
        0x47t
        0x56t
        0x42t
        0x58t
        0x58t
        0xft
    .end array-data
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/core/app/NotificationCompat$MessagingStyle;->TEMPLATE_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHistoricMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Landroidx/core/app/Person;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isGroupConversation()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x1b

    const/16 v3, 0x1a

    const/16 v6, 0x19

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "99d59f"

    const v2, 0x4cb897b8    # 9.677971E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "2a6d9e"

    const-wide/32 v2, 0x25665624    # 3.10008266E-315

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    :goto_0
    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "000afd"

    const-wide/32 v2, -0x7c1b8e3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "1f5a89"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "087e9a"

    const/16 v2, 0x58a6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "8ebb99"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-array v0, v7, [B

    fill-array-data v0, :array_6

    const-string v1, "bab102"

    const/16 v2, -0x680d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v7, [B

    fill-array-data v0, :array_7

    const-string v1, "72b119"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "6eacad"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x58t
        0x57t
        0x0t
        0x47t
        0x56t
        0xft
        0x5dt
        0x17t
        0x9t
        0x50t
        0x4at
        0x15t
        0x58t
        0x5et
        0xdt
        0x5bt
        0x5et
        0x35t
        0x4dt
        0x40t
        0x8t
        0x50t
        0x6ct
        0x15t
        0x5ct
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0xft
        0x52t
        0x16t
        0x56t
        0xct
        0x56t
        0x4ft
        0x5bt
        0x1t
        0x4at
        0x16t
        0x53t
        0x6t
        0x5ft
        0xat
        0x5et
        0x36t
        0x46t
        0x18t
        0x5at
        0x1t
        0x6ct
        0x16t
        0x57t
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0x5et
        0x54t
        0x13t
        0x9t
        0xdt
        0x54t
        0x1et
        0x53t
        0xet
        0x8t
        0x12t
        0x55t
        0x42t
        0x43t
        0x0t
        0x12t
        0xdt
        0x5ft
        0x5et
        0x64t
        0x8t
        0x12t
        0x8t
        0x55t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x50t
        0x8t
        0x51t
        0x13t
        0x57t
        0x50t
        0x55t
        0x48t
        0x5dt
        0x8t
        0x5ct
        0x5dt
        0x54t
        0x8t
        0x76t
        0xet
        0x56t
        0x4ft
        0x54t
        0x14t
        0x46t
        0x0t
        0x4ct
        0x50t
        0x5et
        0x8t
        0x61t
        0x8t
        0x4ct
        0x55t
        0x54t
    .end array-data

    :array_4
    .array-data 1
        0x51t
        0x56t
        0x53t
        0x17t
        0x56t
        0x8t
        0x54t
        0x16t
        0x5at
        0x0t
        0x4at
        0x12t
        0x51t
        0x5ft
        0x52t
        0x16t
    .end array-data

    :array_5
    .array-data 1
        0x59t
        0xbt
        0x6t
        0x10t
        0x56t
        0x50t
        0x5ct
        0x4bt
        0xft
        0x7t
        0x4at
        0x4at
        0x59t
        0x2t
        0x7t
        0x11t
        0x17t
        0x51t
        0x51t
        0x16t
        0x16t
        0xdt
        0x4bt
        0x50t
        0x5bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x3t
        0xft
        0x6t
        0x43t
        0x5ft
        0x5bt
        0x6t
        0x4ft
        0xbt
        0x42t
        0x77t
        0x40t
        0xdt
        0x14t
        0x12t
        0x72t
        0x5ft
        0x5ct
        0x14t
        0x4t
        0x10t
        0x42t
        0x51t
        0x46t
        0xbt
        0xet
        0xct
    .end array-data

    :array_7
    .array-data 1
        0x56t
        0x5ct
        0x6t
        0x43t
        0x5et
        0x50t
        0x53t
        0x1ct
        0xbt
        0x42t
        0x76t
        0x4bt
        0x58t
        0x47t
        0x12t
        0x72t
        0x5et
        0x57t
        0x41t
        0x57t
        0x10t
        0x42t
        0x50t
        0x4dt
        0x5et
        0x5dt
        0xct
    .end array-data

    :array_8
    .array-data 1
        0x57t
        0xbt
        0x5t
        0x11t
        0xet
        0xdt
        0x52t
        0x4bt
        0x12t
        0x6t
        0xdt
        0x2t
        0x72t
        0xct
        0x12t
        0x13t
        0xdt
        0x5t
        0x4ft
        0x2bt
        0x0t
        0xet
        0x4t
    .end array-data
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    return-object p0
.end method
