.class public Landroidx/core/app/AppLaunchChecker;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String;

.field private static final SHARED_PREFS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0a1555"

    const-wide v2, -0x3e3d767fce800000L    # -6.22002275E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/AppLaunchChecker;->KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "d0a2df"

    const-wide v2, 0x41db8a16c9800000L    # 1.848138534E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/AppLaunchChecker;->SHARED_PREFS_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x15t
        0x50t
        0x47t
        0x41t
        0x50t
        0x54t
        0x27t
        0x43t
        0x5at
        0x58t
        0x79t
        0x51t
        0x14t
        0x5ft
        0x56t
        0x5dt
        0x50t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x5et
        0x5t
        0x40t
        0xbt
        0xft
        0x0t
        0x1et
        0x12t
        0x47t
        0x14t
        0x16t
        0xbt
        0x42t
        0x15t
        0x1ct
        0x25t
        0x16t
        0x14t
        0x7ct
        0x0t
        0x47t
        0xat
        0x5t
        0xct
        0x73t
        0x9t
        0x57t
        0x7t
        0xdt
        0x1t
        0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasStartedFromLauncher(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroidx/core/app/AppLaunchChecker;->SHARED_PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Landroidx/core/app/AppLaunchChecker;->KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Landroidx/core/app/AppLaunchChecker;->SHARED_PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Landroidx/core/app/AppLaunchChecker;->KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a003b4"

    const-wide v4, 0x41c1a98374000000L    # 5.92643816E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e38d60"

    const v4, -0x32b026c8    # -2.1794496E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "3bd509"

    const v4, 0x4e175205    # 6.346837E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Landroidx/core/app/AppLaunchChecker;->KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x5et
        0x54t
        0x41t
        0xdt
        0x5dt
        0x5t
        0x1et
        0x59t
        0x5dt
        0x16t
        0x51t
        0xft
        0x44t
        0x1et
        0x52t
        0x1t
        0x40t
        0x8t
        0x5ft
        0x5et
        0x1dt
        0x2ft
        0x75t
        0x28t
        0x7et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x5dt
        0x5ct
        0x16t
        0x59t
        0x59t
        0x1t
        0x1dt
        0x51t
        0xat
        0x42t
        0x55t
        0xbt
        0x47t
        0x16t
        0x7t
        0x57t
        0x44t
        0x0t
        0x54t
        0x57t
        0x16t
        0x4ft
        0x1et
        0x29t
        0x72t
        0x6dt
        0x2at
        0x75t
        0x78t
        0x20t
        0x61t
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0xct
        0x0t
        0x47t
        0x5ft
        0x50t
        0x57t
        0x4ct
        0xdt
        0x5bt
        0x44t
        0x5ct
        0x5dt
        0x16t
        0x4at
        0x56t
        0x51t
        0x4dt
        0x56t
        0x5t
        0xbt
        0x47t
        0x49t
        0x17t
        0x7ft
        0x27t
        0x25t
        0x7bt
        0x72t
        0x78t
        0x70t
        0x29t
        0x3bt
        0x79t
        0x71t
        0x6ct
        0x7dt
        0x21t
        0x2ct
        0x70t
        0x62t
    .end array-data
.end method
