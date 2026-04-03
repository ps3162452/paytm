.class public abstract Lcom/google/android/gms/common/stats/StatsEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/stats/StatsEvent$Types;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->zzb()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->zza()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->zzc()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "95c0d8"

    const-wide/32 v6, -0x5aaa48d3

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x30t
        0x18t
        0x52t
    .end array-data
.end method

.method public abstract zza()I
.end method

.method public abstract zzb()J
.end method

.method public abstract zzc()Ljava/lang/String;
.end method
