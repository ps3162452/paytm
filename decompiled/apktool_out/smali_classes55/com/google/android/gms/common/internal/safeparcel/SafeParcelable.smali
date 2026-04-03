.class public interface abstract Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Indicator;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$RemovedParam;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;,
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d970a4"

    const-wide v2, 0x41c3751d1b000000L    # 6.52884534E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->NULL:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x78t
        0x71t
        0x75t
        0x3et
        0x64t
        0x25t
        0x6bt
        0x74t
        0x75t
        0x2dt
        0x75t
        0x26t
        0x75t
        0x72t
        0x6ft
        0x2ft
        0x61t
        0x28t
        0x75t
        0x68t
        0x63t
        0x35t
        0x66t
        0x2dt
        0x77t
        0x70t
    .end array-data
.end method
