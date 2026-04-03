.class Lcom/google/firebase/database/core/ThreadInitializer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/ThreadInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/ThreadInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDaemon(Ljava/lang/Thread;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
