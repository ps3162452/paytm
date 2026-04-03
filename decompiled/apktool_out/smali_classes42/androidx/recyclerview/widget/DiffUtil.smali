.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$Callback;,
        Landroidx/recyclerview/widget/DiffUtil$CenteredArray;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v7

    neg-int v1, p4

    move v5, v1

    :goto_1
    if-gt v5, p4, :cond_7

    neg-int v1, p4

    if-eq v5, v1, :cond_0

    if-eq v5, p4, :cond_3

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v1

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v2

    if-ge v1, v2, :cond_3

    :cond_0
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v1

    move v2, v1

    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    if-eqz p4, :cond_1

    if-eq v1, v2, :cond_4

    :cond_1
    move v3, v1

    move v1, v4

    :goto_3
    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v3, v8, :cond_5

    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v4, v8, :cond_5

    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p1, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v10, v3

    move v3, v1

    move v1, v10

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v5, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    if-eqz v0, :cond_6

    sub-int v8, v6, v7

    sub-int/2addr v8, v5

    neg-int v9, p4

    if-lt v8, v9, :cond_6

    if-gt v8, p4, :cond_6

    invoke-virtual {p2, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    if-lt v8, v3, :cond_6

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    :goto_4
    return-object v0

    :cond_6
    add-int/lit8 v1, v5, 0x2

    move v5, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 9
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v4, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-static {v0, p0, v4, v5}, Landroidx/recyclerview/widget/DiffUtil;->midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Snake;->toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    :goto_1
    iget v8, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v8, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v8, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v8, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v8, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v8, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v8, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v8, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v1, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v1, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Range;

    goto :goto_1

    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v3

    invoke-virtual {v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v4

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v0
.end method

.method private static forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v7

    neg-int v1, p4

    move v5, v1

    :goto_1
    if-gt v5, p4, :cond_7

    neg-int v1, p4

    if-eq v5, v1, :cond_0

    if-eq v5, p4, :cond_3

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v1

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v2

    if-le v1, v2, :cond_3

    :cond_0
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v1

    move v2, v1

    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    sub-int v4, v3, v5

    if-eqz p4, :cond_1

    if-eq v1, v2, :cond_4

    :cond_1
    move v3, v1

    move v1, v4

    :goto_3
    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v3, v8, :cond_5

    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v4, v8, :cond_5

    invoke-virtual {p1, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v4, -0x1

    move v10, v3

    move v3, v1

    move v1, v10

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v5, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    if-eqz v0, :cond_6

    sub-int v8, v6, v7

    sub-int/2addr v8, v5

    neg-int v9, p4

    add-int/lit8 v9, v9, 0x1

    if-lt v8, v9, :cond_6

    add-int/lit8 v9, p4, -0x1

    if-gt v8, v9, :cond_6

    invoke-virtual {p3, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    if-gt v8, v3, :cond_6

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    :goto_4
    return-object v0

    :cond_6
    add-int/lit8 v1, v5, 0x2

    move v5, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    if-lt v0, v4, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v0

    if-ge v0, v4, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    invoke-virtual {p2, v4, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    invoke-virtual {p3, v4, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
