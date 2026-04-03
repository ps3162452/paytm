.class public Lcom/google/android/gms/common/internal/ClientIdentity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ClientIdentity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ClientIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/ClientIdentity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/ClientIdentity;

    iget v2, p1, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    iget v3, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/common/internal/ClientIdentity;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    const-string v3, "02ee41"

    const v4, -0x31c17e76

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ClientIdentity;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
