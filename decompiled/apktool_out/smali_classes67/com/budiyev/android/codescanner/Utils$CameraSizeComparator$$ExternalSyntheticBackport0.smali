.class public final synthetic Lcom/budiyev/android/codescanner/Utils$CameraSizeComparator$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x17
    versionHash = "79350b666c61fb98f585652cf8eb3be7850d2ab8c16c1e890d0171be2ca2d761"
.end annotation


# direct methods
.method public static synthetic m(II)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
