.class abstract Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

.field mSourceRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    if-eqz p3, :cond_6

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    if-eqz p1, :cond_8

    iget v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    :goto_1
    invoke-static {p3, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-eqz p1, :cond_b

    iget v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iget v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iget v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iget v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iget-object v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iget-object v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iget-boolean v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iget v3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-ne v3, v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    :cond_1
    iget-boolean v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iget v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iget v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iget v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    :cond_2
    iget-boolean v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    :cond_3
    iget-boolean v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    :cond_4
    iget-object v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    :goto_2
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    :goto_3
    if-ge v2, v1, :cond_c

    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    new-instance v1, Landroid/util/SparseArray;

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_2

    :cond_a
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    goto :goto_4

    :cond_b
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    :cond_c
    return-void
.end method

.method private createAllFutures()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;->getResources(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v5, v3

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;->canApplyTheme(Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public canConstantState()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    move v0, v1

    goto :goto_0
.end method

.method final clearMutated()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    return-void
.end method

.method protected computeConstantSize()V
    .locals 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_1

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v3, v4, :cond_3

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, p1

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final getConstantHeight()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    iget-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_8

    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_4

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    :cond_6
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_7

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public final getConstantWidth()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final getOpacity()I
    .locals 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-lez v4, :cond_1

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_1
    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v3, v5, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_2

    :cond_1
    const/4 v0, -0x2

    goto :goto_1

    :cond_2
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method mutate()V
    .locals 4

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    return-void
.end method

.method public final setConstantSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 7

    const/4 v2, 0x0

    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v5, v3

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v0, v6, :cond_2

    aget-object v0, v5, v3

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    :goto_1
    if-ne v3, p2, :cond_1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    return v1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final setVariablePadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    invoke-static {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-eq v1, v0, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    :cond_0
    return-void
.end method
