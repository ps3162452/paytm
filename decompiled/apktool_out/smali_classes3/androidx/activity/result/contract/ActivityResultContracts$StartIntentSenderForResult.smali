.class public final Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartIntentSenderForResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Landroidx/activity/result/IntentSenderRequest;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_SENDER_REQUEST:Ljava/lang/String;

.field public static final EXTRA_INTENT_SENDER_REQUEST:Ljava/lang/String;

.field public static final EXTRA_SEND_INTENT_EXCEPTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x3d

    const/4 v2, 0x1

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "05061e"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->ACTION_INTENT_SENDER_REQUEST:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "4f8f53"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->EXTRA_INTENT_SENDER_REQUEST:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "5e9420"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->EXTRA_SEND_INTENT_EXCEPTION:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0x5bt
        0x54t
        0x44t
        0x5et
        0xct
        0x54t
        0x4dt
        0x1et
        0x57t
        0x52t
        0x11t
        0x59t
        0x43t
        0x59t
        0x42t
        0x48t
        0x4bt
        0x42t
        0x50t
        0x43t
        0x43t
        0x5dt
        0x11t
        0x1et
        0x56t
        0x5ft
        0x58t
        0x45t
        0x17t
        0x51t
        0x56t
        0x44t
        0x18t
        0x50t
        0x6t
        0x44t
        0x5ct
        0x5ft
        0x58t
        0x1ft
        0x2ct
        0x7et
        0x61t
        0x75t
        0x78t
        0x65t
        0x3at
        0x63t
        0x70t
        0x7et
        0x72t
        0x74t
        0x37t
        0x6ft
        0x67t
        0x75t
        0x67t
        0x64t
        0x20t
        0x63t
        0x61t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x8t
        0x5ct
        0x14t
        0x5at
        0x5at
        0x50t
        0x1et
        0x16t
        0x7t
        0x56t
        0x47t
        0x5dt
        0x10t
        0x51t
        0x12t
        0x4ct
        0x1dt
        0x46t
        0x3t
        0x4bt
        0x13t
        0x59t
        0x47t
        0x1at
        0x5t
        0x57t
        0x8t
        0x41t
        0x41t
        0x55t
        0x5t
        0x4ct
        0x48t
        0x50t
        0x4bt
        0x40t
        0x14t
        0x59t
        0x48t
        0x7ct
        0x7dt
        0x60t
        0x23t
        0x76t
        0x32t
        0x6at
        0x60t
        0x71t
        0x28t
        0x7ct
        0x23t
        0x67t
        0x6ct
        0x66t
        0x23t
        0x69t
        0x33t
        0x70t
        0x60t
        0x60t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x54t
        0xbt
        0x5dt
        0x46t
        0x5dt
        0x59t
        0x51t
        0x1dt
        0x17t
        0x55t
        0x51t
        0x44t
        0x5ct
        0x13t
        0x50t
        0x40t
        0x4bt
        0x1et
        0x47t
        0x0t
        0x4at
        0x41t
        0x5et
        0x44t
        0x1bt
        0x6t
        0x56t
        0x5at
        0x46t
        0x42t
        0x54t
        0x6t
        0x4dt
        0x1at
        0x57t
        0x48t
        0x41t
        0x17t
        0x58t
        0x1at
        0x61t
        0x75t
        0x7bt
        0x21t
        0x66t
        0x7dt
        0x7ct
        0x64t
        0x70t
        0x2bt
        0x6dt
        0x6bt
        0x77t
        0x68t
        0x76t
        0x20t
        0x69t
        0x60t
        0x7bt
        0x7ft
        0x7bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->ACTION_INTENT_SENDER_REQUEST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->EXTRA_INTENT_SENDER_REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->createIntent(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;

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

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->parseResult(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;

    move-result-object v0

    return-object v0
.end method
