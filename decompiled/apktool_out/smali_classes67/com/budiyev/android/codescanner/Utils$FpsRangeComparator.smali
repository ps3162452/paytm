.class final Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FpsRangeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/Utils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget v0, p2, v1

    aget v1, p1, v1

    invoke-static {v0, v1}, Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    if-nez v0, :cond_0

    aget v0, p2, v2

    aget v1, p1, v2

    invoke-static {v0, v1}, Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    :cond_0
    return v0
.end method
