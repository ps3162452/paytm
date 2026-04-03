.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final val$shouldHandleGestureInsets:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v7, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_8

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    :goto_1
    iget v2, v7, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v0, v2

    move v2, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_9

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    :goto_2
    iget v3, v7, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v0, v3

    move v3, v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v7, Landroidx/core/graphics/Insets;->left:I

    if-eq v4, v9, :cond_a

    iget v4, v7, Landroidx/core/graphics/Insets;->left:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v4, v5

    :goto_3
    iget-object v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v10, v7, Landroidx/core/graphics/Insets;->right:I

    if-eq v9, v10, :cond_2

    iget v4, v7, Landroidx/core/graphics/Insets;->right:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v4, v5

    :cond_2
    iget-object v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v7, Landroidx/core/graphics/Insets;->top:I

    if-eq v9, v10, :cond_3

    iget v4, v7, Landroidx/core/graphics/Insets;->top:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v4, v5

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v8, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    :cond_7
    return-object p2

    :cond_8
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_1

    :cond_9
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_2

    :cond_a
    move v4, v6

    goto :goto_3

    :cond_b
    move v1, v0

    goto/16 :goto_0
.end method
