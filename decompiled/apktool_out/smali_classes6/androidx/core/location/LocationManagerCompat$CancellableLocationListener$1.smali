.class Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->startTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;


# direct methods
.method constructor <init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$1;->this$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$1;->this$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    iput-object v0, v1, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$1;->this$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
