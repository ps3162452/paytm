.class public abstract Landroidx/core/content/UnusedAppRestrictionsBackportService;
.super Landroid/app/Service;


# static fields
.field public static final ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION:Ljava/lang/String;


# instance fields
.field private mBinder:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0e012c"

    const v2, -0x31d8abb1    # -7.018301E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0xbt
        0x54t
        0x43t
        0x5dt
        0xat
        0x54t
        0x4bt
        0x43t
        0x44t
        0x42t
        0x13t
        0x5ft
        0x17t
        0x44t
        0x1ft
        0x47t
        0xdt
        0x45t
        0x16t
        0x55t
        0x55t
        0x53t
        0x13t
        0x40t
        0x17t
        0x55t
        0x42t
        0x46t
        0x11t
        0x59t
        0x6t
        0x44t
        0x58t
        0x5dt
        0xdt
        0x43t
        0x4bt
        0x51t
        0x52t
        0x46t
        0xat
        0x5ft
        0xbt
        0x1et
        0x72t
        0x47t
        0x10t
        0x44t
        0xat
        0x5dt
        0x64t
        0x5ct
        0x16t
        0x43t
        0x0t
        0x54t
        0x70t
        0x42t
        0x13t
        0x62t
        0x0t
        0x43t
        0x45t
        0x40t
        0xat
        0x53t
        0x11t
        0x59t
        0x5et
        0x5ct
        0x10t
        0x72t
        0x4t
        0x53t
        0x5at
        0x42t
        0xct
        0x42t
        0x11t
        0x63t
        0x54t
        0x40t
        0x15t
        0x59t
        0x6t
        0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;

    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportService;)V

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->mBinder:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;

    return-void
.end method


# virtual methods
.method protected abstract isPermissionRevocationEnabled(Landroidx/core/content/UnusedAppRestrictionsBackportCallback;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->mBinder:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;

    return-object v0
.end method
