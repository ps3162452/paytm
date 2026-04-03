.class final Lcom/google/android/gms/dynamic/zae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final zaa:Landroid/content/Context;

.field final zab:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zae;->zaa:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zae;->zab:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zae;->zaa:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zae;->zab:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3043ec"

    const v3, -0x31c4a027

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "5bddf4"

    const-wide v4, -0x3e2c1d9c75800000L    # -1.33441489E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x77t
        0x55t
        0x52t
        0x56t
        0x17t
        0x11t
        0x56t
        0x54t
        0x78t
        0x5at
        0x3t
        0x6t
        0x50t
        0x49t
        0x57t
        0x5ft
        0x0t
        0x2bt
        0x56t
        0x5ct
        0x44t
        0x56t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x3t
        0xdt
        0x8t
        0x3t
        0x50t
        0x15t
        0x16t
        0xbt
        0x44t
        0x15t
        0x40t
        0x54t
        0x10t
        0x10t
        0x44t
        0x14t
        0x51t
        0x46t
        0xdt
        0x8t
        0x11t
        0x12t
        0x5dt
        0x5at
        0xct
        0x44t
        0xdt
        0x8t
        0x40t
        0x50t
        0xct
        0x10t
    .end array-data
.end method
