.class Landroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    iput-object p2, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method private removeListeners()V
    .locals 1

    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    invoke-direct {p0}, Landroidx/transition/TransitionManager$MultiListener;->removeListeners()V

    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v2

    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    iget-object v3, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    new-instance v3, Landroidx/transition/TransitionManager$MultiListener$1;

    invoke-direct {v3, p0, v2}, Landroidx/transition/TransitionManager$MultiListener$1;-><init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    iget-object v2, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    iget-object v2, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Landroidx/transition/TransitionManager$MultiListener;->removeListeners()V

    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    iget-object v2, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/transition/Transition;->clearValues(Z)V

    return-void
.end method
