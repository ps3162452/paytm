.class public final Lcom/google/android/gms/common/server/converter/zaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/server/converter/zaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I

.field private final zab:Lcom/google/android/gms/common/server/converter/StringToIntConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/zab;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/zaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/zaa;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/zaa;->zab:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/zaa;->zaa:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/zaa;->zab:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-void
.end method

.method public static zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;)Lcom/google/android/gms/common/server/converter/zaa;
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/converter/zaa;

    check-cast p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/converter/zaa;-><init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "466aef"

    const v3, -0x3151f4ce

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x58t
        0x45t
        0x14t
        0x15t
        0x16t
        0x5bt
        0x44t
        0x42t
        0x4t
        0x1t
        0x46t
        0x47t
        0x57t
        0x50t
        0x4t
        0x45t
        0x16t
        0x55t
        0x44t
        0x55t
        0x4t
        0x9t
        0x7t
        0x56t
        0x5at
        0x53t
        0x41t
        0x3t
        0xft
        0x51t
        0x5at
        0x52t
        0x41t
        0x6t
        0x9t
        0x5at
        0x40t
        0x53t
        0x13t
        0x11t
        0x3t
        0x46t
        0x16t
        0x55t
        0xdt
        0x4t
        0x15t
        0x47t
        0x18t
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/server/converter/zaa;->zaa:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/server/converter/zaa;->zab:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zab()Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/zaa;->zab:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x38

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "aefaa3"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0xdt
        0x3t
        0x13t
        0x4t
        0x13t
        0x16t
        0x4t
        0x15t
        0x41t
        0xft
        0x5ct
        0x41t
        0x6t
        0x9t
        0xft
        0x17t
        0x56t
        0x13t
        0x11t
        0x3t
        0x13t
        0x41t
        0x44t
        0x13t
        0x4t
        0x16t
        0x11t
        0x4t
        0x57t
        0x41t
        0xct
        0x8t
        0x41t
        0x15t
        0x5bt
        0x8t
        0x16t
        0x46t
        0x22t
        0xet
        0x5dt
        0x17t
        0x0t
        0x14t
        0x15t
        0x4t
        0x41t
        0x36t
        0x17t
        0x7t
        0x11t
        0x11t
        0x56t
        0x13t
        0x4bt
    .end array-data
.end method
