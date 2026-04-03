.class Lcom/google/firebase/database/android/AndroidPlatform$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/AndroidPlatform;->newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/android/AndroidPlatform;

.field final val$connection:Lcom/google/firebase/database/connection/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/connection/PersistentConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->this$0:Lcom/google/firebase/database/android/AndroidPlatform;

    iput-object p2, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->val$connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStateChanged(Z)V
    .locals 4

    const/16 v1, 0x11

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->val$connection:Lcom/google/firebase/database/connection/PersistentConnection;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "404c2c"

    const v3, -0x3105f8fb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnection;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->val$connection:Lcom/google/firebase/database/connection/PersistentConnection;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e0d0c5"

    const/16 v3, -0x7f8c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnection;->resume(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x55t
        0x40t
        0x44t
        0x3ct
        0x5bt
        0xdt
        0x6bt
        0x52t
        0x55t
        0x0t
        0x59t
        0x4t
        0x46t
        0x5ft
        0x41t
        0xdt
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x40t
        0x14t
        0x6ft
        0xat
        0x5bt
        0x3at
        0x52t
        0x5t
        0x53t
        0x8t
        0x52t
        0x17t
        0x5ft
        0x11t
        0x5et
        0x7t
    .end array-data
.end method
