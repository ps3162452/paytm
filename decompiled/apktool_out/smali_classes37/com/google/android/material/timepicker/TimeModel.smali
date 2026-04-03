.class Lcom/google/android/material/timepicker/TimeModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/timepicker/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_FORMAT:Ljava/lang/String;

.field public static final ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String;


# instance fields
.field final format:I

.field hour:I

.field private final hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field minute:I

.field private final minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field period:I

.field selection:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a3abba"

    const v2, 0x4e151017    # 6.252149E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->NUMBER_FORMAT:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "e722b8"

    const v2, 0x4e82db92    # 1.0977139E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String;

    new-instance v0, Lcom/google/android/material/timepicker/TimeModel$1;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel$1;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 1
        0x44t
        0x57t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x40t
        0x7t
        0x0t
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    iput p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iput p3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iput p4, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    new-instance v0, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/16 v0, 0x18

    :goto_0
    new-instance v1, Lcom/google/android/material/timepicker/MaxInputValidator;

    invoke-direct {v1, v0}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-void

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/material/timepicker/TimeModel;->ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPeriod(I)I
    .locals 1

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/material/timepicker/TimeModel;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/material/timepicker/TimeModel;

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getHourForDisplay()I
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0x18

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_2

    const/16 v0, 0xc

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0xc

    goto :goto_0
.end method

.method public getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object v0
.end method

.method public getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setHour(I)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc

    :goto_1
    rem-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setHourOfDay(I)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    rem-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 3

    const/16 v2, 0xc

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt v0, v2, :cond_0

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
