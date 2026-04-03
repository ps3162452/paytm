.class final Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyServiceMapHolder"
.end annotation


# static fields
.field static final SERVICES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/16 v7, 0xc

    const/4 v6, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/telephony/SubscriptionManager;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "53dd03"

    const-wide v4, 0x41d422724b000000L    # 1.351207212E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/usage/UsageStatsManager;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4aace6"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const-class v1, Landroid/appwidget/AppWidgetManager;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "24307a"

    const v4, 0x4ee50ff8

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/BatteryManager;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "dd7890"

    const/16 v4, -0x9d5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    new-array v2, v10, [B

    fill-array-data v2, :array_4

    const-string v3, "20bd30"

    const v4, -0x31bd37a1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/job/JobScheduler;

    new-array v2, v7, [B

    fill-array-data v2, :array_5

    const-string v3, "6e6593"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/content/pm/LauncherApps;

    new-array v2, v7, [B

    fill-array-data v2, :array_6

    const-string v3, "e5cb4d"

    const-wide v4, -0x3e214f3cd3800000L    # -2.059603122E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "08b7ba"

    const-wide/32 v4, -0x7d4b1fae

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/media/session/MediaSessionManager;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const-string v3, "148d83"

    const-wide v4, 0x41d723eca5c00000L    # 1.552921239E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/content/RestrictionsManager;

    new-array v2, v7, [B

    fill-array-data v2, :array_9

    const-string v3, "9ca2c9"

    const/16 v4, 0xf12

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/telecom/TelecomManager;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "f45eff"

    invoke-static {v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/media/tv/TvInputManager;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v3, "be34d5"

    invoke-static {v2, v3, v8, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    const-class v1, Landroid/app/AppOpsManager;

    new-array v2, v10, [B

    fill-array-data v2, :array_c

    const-string v3, "88a3be"

    const v4, -0x3139c336

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const-string v3, "8b0b08"

    const-wide/32 v4, 0x491f230d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/hardware/ConsumerIrManager;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v3, "e14eb9"

    const-wide v4, 0x41cbdb6217800000L    # 9.34724655E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/print/PrintManager;

    new-array v2, v9, [B

    fill-array-data v2, :array_f

    const-string v3, "29fc06"

    const/16 v4, -0x3818

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    const-class v1, Landroid/bluetooth/BluetoothManager;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_10

    const-string v3, "3a3cdc"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    const-class v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_11

    const-string v3, "8c9b2a"

    const-wide/32 v4, -0x1b58e717

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/UserManager;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_12

    const-string v3, "e17689"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_5

    const-class v1, Landroid/hardware/input/InputManager;

    new-array v2, v9, [B

    fill-array-data v2, :array_13

    const-string v3, "c46ede"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/media/MediaRouter;

    new-array v2, v7, [B

    fill-array-data v2, :array_14

    const-string v3, "47c924"

    const/16 v4, -0x55ec

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/net/nsd/NsdManager;

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_15

    const-string v3, "f78791"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_16

    const-string v3, "64c1eb"

    const-wide/32 v4, -0x7dfea3e3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/accounts/AccountManager;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_17

    const-string v3, "717561"

    const/16 v4, 0xc1a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/ActivityManager;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_18

    const-string v3, "cc4ccd"

    const-wide/32 v4, 0x60fe56f8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/AlarmManager;

    new-array v2, v9, [B

    fill-array-data v2, :array_19

    const-string v3, "6ff448"

    const-wide v4, -0x3e2a268e2cc00000L    # -1.466287949E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/media/AudioManager;

    new-array v2, v9, [B

    fill-array-data v2, :array_1a

    const-string v3, "13d73b"

    const-wide v4, -0x3e22a08f60800000L    # -1.971176062E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/content/ClipboardManager;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1b

    const-string v3, "6996ea"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/net/ConnectivityManager;

    new-array v2, v7, [B

    fill-array-data v2, :array_1c

    const-string v3, "5aada7"

    const-wide/32 v4, -0x62921c20

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1d

    const-string v3, "1879b4"

    const-wide v4, 0x41d73ad945400000L    # 1.558930709E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/DownloadManager;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1e

    const-string v3, "1788cf"

    const/16 v4, -0x7590

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/DropBoxManager;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1f

    const-string v3, "fd3527"

    const v4, -0x3160ce17

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    new-array v2, v7, [B

    fill-array-data v2, :array_20

    const-string v3, "8e1a56"

    const-wide/32 v4, 0x3adf39e8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/KeyguardManager;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_21

    const-string v3, "a323b8"

    const-wide v4, 0x41d5dc9e4dc00000L    # 1.467119927E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/view/LayoutInflater;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_22

    const-string v3, "72fc34"

    const-wide v4, 0x41d2b18f86800000L    # 1.25450601E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/location/LocationManager;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_23

    const-string v3, "d32404"

    const-wide/32 v4, 0x60165676

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/nfc/NfcManager;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_24

    const-string v3, "ccdae3"

    const/16 v4, 0x32b3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/NotificationManager;

    new-array v2, v7, [B

    fill-array-data v2, :array_25

    const-string v3, "55cae8"

    const-wide v4, 0x41b6498487000000L    # 3.73916807E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/PowerManager;

    new-array v2, v9, [B

    fill-array-data v2, :array_26

    const-string v3, "1c7896"

    const/16 v4, -0x2368

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/SearchManager;

    new-array v2, v10, [B

    fill-array-data v2, :array_27

    const-string v3, "ef8a8d"

    const v4, 0x4e9c0d03

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/hardware/SensorManager;

    new-array v2, v10, [B

    fill-array-data v2, :array_28

    const-string v3, "a4033c"

    invoke-static {v2, v3, v6, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_29

    const-string v3, "364a12"

    const/16 v4, -0x1d35

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/telephony/TelephonyManager;

    new-array v2, v9, [B

    fill-array-data v2, :array_2a

    const-string v3, "abbe0d"

    const-wide v4, -0x3e2ad5ff46000000L    # -1.420296936E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/view/textservice/TextServicesManager;

    new-array v2, v7, [B

    fill-array-data v2, :array_2b

    const-string v3, "8b36bf"

    const-wide v4, 0x41926ec574000000L    # 7.7312349E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/UiModeManager;

    new-array v2, v10, [B

    fill-array-data v2, :array_2c

    const-string v3, "199611"

    const-wide/32 v4, 0x5f0045e9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/hardware/usb/UsbManager;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_2d

    const-string v3, "5ecaf4"

    const-wide v4, -0x3e2416a779400000L    # -1.873109531E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/Vibrator;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_2e

    const-string v3, "ce1fe0"

    invoke-static {v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/app/WallpaperManager;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_2f

    const-string v3, "c83b0f"

    const-wide v4, 0x41d367fa64c00000L    # 1.302325651E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_30

    const-string v3, "77e666"

    const v4, 0x4d451eb4    # 2.0669523E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_31

    const-string v3, "4c03b8"

    const-wide v4, 0x41dce498ac000000L    # 1.93897336E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/view/WindowManager;

    new-array v2, v10, [B

    fill-array-data v2, :array_32

    const-string v3, "df5c3c"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x41t
        0x56t
        0x8t
        0x1t
        0x40t
        0x5bt
        0x5at
        0x5dt
        0x1dt
        0x3bt
        0x43t
        0x46t
        0x57t
        0x40t
        0x7t
        0x16t
        0x59t
        0x43t
        0x41t
        0x5at
        0xbt
        0xat
        0x6ft
        0x40t
        0x50t
        0x41t
        0x12t
        0xdt
        0x53t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x12t
        0x0t
        0x4t
        0x0t
        0x45t
        0x40t
        0x0t
        0x15t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x53t
        0x44t
        0x43t
        0x47t
        0x5et
        0x5t
        0x55t
        0x51t
        0x47t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x6t
        0x5t
        0x43t
        0x4ct
        0x5ct
        0x42t
        0x1dt
        0x9t
        0x56t
        0x56t
        0x58t
        0x57t
        0x1t
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x51t
        0x51t
        0xft
        0x1t
        0x41t
        0x51t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5ct
        0xat
        0x54t
        0x46t
        0x5at
        0x5bt
        0x53t
        0x1t
        0x43t
        0x59t
        0x5ct
        0x41t
    .end array-data

    :array_6
    .array-data 1
        0x9t
        0x54t
        0x16t
        0xct
        0x57t
        0xct
        0x0t
        0x47t
        0x2t
        0x12t
        0x44t
        0x17t
    .end array-data

    :array_7
    .array-data 1
        0x5dt
        0x5dt
        0x6t
        0x5et
        0x3t
        0x3et
        0x40t
        0x4at
        0xdt
        0x5dt
        0x7t
        0x2t
        0x44t
        0x51t
        0xdt
        0x59t
    .end array-data

    :array_8
    .array-data 1
        0x5ct
        0x51t
        0x5ct
        0xdt
        0x59t
        0x6ct
        0x42t
        0x51t
        0x4bt
        0x17t
        0x51t
        0x5ct
        0x5ft
    .end array-data

    nop

    :array_9
    .array-data 1
        0x4bt
        0x6t
        0x12t
        0x46t
        0x11t
        0x50t
        0x5at
        0x17t
        0x8t
        0x5dt
        0xdt
        0x4at
    .end array-data

    :array_a
    .array-data 1
        0x12t
        0x51t
        0x59t
        0x0t
        0x5t
        0x9t
        0xbt
    .end array-data

    :array_b
    .array-data 1
        0x16t
        0x13t
        0x6ct
        0x5dt
        0xat
        0x45t
        0x17t
        0x11t
    .end array-data

    :array_c
    .array-data 1
        0x59t
        0x48t
        0x11t
        0x5ct
        0x12t
        0x16t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x5bt
        0x3t
        0x40t
        0x16t
        0x59t
        0x57t
        0x56t
        0xbt
        0x5et
        0x5t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x6t
        0x5et
        0x5at
        0x16t
        0x17t
        0x54t
        0x0t
        0x43t
        0x6bt
        0xct
        0x10t
    .end array-data

    :array_f
    .array-data 1
        0x42t
        0x4bt
        0xft
        0xdt
        0x44t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x51t
        0xdt
        0x46t
        0x6t
        0x10t
        0xct
        0x5ct
        0x15t
        0x5bt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x5ct
        0xat
        0x4at
        0x12t
        0x5et
        0x0t
        0x41t
    .end array-data

    :array_12
    .array-data 1
        0x10t
        0x42t
        0x52t
        0x44t
    .end array-data

    :array_13
    .array-data 1
        0xat
        0x5at
        0x46t
        0x10t
        0x10t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x59t
        0x52t
        0x7t
        0x50t
        0x53t
        0x6bt
        0x46t
        0x58t
        0x16t
        0x4dt
        0x57t
        0x46t
    .end array-data

    :array_15
    .array-data 1
        0x15t
        0x52t
        0x4at
        0x41t
        0x50t
        0x52t
        0x3t
        0x53t
        0x51t
        0x44t
        0x5at
        0x5et
        0x10t
        0x52t
        0x4at
        0x4et
    .end array-data

    :array_16
    .array-data 1
        0x57t
        0x57t
        0x0t
        0x54t
        0x16t
        0x11t
        0x5ft
        0x56t
        0xat
        0x5dt
        0xct
        0x16t
        0x4ft
    .end array-data

    nop

    :array_17
    .array-data 1
        0x56t
        0x52t
        0x54t
        0x5at
        0x43t
        0x5ft
        0x43t
    .end array-data

    :array_18
    .array-data 1
        0x2t
        0x0t
        0x40t
        0xat
        0x15t
        0xdt
        0x17t
        0x1at
    .end array-data

    :array_19
    .array-data 1
        0x57t
        0xat
        0x7t
        0x46t
        0x59t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x50t
        0x46t
        0x0t
        0x5et
        0x5ct
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x55t
        0x55t
        0x50t
        0x46t
        0x7t
        0xet
        0x57t
        0x4bt
        0x5dt
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x56t
        0xet
        0xft
        0xat
        0x4t
        0x54t
        0x41t
        0x8t
        0x17t
        0xdt
        0x15t
        0x4et
    .end array-data

    :array_1d
    .array-data 1
        0x55t
        0x5dt
        0x41t
        0x50t
        0x1t
        0x51t
        0x6et
        0x48t
        0x58t
        0x55t
        0xbt
        0x57t
        0x48t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x55t
        0x58t
        0x4ft
        0x56t
        0xft
        0x9t
        0x50t
        0x53t
    .end array-data

    :array_1f
    .array-data 1
        0x2t
        0x16t
        0x5ct
        0x45t
        0x50t
        0x58t
        0x1et
    .end array-data

    :array_20
    .array-data 1
        0x51t
        0xbt
        0x41t
        0x14t
        0x41t
        0x69t
        0x55t
        0x0t
        0x45t
        0x9t
        0x5at
        0x52t
    .end array-data

    :array_21
    .array-data 1
        0xat
        0x56t
        0x4bt
        0x54t
        0x17t
        0x59t
        0x13t
        0x57t
    .end array-data

    :array_22
    .array-data 1
        0x5bt
        0x53t
        0x1ft
        0xct
        0x46t
        0x40t
        0x68t
        0x5bt
        0x8t
        0x5t
        0x5ft
        0x55t
        0x43t
        0x57t
        0x14t
    .end array-data

    :array_23
    .array-data 1
        0x8t
        0x5ct
        0x51t
        0x55t
        0x44t
        0x5dt
        0xbt
        0x5dt
    .end array-data

    :array_24
    .array-data 1
        0xdt
        0x5t
        0x7t
    .end array-data

    :array_25
    .array-data 1
        0x5bt
        0x5at
        0x17t
        0x8t
        0x3t
        0x51t
        0x56t
        0x54t
        0x17t
        0x8t
        0xat
        0x56t
    .end array-data

    :array_26
    .array-data 1
        0x41t
        0xct
        0x40t
        0x5dt
        0x4bt
    .end array-data

    nop

    :array_27
    .array-data 1
        0x16t
        0x3t
        0x59t
        0x13t
        0x5bt
        0xct
    .end array-data

    nop

    :array_28
    .array-data 1
        0x12t
        0x51t
        0x5et
        0x40t
        0x5ct
        0x11t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x40t
        0x42t
        0x5bt
        0x13t
        0x50t
        0x55t
        0x56t
    .end array-data

    :array_2a
    .array-data 1
        0x11t
        0xat
        0xdt
        0xbt
        0x55t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x4ct
        0x7t
        0x4bt
        0x42t
        0x11t
        0x3t
        0x4at
        0x14t
        0x5at
        0x55t
        0x7t
        0x15t
    .end array-data

    :array_2c
    .array-data 1
        0x44t
        0x50t
        0x54t
        0x59t
        0x55t
        0x54t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x40t
        0x16t
        0x1t
    .end array-data

    :array_2e
    .array-data 1
        0x15t
        0xct
        0x53t
        0x14t
        0x4t
        0x44t
        0xct
        0x17t
    .end array-data

    :array_2f
    .array-data 1
        0x14t
        0x59t
        0x5ft
        0xet
        0x40t
        0x7t
        0x13t
        0x5dt
        0x41t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x40t
        0x5et
        0x3t
        0x5ft
        0x46t
        0x4t
        0x47t
    .end array-data

    :array_31
    .array-data 1
        0x43t
        0xat
        0x56t
        0x5at
    .end array-data

    :array_32
    .array-data 1
        0x13t
        0xft
        0x5bt
        0x7t
        0x5ct
        0x14t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
