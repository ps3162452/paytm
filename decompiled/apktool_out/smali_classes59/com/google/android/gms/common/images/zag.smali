.class public abstract Lcom/google/android/gms/common/images/zag;
.super Ljava/lang/Object;


# instance fields
.field final zaa:Lcom/google/android/gms/common/images/zad;

.field protected zab:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    new-instance v0, Lcom/google/android/gms/common/images/zad;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/zad;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zag;->zaa:Lcom/google/android/gms/common/images/zad;

    iput p2, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    return-void
.end method


# virtual methods
.method protected abstract zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method final zab(Landroid/content/Context;Lcom/google/android/gms/internal/base/zam;Z)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zac(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
