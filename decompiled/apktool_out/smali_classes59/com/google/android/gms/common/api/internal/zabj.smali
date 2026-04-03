.class public final Lcom/google/android/gms/common/api/internal/zabj;
.super Ljava/lang/Object;


# static fields
.field private static final zaa:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/base/zat;->zaa()Lcom/google/android/gms/internal/base/zaq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bc06c2"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v1, v5}, Lcom/google/android/gms/internal/base/zaq;->zac(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/zabj;->zaa:Ljava/util/concurrent/ExecutorService;

    return-void

    nop

    :array_0
    .array-data 1
        0x25t
        0x22t
        0x73t
        0x69t
        0x26t
        0x4at
        0x7t
        0x0t
        0x45t
        0x42t
        0xct
        0x40t
    .end array-data
.end method

.method public static zaa()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zabj;->zaa:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
