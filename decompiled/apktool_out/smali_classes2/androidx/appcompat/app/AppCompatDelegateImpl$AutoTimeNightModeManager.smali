.class Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoTimeNightModeManager"
.end annotation


# instance fields
.field private final mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field final this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    return-void
.end method


# virtual methods
.method createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ce9514"

    const v3, -0x313b8510

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a7ddde"

    const-wide v4, 0x41c0ad0e1c800000L    # 5.59553593E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "90bf93"

    const/16 v3, -0x5148

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 1
        0x2t
        0xbt
        0x5dt
        0x47t
        0x5et
        0x5dt
        0x7t
        0x4bt
        0x50t
        0x5bt
        0x45t
        0x51t
        0xdt
        0x11t
        0x17t
        0x54t
        0x52t
        0x40t
        0xat
        0xat
        0x57t
        0x1bt
        0x65t
        0x7dt
        0x2et
        0x20t
        0x66t
        0x66t
        0x74t
        0x60t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x59t
        0x0t
        0x16t
        0xbt
        0xct
        0x5t
        0x19t
        0xdt
        0xat
        0x10t
        0x0t
        0xft
        0x43t
        0x4at
        0x5t
        0x7t
        0x11t
        0x8t
        0x58t
        0xat
        0x4at
        0x30t
        0x2ct
        0x2ct
        0x72t
        0x3et
        0x2bt
        0x2at
        0x20t
        0x3et
        0x74t
        0x2ct
        0x25t
        0x2at
        0x22t
        0x24t
        0x73t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x58t
        0x5et
        0x6t
        0x14t
        0x56t
        0x5at
        0x5dt
        0x1et
        0xbt
        0x8t
        0x4dt
        0x56t
        0x57t
        0x44t
        0x4ct
        0x7t
        0x5at
        0x47t
        0x50t
        0x5ft
        0xct
        0x48t
        0x6dt
        0x7at
        0x74t
        0x75t
        0x3dt
        0x32t
        0x70t
        0x70t
        0x72t
    .end array-data
.end method

.method public getApplyableNightMode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    invoke-virtual {v0}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onChange()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method
