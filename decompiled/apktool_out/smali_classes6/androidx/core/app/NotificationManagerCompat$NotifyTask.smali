.class Landroidx/core/app/NotificationManagerCompat$NotifyTask;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/app/NotificationManagerCompat$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyTask"
.end annotation


# instance fields
.field final id:I

.field final notif:Landroid/app/Notification;

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    iput p2, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    iput-object p3, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    iput-object p4, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    iget-object v3, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "96ef5c"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "86df29"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "069cf3"

    const-wide/32 v4, 0x5aa4a852

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "4d62d6"

    const-wide v4, 0x41d14ea1e5000000L    # 1.1614637E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x3f

    aput-byte v2, v1, v3

    const-string v2, "be39a3"

    const/16 v3, 0x4f72

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x77t
        0x59t
        0x11t
        0xft
        0x53t
        0x1at
        0x6dt
        0x57t
        0x16t
        0xdt
        0x6et
    .end array-data

    :array_1
    .array-data 1
        0x48t
        0x57t
        0x7t
        0xdt
        0x53t
        0x5et
        0x5dt
        0x78t
        0x5t
        0xbt
        0x57t
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x1ct
        0x16t
        0x50t
        0x7t
        0x5ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x18t
        0x44t
        0x42t
        0x53t
        0x3t
        0xct
    .end array-data
.end method
