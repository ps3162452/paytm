.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl20;

.field final val$finalView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl20;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;->this$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl20;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;->val$finalView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;->val$finalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ebe60c"

    const v3, -0x311ab089

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;->val$finalView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0xct
        0x15t
        0x43t
        0x44t
        0x3ct
        0x8t
        0x7t
        0x11t
        0x5et
        0x5ft
        0x7t
    .end array-data
.end method
