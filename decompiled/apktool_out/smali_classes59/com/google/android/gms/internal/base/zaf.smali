.class public final Lcom/google/android/gms/internal/base/zaf;
.super Ljava/lang/Object;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/Feature;

.field public static final zab:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0b80fe"

    const v3, 0x4e9920cb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/base/zaf;->zaa:Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/base/zaf;->zab:[Lcom/google/android/gms/common/Feature;

    return-void

    :array_0
    .array-data 1
        0x73t
        0x2et
        0x71t
        0x75t
        0x28t
        0x31t
        0x6ft
        0x36t
        0x7dt
        0x7ct
        0x23t
        0x28t
        0x75t
        0x36t
        0x6at
        0x69t
    .end array-data
.end method
