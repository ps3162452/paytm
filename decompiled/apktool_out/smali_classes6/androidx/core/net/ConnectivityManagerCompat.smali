.class public final Landroidx/core/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/net/ConnectivityManagerCompat$RestrictBackgroundStatus;
    }
.end annotation


# static fields
.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f675ad"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x8t
        0x53t
        0x43t
        0x42t
        0xet
        0x16t
        0xdt
        0x7ft
        0x59t
        0x53t
        0xet
    .end array-data
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
