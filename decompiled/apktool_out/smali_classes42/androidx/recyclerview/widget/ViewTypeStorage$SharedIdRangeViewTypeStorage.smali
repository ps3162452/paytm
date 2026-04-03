.class public Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/ViewTypeStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedIdRangeViewTypeStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;
    }
.end annotation


# instance fields
.field mGlobalTypeToWrapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/NestedAdapterWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public createViewTypeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;

    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;-><init>(Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-object v0
.end method

.method public getWrapperForGlobalType(I)Landroidx/recyclerview/widget/NestedAdapterWrapper;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "f6883c"

    const v4, -0x3212d2bf

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x25t
        0x57t
        0x56t
        0x56t
        0x5ct
        0x17t
        0x46t
        0x50t
        0x51t
        0x56t
        0x57t
        0x43t
        0x12t
        0x5et
        0x5dt
        0x18t
        0x44t
        0x11t
        0x7t
        0x46t
        0x48t
        0x5dt
        0x41t
        0x43t
        0x0t
        0x59t
        0x4at
        0x18t
        0x54t
        0xft
        0x9t
        0x54t
        0x59t
        0x54t
        0x13t
        0x15t
        0xft
        0x53t
        0x4ft
        0x18t
        0x47t
        0x1at
        0x16t
        0x53t
        0x18t
    .end array-data
.end method

.method removeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
