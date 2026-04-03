.class public Landroidx/core/app/NotificationCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Action;,
        Landroidx/core/app/NotificationCompat$Action$Builder;,
        Landroidx/core/app/NotificationCompat$Action$Extender;,
        Landroidx/core/app/NotificationCompat$Action$SemanticAction;,
        Landroidx/core/app/NotificationCompat$Action$WearableExtender;,
        Landroidx/core/app/NotificationCompat$BadgeIconType;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;,
        Landroidx/core/app/NotificationCompat$BigTextStyle;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;,
        Landroidx/core/app/NotificationCompat$Builder;,
        Landroidx/core/app/NotificationCompat$CarExtender;,
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;,
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;,
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;,
        Landroidx/core/app/NotificationCompat$Extender;,
        Landroidx/core/app/NotificationCompat$GroupAlertBehavior;,
        Landroidx/core/app/NotificationCompat$InboxStyle;,
        Landroidx/core/app/NotificationCompat$MessagingStyle;,
        Landroidx/core/app/NotificationCompat$MessagingStyle$Message;,
        Landroidx/core/app/NotificationCompat$NotificationVisibility;,
        Landroidx/core/app/NotificationCompat$ServiceNotificationBehavior;,
        Landroidx/core/app/NotificationCompat$StreamType;,
        Landroidx/core/app/NotificationCompat$Style;,
        Landroidx/core/app/NotificationCompat$WearableExtender;
    }
.end annotation


# static fields
.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String;

.field public static final CATEGORY_CALL:Ljava/lang/String;

.field public static final CATEGORY_EMAIL:Ljava/lang/String;

.field public static final CATEGORY_ERROR:Ljava/lang/String;

.field public static final CATEGORY_EVENT:Ljava/lang/String;

.field public static final CATEGORY_LOCATION_SHARING:Ljava/lang/String;

.field public static final CATEGORY_MESSAGE:Ljava/lang/String;

.field public static final CATEGORY_MISSED_CALL:Ljava/lang/String;

.field public static final CATEGORY_NAVIGATION:Ljava/lang/String;

.field public static final CATEGORY_PROGRESS:Ljava/lang/String;

.field public static final CATEGORY_PROMO:Ljava/lang/String;

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String;

.field public static final CATEGORY_REMINDER:Ljava/lang/String;

.field public static final CATEGORY_SERVICE:Ljava/lang/String;

.field public static final CATEGORY_SOCIAL:Ljava/lang/String;

.field public static final CATEGORY_STATUS:Ljava/lang/String;

.field public static final CATEGORY_STOPWATCH:Ljava/lang/String;

.field public static final CATEGORY_SYSTEM:Ljava/lang/String;

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String;

.field public static final CATEGORY_WORKOUT:Ljava/lang/String;

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String;

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String;

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String;

.field public static final EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String;

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String;

.field public static final EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String;

.field public static final EXTRA_COLORIZED:Ljava/lang/String;

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String;

.field public static final EXTRA_COMPAT_TEMPLATE:Ljava/lang/String;

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String;

.field public static final EXTRA_HIDDEN_CONVERSATION_TITLE:Ljava/lang/String;

.field public static final EXTRA_HISTORIC_MESSAGES:Ljava/lang/String;

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String;

.field public static final EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String;

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String;

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String;

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String;

.field public static final EXTRA_MESSAGES:Ljava/lang/String;

.field public static final EXTRA_MESSAGING_STYLE_USER:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_TAG:Ljava/lang/String;

.field public static final EXTRA_PEOPLE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PEOPLE_LIST:Ljava/lang/String;

.field public static final EXTRA_PICTURE:Ljava/lang/String;

.field public static final EXTRA_PROGRESS:Ljava/lang/String;

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String;

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String;

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String;

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String;

.field public static final EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String;

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String;

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String;

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String;

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String;

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String;

.field public static final EXTRA_TEMPLATE:Ljava/lang/String;

.field public static final EXTRA_TEXT:Ljava/lang/String;

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String;

