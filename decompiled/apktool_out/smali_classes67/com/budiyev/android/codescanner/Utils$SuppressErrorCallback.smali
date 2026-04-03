.class public final Lcom/budiyev/android/codescanner/Utils$SuppressErrorCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/budiyev/android/codescanner/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppressErrorCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
