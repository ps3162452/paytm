.class public Landroidx/core/app/ActivityOptionsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String;

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x1b

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "1a8b93"

    const-wide v2, 0x41d9e09f31c00000L    # 1.736604871E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityOptionsCompat;->EXTRA_USAGE_TIME_REPORT:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "5e51a6"

    const v2, 0x4ea0f066

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityOptionsCompat;->EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0xft
        0x5ct
        0x10t
        0x56t
        0x5at
        0x55t
        0x4ft
        0x59t
        0x1t
        0x4dt
        0x5at
        0x47t
        0x8t
        0x4ct
        0x1bt
        0x17t
        0x46t
        0x42t
        0x0t
        0x5ft
        0x7t
        0x66t
        0x47t
        0x58t
        0xct
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0xbt
        0x51t
        0x43t
        0xet
        0x5ft
        0x51t
        0x4bt
        0x40t
        0x42t
        0x0t
        0x51t
        0x50t
        0x3at
        0x41t
        0x58t
        0xct
        0x53t
        0x6at
        0x15t
        0x54t
        0x52t
        0xat
        0x57t
        0x52t
        0x0t
        0x46t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeBasic()Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/app/ActivityOptionsCompat;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v3, v0, [Landroid/util/Pair;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_0

    aget-object v0, p1, v2

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    aget-object v1, p1, v2

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :cond_1
    new-instance v1, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_1
.end method

.method public static makeTaskLaunchBehind()Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidx/core/app/ActivityOptionsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 0

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 0

    return-void
.end method