.field public static final EXTRA_TITLE:Ljava/lang/String;

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String;

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_BUBBLE:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final GROUP_KEY_SILENT:Ljava/lang/String;

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String;

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x11

    const/4 v7, 0x5

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "963f51"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_ALARM:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c5e6b5"

    const/16 v2, -0x6368

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_CALL:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "86fb14"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_EMAIL:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "f429e9"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_ERROR:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "c66597"

    const-wide/32 v2, -0x5e4441d4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_EVENT:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "04c3bf"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_LOCATION_SHARING:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "fa6af2"

    const-wide/32 v2, 0x473c5555

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_MESSAGE:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "85548b"

    const v2, 0x4e838050

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_MISSED_CALL:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "36461b"

    const-wide/32 v2, 0x49e21524

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_NAVIGATION:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "474cfb"

    const/16 v2, 0x2dba

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_PROGRESS:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_a

    const-string v1, "8f6317"

    const v2, -0x31201d89

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_PROMO:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "edad63"

    const-wide/32 v2, -0x47fdca9d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_RECOMMENDATION:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "44ae1a"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_REMINDER:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "71f337"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_SERVICE:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "7da3c5"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_SOCIAL:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "59799d"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_STATUS:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "2259c9"

    const-wide v2, -0x3e232746d2000000L    # -1.93586092E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_STOPWATCH:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v1, "8c8592"

    const-wide v2, 0x41cb2f1690000000L    # 9.121416E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_SYSTEM:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const-string v1, "b52e45"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_TRANSPORT:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_13

    const-string v1, "660ffa"

    const-wide/32 v2, 0x45fe4a17

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->CATEGORY_WORKOUT:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "a9dcba"

    const/16 v2, 0x2a99

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_15

    const-string v1, "f11d38"

    const-wide v2, -0x3e2fb0337b000000L    # -1.094660628E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const-string v1, "c48635"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_BIG_TEXT:Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_17

    const-string v1, "b296a5"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    const-string v1, "af066b"

    const-wide/32 v2, -0x2c00679

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_19

    const-string v1, "8dc7ae"

    const-wide/32 v2, -0x32af09cd

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_1a

    const-string v1, "39eb5c"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_COLORIZED:Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1b

    const-string v1, "17c31b"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_COMPACT_ACTIONS:Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    const-string v1, "13799f"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_COMPAT_TEMPLATE:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_1d

    const-string v1, "df60b2"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_CONVERSATION_TITLE:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    const-string v1, "36561f"

    const/16 v2, -0x428b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_HIDDEN_CONVERSATION_TITLE:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_1f

    const-string v1, "770cd8"

    const v2, 0x4ddae92a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_HISTORIC_MESSAGES:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_20

    const-string v1, "58592d"

    const v2, -0x322b6cd9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_INFO_TEXT:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_21

    const-string v1, "5f2c08"

    const v2, -0x31074519    # -2.0864992E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_22

    const-string v1, "8cfb47"

    const-wide/32 v2, 0x5fcae73e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_LARGE_ICON:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_23

    const-string v1, "b2fbda"

    const/16 v2, 0xa3c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_LARGE_ICON_BIG:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    const-string v1, "08358d"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_MEDIA_SESSION:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_25

    const-string v1, "21296c"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_MESSAGES:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    const-string v1, "16c0e8"

    const v2, -0x31f50662    # -5.829037E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_MESSAGING_STYLE_USER:Ljava/lang/String;

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_27

    const-string v1, "da716a"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    const-string v1, "cce0f9"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_29

    const-string v1, "937770"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_PEOPLE:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    const-string v1, "45c74c"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_PEOPLE_LIST:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_2b

    const-string v1, "fb4684"

    const-wide v2, 0x41dd70f74fc00000L    # 1.975770431E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_PICTURE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_2c

    const-string v1, "38e6c9"

    const-wide/32 v2, -0x6842b2d5

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_PROGRESS:Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_2d

    const-string v1, "7225e3"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    const-string v1, "deff5b"

    const v2, -0x31313cfb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_PROGRESS_MAX:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_2f

    const-string v1, "6d5c8c"

    const-wide v2, -0x3e2a7141abc00000L    # -1.446705489E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    const-string v1, "5aff4e"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_31

    const-string v1, "9362d8"

    const-wide v2, -0x3e28dae4a9800000L    # -1.553231194E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_32

    const-string v1, "6b51d3"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SHOW_CHRONOMETER:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_33

    const-string v1, "528b47"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SHOW_WHEN:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_34

    const-string v1, "8506b4"

    const/16 v2, -0x5219

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SMALL_ICON:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_35

    const-string v1, "54d0e7"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SUB_TEXT:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    const-string v1, "b01b44"

    const v2, -0x33869080    # -6.538803E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_SUMMARY_TEXT:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_37

    const-string v1, "b02737"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_TEMPLATE:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    const-string v1, "173138"

    const-wide/32 v2, 0x2026eab6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_TEXT:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_39

    const-string v1, "889a98"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_TEXT_LINES:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    const-string v1, "63add8"

    const/16 v2, -0x5060

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_TITLE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_3b

    const-string v1, "9dd77a"

    const-wide v2, 0x41b4ca3cb7000000L    # 3.48798135E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->EXTRA_TITLE_BIG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    const-string v1, "d19ab3"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->GROUP_KEY_SILENT:Ljava/lang/String;

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_3d

    const-string v1, "ac12ea"

    const-wide v2, -0x3e2d0d5a05800000L    # -1.271568362E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompat;->INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x58t
        0x5at
        0x52t
        0x14t
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x54t
        0x9t
        0x5at
    .end array-data

    :array_2
    .array-data 1
        0x5dt
        0x5bt
        0x7t
        0xbt
        0x5dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x46t
        0x40t
    .end array-data

    :array_4
    .array-data 1
        0x6t
        0x40t
        0x53t
        0x5bt
        0x4dt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5ct
        0x5bt
        0x0t
        0x52t
        0x16t
        0xft
        0x5ft
        0x5at
        0x3ct
        0x40t
        0xat
        0x7t
        0x42t
        0x5dt
        0xdt
        0x54t
    .end array-data

    :array_6
    .array-data 1
        0xbt
        0x12t
        0x51t
    .end array-data

    :array_7
    .array-data 1
        0x55t
        0x5ct
        0x46t
        0x47t
        0x5dt
        0x6t
        0x67t
        0x56t
        0x54t
        0x58t
        0x54t
    .end array-data

    :array_8
    .array-data 1
        0x5dt
        0x57t
        0x42t
        0x5ft
        0x56t
        0x3t
        0x47t
        0x5ft
        0x5bt
        0x58t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x44t
        0x45t
        0x5bt
        0x4t
        0x14t
        0x7t
        0x47t
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x48t
        0x14t
        0x59t
        0x5et
        0x5et
    .end array-data

    nop

    :array_b
    .array-data 1
        0x17t
        0x1t
        0x2t
        0xbt
        0x5bt
        0x5et
        0x0t
        0xat
        0x5t
        0x5t
        0x42t
        0x5at
        0xat
        0xat
    .end array-data

    nop

    :array_c
    .array-data 1
        0x46t
        0x51t
        0xct
        0xct
        0x5ft
        0x5t
        0x51t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        0x44t
        0x54t
        0x14t
        0x45t
        0x5at
        0x54t
        0x52t
    .end array-data

    :array_e
    .array-data 1
        0x44t
        0xbt
        0x2t
        0x5at
        0x2t
        0x59t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x46t
        0x4dt
        0x56t
        0x4dt
        0x4ct
        0x17t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x41t
        0x46t
        0x5at
        0x49t
        0x14t
        0x58t
        0x46t
        0x51t
        0x5dt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x4bt
        0x1at
        0x4bt
    .end array-data

    :array_12
    .array-data 1
        0x16t
        0x47t
        0x53t
        0xbt
        0x47t
        0x45t
        0xdt
        0x47t
        0x46t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x41t
        0x59t
        0x42t
        0xdt
        0x9t
        0x14t
        0x42t
    .end array-data

    :array_14
    .array-data 1
        0x0t
        0x57t
        0x0t
        0x11t
        0xdt
        0x8t
        0x5t
        0x17t
        0x5t
        0x16t
        0x6t
        0x8t
        0xet
        0x7at
        0xbt
        0xdt
        0x16t
        0x4t
        0xft
        0x4dt
        0x17t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x7t
        0x5ft
        0x55t
        0x16t
        0x5ct
        0x51t
        0x2t
        0x1ft
        0x53t
        0x5t
        0x50t
        0x53t
        0x1t
        0x43t
        0x5et
        0x11t
        0x5dt
        0x5ct
        0x2ft
        0x5ct
        0x50t
        0x3t
        0x56t
        0x6dt
        0x14t
        0x58t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x2t
        0x5at
        0x5ct
        0x44t
        0x5ct
        0x5ct
        0x7t
        0x1at
        0x5at
        0x5ft
        0x54t
        0x61t
        0x6t
        0x4ct
        0x4ct
    .end array-data

    :array_17
    .array-data 1
        0x3t
        0x5ct
        0x5dt
        0x44t
        0xet
        0x5ct
        0x6t
        0x1ct
        0x50t
        0x58t
        0x15t
        0x50t
        0xct
        0x46t
        0x17t
        0x53t
        0x19t
        0x41t
        0x10t
        0x53t
        0x17t
        0x75t
        0x29t
        0x74t
        0x2ct
        0x7ct
        0x7ct
        0x7at
        0x3et
        0x72t
        0x30t
        0x7dt
        0x6ct
        0x66t
        0x3et
        0x7ct
        0x26t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x0t
        0x8t
        0x54t
        0x44t
        0x59t
        0xbt
        0x5t
        0x48t
        0x59t
        0x58t
        0x42t
        0x7t
        0xft
        0x12t
        0x1et
        0x53t
        0x4et
        0x16t
        0x13t
        0x7t
        0x1et
        0x75t
        0x7et
        0x23t
        0x2ft
        0x28t
        0x75t
        0x7at
        0x69t
        0x2bt
        0x25t
    .end array-data

    :array_19
    .array-data 1
        0x59t
        0xat
        0x7t
        0x45t
        0xet
        0xct
        0x5ct
        0x4at
        0x0t
        0x5ft
        0x13t
        0xat
        0x56t
        0xbt
        0xet
        0x52t
        0x15t
        0x0t
        0x4at
        0x27t
        0xct
        0x42t
        0xft
        0x11t
        0x7ct
        0xbt
        0x14t
        0x59t
    .end array-data

    :array_1a
    .array-data 1
        0x52t
        0x57t
        0x1t
        0x10t
        0x5at
        0xat
        0x57t
        0x17t
        0x6t
        0xdt
        0x59t
        0xct
        0x41t
        0x50t
        0x1ft
        0x7t
        0x51t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x50t
        0x59t
        0x7t
        0x41t
        0x5et
        0xbt
        0x55t
        0x19t
        0x0t
        0x5ct
        0x5ct
        0x12t
        0x50t
        0x54t
        0x17t
        0x72t
        0x52t
        0x16t
        0x58t
        0x58t
        0xdt
        0x40t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x50t
        0x5dt
        0x53t
        0x4bt
        0x56t
        0xft
        0x55t
        0x4bt
        0x19t
        0x5at
        0x56t
        0x14t
        0x54t
        0x1dt
        0x56t
        0x49t
        0x49t
        0x48t
        0x54t
        0x4bt
        0x43t
        0x4bt
        0x58t
        0x48t
        0x72t
        0x7ct
        0x7at
        0x69t
        0x78t
        0x32t
        0x6et
        0x67t
        0x72t
        0x74t
        0x69t
        0x2at
        0x70t
        0x67t
        0x72t
    .end array-data

    :array_1d
    .array-data 1
        0x5t
        0x8t
        0x52t
        0x42t
        0xdt
        0x5bt
        0x0t
        0x48t
        0x55t
        0x5ft
        0xct
        0x44t
        0x1t
        0x14t
        0x45t
        0x51t
        0x16t
        0x5bt
        0xbt
        0x8t
        0x62t
        0x59t
        0x16t
        0x5et
        0x1t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x52t
        0x58t
        0x51t
        0x44t
        0x5et
        0xft
        0x57t
        0x18t
        0x5dt
        0x5ft
        0x55t
        0x2t
        0x56t
        0x58t
        0x76t
        0x59t
        0x5ft
        0x10t
        0x56t
        0x44t
        0x46t
        0x57t
        0x45t
        0xft
        0x5ct
        0x58t
        0x61t
        0x5ft
        0x45t
        0xat
        0x56t
    .end array-data

    :array_1f
    .array-data 1
        0x56t
        0x59t
        0x54t
        0x11t
        0xbt
        0x51t
        0x53t
        0x19t
        0x5dt
        0x6t
        0x17t
        0x4bt
        0x56t
        0x50t
        0x55t
        0x10t
        0x4at
        0x50t
        0x5et
        0x44t
        0x44t
        0xct
        0x16t
        0x51t
        0x54t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x54t
        0x56t
        0x51t
        0x4bt
        0x5dt
        0xdt
        0x51t
        0x16t
        0x5ct
        0x57t
        0x54t
        0xbt
        0x61t
        0x5dt
        0x4dt
        0x4dt
    .end array-data

    :array_21
    .array-data 1
        0x54t
        0x8t
        0x56t
        0x11t
        0x5ft
        0x51t
        0x51t
        0x48t
        0x5bt
        0x10t
        0x77t
        0x4at
        0x5at
        0x13t
        0x42t
        0x20t
        0x5ft
        0x56t
        0x43t
        0x3t
        0x40t
        0x10t
        0x51t
        0x4ct
        0x5ct
        0x9t
        0x5ct
    .end array-data

    :array_22
    .array-data 1
        0x59t
        0xdt
        0x2t
        0x10t
        0x5bt
        0x5et
        0x5ct
        0x4dt
        0xat
        0x3t
        0x46t
        0x50t
        0x5dt
        0x2at
        0x5t
        0xdt
        0x5at
    .end array-data

    nop

    :array_23
    .array-data 1
        0x3t
        0x5ct
        0x2t
        0x10t
        0xbt
        0x8t
        0x6t
        0x1ct
        0xat
        0x3t
        0x16t
        0x6t
        0x7t
        0x7bt
        0x5t
        0xdt
        0xat
        0x4ft
        0x0t
        0x5bt
        0x1t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x51t
        0x56t
        0x57t
        0x47t
        0x57t
        0xdt
        0x54t
        0x16t
        0x5et
        0x50t
        0x5ct
        0xdt
        0x51t
        0x6bt
        0x56t
        0x46t
        0x4bt
        0xdt
        0x5ft
        0x56t
    .end array-data

    :array_25
    .array-data 1
        0x53t
        0x5ft
        0x56t
        0x4bt
        0x59t
        0xat
        0x56t
        0x1ft
        0x5ft
        0x5ct
        0x45t
        0x10t
        0x53t
        0x56t
        0x57t
        0x4at
    .end array-data

    :array_26
    .array-data 1
        0x50t
        0x58t
        0x7t
        0x42t
        0xat
        0x51t
        0x55t
        0x18t
        0xet
        0x55t
        0x16t
        0x4bt
        0x50t
        0x51t
        0xat
        0x5et
        0x2t
        0x6bt
        0x45t
        0x4ft
        0xft
        0x55t
        0x30t
        0x4bt
        0x54t
        0x44t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x5t
        0xft
        0x53t
        0x43t
        0x59t
        0x8t
        0x0t
        0x4ft
        0x5et
        0x5ft
        0x42t
        0x4t
        0xat
        0x15t
        0x19t
        0x54t
        0x4et
        0x15t
        0x16t
        0x0t
        0x19t
        0x7ft
        0x79t
        0x35t
        0x2dt
        0x27t
        0x7et
        0x72t
        0x77t
        0x35t
        0x2dt
        0x2et
        0x79t
        0x6et
        0x7ft
        0x25t
    .end array-data

    :array_28
    .array-data 1
        0x2t
        0xdt
        0x1t
        0x42t
        0x9t
        0x50t
        0x7t
        0x4dt
        0xct
        0x5et
        0x12t
        0x5ct
        0xdt
        0x17t
        0x4bt
        0x55t
        0x1et
        0x4dt
        0x11t
        0x2t
        0x4bt
        0x7et
        0x29t
        0x6dt
        0x2at
        0x25t
        0x2ct
        0x73t
        0x27t
        0x6dt
        0x2at
        0x2ct
        0x2bt
        0x6ft
        0x32t
        0x78t
        0x24t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x58t
        0x5dt
        0x53t
        0x45t
        0x58t
        0x59t
        0x5dt
        0x1dt
        0x47t
        0x52t
        0x58t
        0x40t
        0x55t
        0x56t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x55t
        0x5bt
        0x7t
        0x45t
        0x5bt
        0xat
        0x50t
        0x1bt
        0x13t
        0x52t
        0x5bt
        0x13t
        0x58t
        0x50t
        0x4dt
        0x5bt
        0x5dt
        0x10t
        0x40t
    .end array-data

    :array_2b
    .array-data 1
        0x7t
        0xct
        0x50t
        0x44t
        0x57t
        0x5dt
        0x2t
        0x4ct
        0x44t
        0x5ft
        0x5bt
        0x40t
        0x13t
        0x10t
        0x51t
    .end array-data

    :array_2c
    .array-data 1
        0x52t
        0x56t
        0x1t
        0x44t
        0xct
        0x50t
        0x57t
        0x16t
        0x15t
        0x44t
        0xct
        0x5et
        0x41t
        0x5dt
        0x16t
        0x45t
    .end array-data

    :array_2d
    .array-data 1
        0x56t
        0x5ct
        0x56t
        0x47t
        0xat
        0x5at
        0x53t
        0x1ct
        0x42t
        0x47t
        0xat
        0x54t
        0x45t
        0x57t
        0x41t
        0x46t
        0x2ct
        0x5dt
        0x53t
        0x57t
        0x46t
        0x50t
        0x17t
        0x5et
        0x5et
        0x5ct
        0x53t
        0x41t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x5t
        0xbt
        0x2t
        0x14t
        0x5at
        0xbt
        0x0t
        0x4bt
        0x16t
        0x14t
        0x5at
        0x5t
        0x16t
        0x0t
        0x15t
        0x15t
        0x78t
        0x3t
        0x1ct
    .end array-data

    :array_2f
    .array-data 1
        0x57t
        0xat
        0x51t
        0x11t
        0x57t
        0xat
        0x52t
        0x4at
        0x47t
        0x6t
        0x55t
        0xct
        0x42t
        0x1t
        0x7ct
        0xdt
        0x48t
        0x16t
        0x42t
        0x2ct
        0x5ct
        0x10t
        0x4ct
        0xct
        0x44t
        0x1dt
    .end array-data

    nop

    :array_30
    .array-data 1
        0x54t
        0xft
        0x2t
        0x14t
        0x5bt
        0xct
        0x51t
        0x4ft
        0x15t
        0x3t
        0x58t
        0x3t
        0x71t
        0x8t
        0x15t
        0x16t
        0x58t
        0x4t
        0x4ct
        0x2ft
        0x7t
        0xbt
        0x51t
    .end array-data

    :array_31
    .array-data 1
        0x58t
        0x5dt
        0x52t
        0x40t
        0xbt
        0x51t
        0x5dt
        0x1dt
        0x45t
        0x5at
        0xbt
        0x4ft
        0x7bt
        0x5at
        0x51t
        0x62t
        0xdt
        0x5bt
        0x4dt
        0x46t
        0x44t
        0x57t
        0x33t
        0x50t
        0x5ct
        0x5dt
        0x75t
        0x5dt
        0x8t
        0x54t
        0x58t
        0x43t
        0x45t
        0x57t
        0x0t
    .end array-data

    :array_32
    .array-data 1
        0x57t
        0xct
        0x51t
        0x43t
        0xbt
        0x5at
        0x52t
        0x4ct
        0x46t
        0x59t
        0xbt
        0x44t
        0x75t
        0xat
        0x47t
        0x5et
        0xat
        0x5ct
        0x5bt
        0x7t
        0x41t
        0x54t
        0x16t
    .end array-data

    :array_33
    .array-data 1
        0x54t
        0x5ct
        0x5ct
        0x10t
        0x5bt
        0x5et
        0x51t
        0x1ct
        0x4bt
        0xat
        0x5bt
        0x40t
        0x62t
        0x5at
        0x5dt
        0xct
    .end array-data

    :array_34
    .array-data 1
        0x59t
        0x5bt
        0x54t
        0x44t
        0xdt
        0x5dt
        0x5ct
        0x1bt
        0x59t
        0x55t
        0xdt
        0x5at
    .end array-data

    :array_35
    .array-data 1
        0x54t
        0x5at
        0x0t
        0x42t
        0xat
        0x5et
        0x51t
        0x1at
        0x17t
        0x45t
        0x7t
        0x63t
        0x50t
        0x4ct
        0x10t
    .end array-data

    :array_36
    .array-data 1
        0x3t
        0x5et
        0x55t
        0x10t
        0x5bt
        0x5dt
        0x6t
        0x1et
        0x42t
        0x17t
        0x59t
        0x59t
        0x3t
        0x42t
        0x48t
        0x36t
        0x51t
        0x4ct
        0x16t
    .end array-data

    :array_37
    .array-data 1
        0x3t
        0x5et
        0x56t
        0x45t
        0x5ct
        0x5et
        0x6t
        0x1et
        0x46t
        0x52t
        0x5et
        0x47t
        0xet
        0x51t
        0x46t
        0x52t
    .end array-data

    :array_38
    .array-data 1
        0x50t
        0x59t
        0x57t
        0x43t
        0x5ct
        0x51t
        0x55t
        0x19t
        0x47t
        0x54t
        0x4bt
        0x4ct
    .end array-data

    :array_39
    .array-data 1
        0x59t
        0x56t
        0x5dt
        0x13t
        0x56t
        0x51t
        0x5ct
        0x16t
        0x4dt
        0x4t
        0x41t
        0x4ct
        0x74t
        0x51t
        0x57t
        0x4t
        0x4at
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x57t
        0x5dt
        0x5t
        0x16t
        0xbt
        0x51t
        0x52t
        0x1dt
        0x15t
        0xdt
        0x10t
        0x54t
        0x53t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x58t
        0xat
        0x0t
        0x45t
        0x58t
        0x8t
        0x5dt
        0x4at
        0x10t
        0x5et
        0x43t
        0xdt
        0x5ct
        0x4at
        0x6t
        0x5et
        0x50t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x17t
        0x58t
        0x55t
        0x4t
        0xct
        0x47t
    .end array-data

    nop

    :array_3d
    .array-data 1
        0x0t
        0xdt
        0x55t
        0x40t
        0xat
        0x8t
        0x5t
        0x4dt
        0x58t
        0x5ct
        0x11t
        0x4t
        0xft
        0x17t
        0x1ft
        0x51t
        0x4t
        0x15t
        0x4t
        0x4t
        0x5et
        0x40t
        0x1ct
        0x4ft
        0x2ft
        0x2ct
        0x65t
        0x7bt
        0x23t
        0x28t
        0x22t
        0x22t
        0x65t
        0x7bt
        0x2at
        0x2ft
        0x3et
        0x33t
        0x63t
        0x77t
        0x23t
        0x24t
        0x33t
        0x26t
        0x7ft
        0x71t
        0x20t
        0x32t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 8

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "12c716"

    const-wide v6, 0x41c91a8376800000L    # 8.42335981E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_2
    iget v2, v1, Landroid/app/Notification$Action;->icon:I

    iget-object v3, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3, v1, v0}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x50t
        0x5ct
        0x7t
        0x45t
        0x5et
        0x5ft
        0x55t
        0x1ct
        0x10t
        0x42t
        0x41t
        0x46t
        0x5et
        0x40t
        0x17t
        0x19t
        0x50t
        0x55t
        0x45t
        0x5bt
        0xct
        0x59t
        0x74t
        0x4et
        0x45t
        0x40t
        0x2t
        0x44t
    .end array-data
