.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "04496d"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "51a368"

    const/16 v4, 0x4ee6

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x10t
        0x64t
        0x55t
        0x4bt
        0x55t
        0x1t
        0x5ct
        0xet
        0x14t
        0x49t
        0x59t
        0x17t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x42t
        0x8t
        0x49t
        0x53t
        0x5t
    .end array-data
.end method
