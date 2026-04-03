.class public final Lcom/google/android/gms/common/images/zae;
.super Lcom/google/android/gms/common/images/zag;


# instance fields
.field private final zac:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/common/images/zae;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zae;

    iget-object v0, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    instance-of v1, v0, Lcom/google/android/gms/internal/base/zal;

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_8

    if-eqz p2, :cond_4

    move v4, v1

    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v3, v1, Lcom/google/android/gms/internal/base/zak;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/base/zak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/base/zak;->zaa()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/base/zak;

    invoke-direct {v3, v1, p1}, Lcom/google/android/gms/internal/base/zak;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v3, v0, Lcom/google/android/gms/internal/base/zal;

    if-nez v3, :cond_6

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/base/zak;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/base/zak;->zab(I)V

    :cond_2
    return-void

    :cond_3
    check-cast v0, Lcom/google/android/gms/internal/base/zal;

    throw v2

    :cond_4
    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1

    :cond_6
    check-cast v0, Lcom/google/android/gms/internal/base/zal;

    throw v2

    :cond_7
    move-object v1, p1

    goto :goto_2

    :cond_8
    move v4, v1

    goto :goto_0
.end method
