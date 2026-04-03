.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    const/4 v0, 0x1

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v1, v4

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    if-eqz v0, :cond_2

    :goto_2
    add-int v0, v1, v3

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method
