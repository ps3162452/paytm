.class Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field final val$isSet:Z

.field final val$listen_for_id:I

.field final val$listen_for_value:I

.field final val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/ViewTransition;IZI)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iput p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_id:I

    iput-boolean p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$isSet:Z

    iput p5, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewValue(III)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueCurrent()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->setSharedValueCurrent(I)V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_id:I

    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_3

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$isSet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v8

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v2

    new-array v5, v10, [Landroid/view/View;

    aput-object v9, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    if-eq v0, p2, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v8

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v2

    new-array v5, v10, [Landroid/view/View;

    aput-object v9, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_3
    return-void
.end method
