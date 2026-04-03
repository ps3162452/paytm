.class final Lcom/google/android/gms/common/api/internal/zabh;
.super Lcom/google/android/gms/internal/base/zau;


# instance fields
.field final zaa:Lcom/google/android/gms/common/api/internal/zabi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabi;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabh;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2aed1a"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "3f5bb4"

    const v3, -0x310e9a06

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabh;->zaa:Lcom/google/android/gms/common/api/internal/zabi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabg;->zab(Lcom/google/android/gms/common/api/internal/zabi;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x67t
        0xft
        0xet
        0xat
        0x5et
        0x16t
        0x5ct
        0x41t
        0x8t
        0x1t
        0x42t
        0x12t
        0x53t
        0x6t
        0x0t
        0x44t
        0x58t
        0x5t
        0x8t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x27t
        0x76t
        0x31t
        0x16t
        0x55t
        0x47t
        0x3t
        0x78t
        0x3t
        0xct
        0x55t
        0x54t
        0x3t
        0x47t
    .end array-data
.end method
