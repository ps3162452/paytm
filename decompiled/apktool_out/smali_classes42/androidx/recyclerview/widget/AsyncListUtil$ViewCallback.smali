.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    aget v0, p1, v4

    aget v1, p1, v5

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v2, v1, 0x2

    aget v3, p1, v5

    if-ne p3, v4, :cond_1

    move v0, v1

    :goto_0
    sub-int v0, v3, v0

    aput v0, p2, v5

    aget v0, p1, v4

    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    move v2, v1

    :cond_0
    add-int/2addr v0, v2

    aput v0, p2, v4

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public abstract getItemRangeInto([I)V
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract onDataRefresh()V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract onItemLoaded(I)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
