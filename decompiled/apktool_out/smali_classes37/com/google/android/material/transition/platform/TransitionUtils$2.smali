.class Lcom/google/android/material/transition/platform/TransitionUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$endBounds:Landroid/graphics/RectF;

.field final val$endFraction:F

.field final val$fraction:F

.field final val$startBounds:Landroid/graphics/RectF;

.field final val$startFraction:F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startBounds:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endBounds:Landroid/graphics/RectF;

    iput p3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startFraction:F

    iput p4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endFraction:F

    iput p5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$fraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 6

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startBounds:Landroid/graphics/RectF;

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endBounds:Landroid/graphics/RectF;

    invoke-interface {p2, v2}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v2

    iget v3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$startFraction:F

    iget v4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$endFraction:F

    iget v5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$2;->val$fraction:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object v0
.end method
