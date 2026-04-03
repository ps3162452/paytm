.class public Lcom/google/android/material/datepicker/DateValidatorPointForward;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/DateValidatorPointForward;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final point:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/DateValidatorPointForward$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/material/datepicker/DateValidatorPointForward$1;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-void
.end method

.method public static from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-object v0
.end method

.method public static now()Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 2

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    iget-wide v2, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    iget-wide v4, p1, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