.end method

.method static getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;
    .locals 15

    const/16 v14, 0x1d

    const/4 v10, 0x1

    const/16 v13, 0x25

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-nez v12, :cond_2

    move-object v6, v7

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-array v1, v13, [B

    fill-array-data v1, :array_0

    const-string v2, "285fda"

    const/16 v3, -0x7838

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v10

    :goto_1
    move v8, v0

    :goto_2
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a857e5"

    const v3, -0x318f2e1e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v9

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v14, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v11

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    if-eqz v0, :cond_7

    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    iget v2, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v1 .. v11}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V

    :goto_4
    return-object v1

    :cond_2
    array-length v0, v12

    new-array v9, v0, [Landroidx/core/app/RemoteInput;

    move v8, v11

    :goto_5
    array-length v0, v12

    if-ge v8, v0, :cond_a

    aget-object v6, v12, v8

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v14, :cond_3

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v5

    :goto_6
    new-instance v0, Landroidx/core/app/RemoteInput;

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v0, v9, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_5

    :cond_3
    move v5, v11

    goto :goto_6

    :cond_4
    move v0, v11

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-array v1, v13, [B

    fill-array-data v1, :array_2

    const-string v2, "edcaf2"

    invoke-static {v1, v2, v11, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-array v1, v13, [B

    fill-array-data v1, :array_3

    const-string v2, "83e1cf"

    invoke-static {v1, v2, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v2, v7

    :goto_7
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v1 .. v11}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIconOrNullIfZeroResId(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    goto :goto_7

    :cond_9
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    iget v2, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v1 .. v11}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V

    goto/16 :goto_4

    :cond_a
    move-object v6, v9

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x56t
        0x51t
        0x14t
        0xbt
        0x8t
        0x56t
        0x16t
        0x46t
        0x13t
        0x14t
        0x11t
        0x5dt
        0x4at
        0x41t
        0x48t
        0x5t
        0xdt
        0x5et
        0x57t
        0x42t
        0x21t
        0x1t
        0xft
        0x57t
        0x4at
        0x54t
        0x12t
        0x1t
        0x5t
        0x60t
        0x5dt
        0x45t
        0xat
        0xdt
        0x4t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x56t
        0x51t
        0x45t
        0xat
        0x5ct
        0x5t
        0x16t
        0x46t
        0x42t
        0x15t
        0x45t
        0xet
        0x4at
        0x41t
        0x19t
        0x4t
        0x56t
        0x15t
        0x51t
        0x5at
        0x59t
        0x4bt
        0x46t
        0x9t
        0x57t
        0x42t
        0x44t
        0x30t
        0x46t
        0x4t
        0x4at
        0x7ct
        0x59t
        0x11t
        0x50t
        0x13t
        0x5et
        0x54t
        0x54t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0xat
        0x7t
        0x13t
        0x9t
        0x5bt
        0x1t
        0x4at
        0x10t
        0x14t
        0x16t
        0x42t
        0xat
        0x16t
        0x17t
        0x4ft
        0x7t
        0x5et
        0x9t
        0xbt
        0x14t
        0x26t
        0x3t
        0x5ct
        0x0t
        0x16t
        0x2t
        0x15t
        0x3t
        0x56t
        0x37t
        0x1t
        0x13t
        0xdt
        0xft
        0x57t
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x59t
        0x5dt
        0x1t
        0x43t
        0xct
        0xft
        0x5ct
        0x1dt
        0x16t
        0x44t
        0x13t
        0x16t
        0x57t
        0x41t
        0x11t
        0x1ft
        0x2t
        0x5t
        0x4ct
        0x5at
        0xat
        0x5ft
        0x4dt
        0x15t
        0x5dt
        0x5et
        0x4t
        0x5ft
        0x17t
        0xft
        0x5bt
        0x72t
        0x6t
        0x45t
        0xat
        0x9t
        0x56t
    .end array-data
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    goto :goto_0
.end method

.method public static getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAutoCancel(Landroid/app/Notification;)Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBadgeIconType(Landroid/app/Notification;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBubbleMetadata(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getColor(Landroid/app/Notification;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification;->color:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentInfo(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/app/NotificationCompat;->EXTRA_INFO_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/app/NotificationCompat;->EXTRA_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/app/NotificationCompat;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "69b038"

    const v3, -0x322f9e9d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    const-string v2, "c8c1f6"

    const/16 v3, 0x481a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x57t
        0x57t
        0x6t
        0x42t
        0x5ct
        0x51t
        0x52t
        0x17t
        0x11t
        0x45t
        0x43t
        0x48t
        0x59t
        0x4bt
        0x16t
        0x1et
        0x54t
        0x4at
        0x59t
        0x4ct
        0x12t
        0x7bt
        0x56t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x56t
        0x7t
        0x43t
        0x9t
        0x5ft
        0x7t
        0x16t
        0x10t
        0x44t
        0x16t
        0x46t
        0xct
        0x4at
        0x17t
        0x1ft
        0x1t
        0x44t
        0xct
        0x4dt
        0x13t
        0x7at
        0x3t
        0x4ft
    .end array-data
.end method

.method public static getGroupAlertBehavior(Landroid/app/Notification;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getHighPriority(Landroid/app/Notification;)Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInvisibleActions(Landroid/app/Notification;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d18403"

    const-wide/32 v4, 0x70bb03cc

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4d58d6"

    const v4, -0x319c9862

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x5t
        0x5ft
        0x5ct
        0x46t
        0x5ft
        0x5at
        0x0t
        0x1ft
        0x5bt
        0x55t
        0x42t
        0x1dt
        0x21t
        0x69t
        0x6ct
        0x71t
        0x7et
        0x60t
        0x2dt
        0x7et
        0x76t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5dt
        0xat
        0x43t
        0x51t
        0x17t
        0x5ft
        0x56t
        0x8t
        0x50t
        0x67t
        0x5t
        0x55t
        0x40t
        0xdt
        0x5at
        0x56t
        0x17t
    .end array-data
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 5

    const/16 v4, 0x19

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3

    :goto_0
    return v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    const-string v4, "530598"

    invoke-static {v3, v4, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const-string v3, "75406e"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x54t
        0x5dt
        0x54t
        0x47t
        0x56t
        0x51t
        0x51t
        0x1dt
        0x43t
        0x40t
        0x49t
        0x48t
        0x5at
        0x41t
        0x44t
        0x1bt
        0x55t
        0x57t
        0x56t
        0x52t
        0x5ct
        0x7at
        0x57t
        0x54t
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x5bt
        0x50t
        0x42t
        0x59t
        0xct
        0x53t
        0x1bt
        0x47t
        0x45t
        0x46t
        0x15t
        0x58t
        0x47t
        0x40t
        0x1et
        0x5at
        0xat
        0x54t
        0x54t
        0x58t
        0x7ft
        0x58t
        0x9t
        0x4et
    .end array-data
.end method

.method public static getLocusId(Landroid/app/Notification;)Landroidx/core/content/LocusIdCompat;
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Landroidx/core/content/LocusIdCompat;->toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    move-result-object v0

    goto :goto_0
.end method

.method static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    instance-of v0, v1, [Landroid/app/Notification;

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v1

    check-cast v0, [Landroid/app/Notification;

    :goto_0
    return-object v0

    :cond_1
    array-length v0, v1

    new-array v3, v0, [Landroid/app/Notification;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_2

    aget-object v0, v1, v2

    check-cast v0, Landroid/app/Notification;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static getOngoing(Landroid/app/Notification;)Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOnlyAlertOnce(Landroid/app/Notification;)Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPeople(Landroid/app/Notification;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/Person;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/app/NotificationCompat;->EXTRA_PEOPLE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    invoke-static {v0}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/app/NotificationCompat;->EXTRA_PEOPLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    if-eqz v0, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Landroidx/core/app/Person$Builder;

    invoke-direct {v5}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static getPublicVersion(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSettingsText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShowWhen(Landroid/app/Notification;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/app/NotificationCompat;->EXTRA_SHOW_WHEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 6

    const/16 v2, 0x17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "05ebae"

    const v3, 0x4eeea566    # 2.0019085E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    const-string v2, "3406dd"

    const-wide/32 v4, -0x5738f35a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x51t
        0x5bt
        0x1t
        0x10t
        0xet
        0xct
        0x54t
        0x1bt
        0x16t
        0x17t
        0x11t
        0x15t
        0x5ft
        0x47t
        0x11t
        0x4ct
        0x12t
        0xat
        0x42t
        0x41t
        0x2et
        0x7t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x5at
        0x54t
        0x44t
        0xbt
        0xdt
        0x57t
        0x1at
        0x43t
        0x43t
        0x14t
        0x14t
        0x5ct
        0x46t
        0x44t
        0x18t
        0x17t
        0xbt
        0x41t
        0x40t
        0x7bt
        0x53t
        0x1dt
    .end array-data
.end method

.method public static getSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/app/NotificationCompat;->EXTRA_SUB_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeoutAfter(Landroid/app/Notification;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getUsesChronometer(Landroid/app/Notification;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/app/NotificationCompat;->EXTRA_SHOW_CHRONOMETER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getVisibility(Landroid/app/Notification;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification;->visibility:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 6

    const/16 v3, 0x1e

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "b6be15"

    const/16 v3, -0x9c0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "aae52f"

    const-wide/32 v4, 0x78f7ed19

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x3t
        0x58t
        0x6t
        0x17t
        0x5et
        0x5ct
        0x6t
        0x18t
        0x11t
        0x10t
        0x41t
        0x45t
        0xdt
        0x44t
        0x16t
        0x4bt
        0x58t
        0x46t
        0x25t
        0x44t
        0xdt
        0x10t
        0x41t
        0x66t
        0x17t
        0x5bt
        0xft
        0x4t
        0x43t
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0xft
        0x1t
        0x47t
        0x5dt
        0xft
        0x5t
        0x4ft
        0x16t
        0x40t
        0x42t
        0x16t
        0xet
        0x13t
        0x11t
        0x1bt
        0x5bt
        0x15t
        0x26t
        0x13t
        0xat
        0x40t
        0x42t
        0x35t
        0x14t
        0xct
        0x8t
        0x54t
        0x40t
        0x1ft
    .end array-data
.end method
