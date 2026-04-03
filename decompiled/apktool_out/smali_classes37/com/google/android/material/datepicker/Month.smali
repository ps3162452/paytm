.class final Lcom/google/android/material/datepicker/Month;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/material/datepicker/Month;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/Month;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final daysInMonth:I

.field final daysInWeek:I

.field private final firstOfMonth:Ljava/util/Calendar;

.field private longName:Ljava/lang/String;

.field final month:I

.field final timeInMillis:J

.field final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/Month$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/Month$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/Month;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    return-void
.end method

.method static create(II)Lcom/google/android/material/datepicker/Month;
    .locals 2

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method static create(J)Lcom/google/android/material/datepicker/Month;
    .locals 2

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method static current()Lcom/google/android/material/datepicker/Month;
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/Month;

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/datepicker/Month;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    return v0
.end method

.method daysFromStartOfWeekToFirstOfMonth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

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
    instance-of v2, p1, Lcom/google/android/material/datepicker/Month;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    iget v3, p1, Lcom/google/android/material/datepicker/Month;->month:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->year:I

    iget v3, p1, Lcom/google/android/material/datepicker/Month;->year:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method getDay(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getDayOfMonth(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getLongName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonth(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    return-object v0
.end method

.method getStableId()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method monthsLater(I)Lcom/google/android/material/datepicker/Month;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method monthsUntil(Lcom/google/android/material/datepicker/Month;)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/material/datepicker/Month;->year:I

    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget v1, p1, Lcom/google/android/material/datepicker/Month;->month:I

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1fde77"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x8t
        0x8t
        0x1ct
        0x17t
        0x70t
        0x43t
        0x3t
        0x3t
        0xat
        0x45t
        0x5et
        0x50t
        0x8t
        0x44t
        0x6t
        0x56t
        0x5bt
        0x54t
        0x8t
        0x0t
        0x4t
        0x45t
        0x44t
        0x11t
        0x7t
        0x16t
        0x0t
        0x17t
        0x44t
        0x44t
        0x16t
        0x14t
        0xat
        0x45t
        0x43t
        0x54t
        0x2t
        0x4at
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
