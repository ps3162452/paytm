.class public final Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartActivityForResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Landroid/content/Intent;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_ACTIVITY_OPTIONS_BUNDLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1a1913"

    const v2, -0x31c4b1ee

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;->EXTRA_ACTIVITY_OPTIONS_BUNDLE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0xft
        0x55t
        0x4bt
        0x5et
        0x5at
        0x55t
        0x19t
        0x1ft
        0x58t
        0x52t
        0x47t
        0x58t
        0x17t
        0x58t
        0x4dt
        0x48t
        0x1dt
        0x43t
        0x4t
        0x42t
        0x4ct
        0x5dt
        0x47t
        0x1ft
        0x2t
        0x5et
        0x57t
        0x45t
        0x41t
        0x50t
        0x2t
        0x45t
        0x17t
        0x54t
        0x4bt
        0x45t
        0x13t
        0x50t
        0x17t
        0x70t
        0x70t
        0x65t
        0x28t
        0x67t
        0x70t
        0x65t
        0x6at
        0x6et
        0x2et
        0x61t
        0x6dt
        0x78t
        0x7ct
        0x7ft
        0x32t
        0x6et
        0x7bt
        0x64t
        0x7dt
        0x75t
        0x2dt
        0x74t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p2
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;->createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;
    .locals 1

    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;->parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;

    move-result-object v0

    return-object v0
.end method
