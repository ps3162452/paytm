.class Landroidx/activity/ComponentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$1;->this$0:Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8934d6"

    const-wide v4, 0x41c3d1bd36000000L    # 6.65025132E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    :array_0
    .array-data 1
        0x7bt
        0x58t
        0x5dt
        0x14t
        0xat
        0x59t
        0x4ct
        0x19t
        0x43t
        0x51t
        0x16t
        0x50t
        0x57t
        0x4bt
        0x5et
        0x14t
        0x10t
        0x5et
        0x51t
        0x4at
        0x13t
        0x55t
        0x7t
        0x42t
        0x51t
        0x56t
        0x5dt
        0x14t
        0x5t
        0x50t
        0x4ct
        0x5ct
        0x41t
        0x14t
        0xbt
        0x58t
        0x6bt
        0x58t
        0x45t
        0x51t
        0x2dt
        0x58t
        0x4bt
        0x4dt
        0x52t
        0x5at
        0x7t
        0x53t
        0x6bt
        0x4dt
        0x52t
        0x40t
        0x1t
    .end array-data
.end method
