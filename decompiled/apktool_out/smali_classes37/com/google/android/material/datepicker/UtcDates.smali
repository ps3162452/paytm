.class Lcom/google/android/material/datepicker/UtcDates;
.super Ljava/lang/Object;


# static fields
.field static final UTC:Ljava/lang/String;

.field static timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/material/datepicker/TimeSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4030b4"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/UtcDates;->UTC:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    nop

    :array_0
    .array-data 1
        0x61t
        0x64t
        0x70t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canonicalYearMonthDay(J)J
    .locals 2

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4

    const/16 v3, 0x27

    move v0, p3

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/2addr v0, p2

    :goto_1
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    add-int/2addr v0, p2

    goto :goto_1

    :cond_0
    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    return v0
.end method

.method static getAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "570a69"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x78t
        0x7at
        0x7dt
        0x5t
    .end array-data
.end method

.method static getAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "dbdcaa"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x29t
        0x2ft
        0x29t
        0x26t
        0x5t
    .end array-data
.end method

.method private static getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcAndroidTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-object v0
.end method

.method static getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5

    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Calendar;->set(III)V

    return-object v1
.end method

.method private static getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2

    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static getFullFormat()Ljava/text/DateFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static getFullFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static getMediumFormat()Ljava/text/DateFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getFormat(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static getMediumNoYear()Ljava/text/DateFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static getMediumNoYear(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 2

    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getMediumFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->removeYearFromDateFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object v0
.end method

.method static getSimpleFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/UtcDates;->getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static getTextInputFormat()Ljava/text/SimpleDateFormat;
    .locals 6

    const/4 v2, 0x3

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d9186f"

    const-wide/32 v4, -0x32776b9e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v1

    :array_0
    .array-data 1
        0x38t
        0x4at
        0x1at
    .end array-data
.end method

.method static getTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 12

    const/4 v6, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_text_input_year_abbr:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_text_input_month_abbr:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_text_input_day_abbr:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [B

    fill-array-data v4, :array_0

    const-string v5, "fd977d"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v11, :cond_0

    new-array v4, v11, [B

    const/16 v5, 0x1c

    aput-byte v5, v4, v10

    const-string v5, "e11ec9"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [B

    fill-array-data v5, :array_1

    const-string v6, "d38491"

    const-wide/32 v8, -0x694b341e

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v4, v11, [B

    aput-byte v11, v4, v10

    const-string v5, "e1f923"

    const-wide/32 v6, 0x67526198

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [B

    const/16 v4, 0x2f

    aput-byte v4, v3, v10

    const-string v4, "b03761"

    const v5, 0x4ea44090

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [B

    const/16 v3, 0x40

    aput-byte v3, v2, v10

    const-string v3, "99b2f9"

    invoke-static {v2, v3, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x3dt
        0x3at
        0x40t
        0x6at
    .end array-data

    :array_1
    .array-data 1
        0x1dt
        0x4at
        0x41t
        0x4dt
    .end array-data
.end method

.method static getTimeSource()Lcom/google/android/material/datepicker/TimeSource;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/TimeSource;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/material/datepicker/TimeSource;->system()Lcom/google/android/material/datepicker/TimeSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getTimeZone()Ljava/util/TimeZone;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->UTC:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static getTodayCalendar()Ljava/util/Calendar;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeSource()Lcom/google/android/material/datepicker/TimeSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/TimeSource;->now()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private static getUtcAndroidTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->UTC:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static getUtcCalendar()Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method static getYearAbbrMonthDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "573415"

    const-wide v2, 0x41c3623353800000L    # 6.50405543E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4ct
        0x7at
        0x7et
        0x79t
        0x55t
    .end array-data
.end method

.method static getYearAbbrMonthWeekdayDayFormat(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "72983e"

    const v2, -0x3233025e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/UtcDates;->getAndroidFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4et
        0x7ft
        0x74t
        0x75t
        0x76t
        0x1t
    .end array-data
.end method

.method private static removeYearFromDateFormatPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "794a4e"

    invoke-static {v0, v1, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6, v5}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v2, "abc556"

    invoke-static {v0, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "b22759"

    const v4, 0x4dd71093    # 4.5102346E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6, v1}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v7, [B

    fill-array-data v3, :array_3

    const-string v4, "dd560e"

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v6, [B

    const/16 v4, 0x4a

    aput-byte v4, v3, v5

    const-string v4, "f70b7c"

    const/16 v5, 0x5652

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v3, -0x1

    invoke-static {p0, v0, v3, v1}, Lcom/google/android/material/datepicker/UtcDates;->findCharactersInDateFormatPattern(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x4et
        0x60t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x2ft
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x27t
        0x7ft
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x21t
        0x29t
        0x51t
    .end array-data
.end method

.method static setTimeSource(Lcom/google/android/material/datepicker/TimeSource;)V
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/UtcDates;->timeSourceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
