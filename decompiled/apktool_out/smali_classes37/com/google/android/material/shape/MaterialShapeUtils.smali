.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/material/shape/CutCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    return-object v0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_0
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setParentAbsoluteElevation(F)V

    :cond_0
    return-void
.end method
