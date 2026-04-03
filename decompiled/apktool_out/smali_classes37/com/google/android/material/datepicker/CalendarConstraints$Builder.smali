.class public final Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEEP_COPY_VALIDATOR_KEY:Ljava/lang/String;

.field static final DEFAULT_END:J

.field static final DEFAULT_START:J


# instance fields
.field private end:J

.field private openAt:Ljava/lang/Long;

.field private start:J

.field private validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4ea104"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEEP_COPY_VALIDATOR_KEY:Ljava/lang/String;

    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    return-void

    :array_0
    .array-data 1
        0x70t
        0x20t
        0x24t
        0x61t
        0x6ft
        0x77t
        0x7bt
        0x35t
        0x38t
        0x6et
        0x66t
        0x75t
        0x78t
        0x2ct
        0x25t
        0x70t
        0x64t
        0x7bt
        0x66t
        0x3at
        0x2at
        0x74t
        0x69t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$100(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$200(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$300(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$400(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEEP_COPY_VALIDATOR_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-wide v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v2

    sget-object v3, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEEP_COPY_VALIDATOR_KEY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    if-nez v0, :cond_0

    move-object v4, v5

    :goto_0
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$1;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    goto :goto_0
.end method

.method public setEnd(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    return-object p0
.end method

.method public setOpenAt(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    return-object p0
.end method

.method public setStart(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    return-object p0
.end method

.method public setValidator(Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-object p0
.end method
