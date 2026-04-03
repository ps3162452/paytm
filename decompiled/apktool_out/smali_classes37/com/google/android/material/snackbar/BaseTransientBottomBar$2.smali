.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$000(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$200(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9be3ba"

    const/16 v3, 0x5709

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v3

    sub-int v1, v3, v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->requestLayout()V

    goto :goto_0

    :array_0
    .array-data 1
        0x6ct
        0xct
        0x4t
        0x51t
        0xet
        0x4t
        0x19t
        0x16t
        0xat
        0x13t
        0x3t
        0x11t
        0x49t
        0xet
        0x1ct
        0x13t
        0x5t
        0x4t
        0x4at
        0x16t
        0x10t
        0x41t
        0x7t
        0x41t
        0x50t
        0xct
        0x16t
        0x56t
        0x16t
        0x41t
        0x5bt
        0x7t
        0x6t
        0x52t
        0x17t
        0x12t
        0x5ct
        0x42t
        0x9t
        0x52t
        0x1bt
        0xet
        0x4ct
        0x16t
        0x45t
        0x43t
        0x3t
        0x13t
        0x58t
        0xft
        0x16t
        0x13t
        0x3t
        0x13t
        0x5ct
        0x42t
        0xbt
        0x5ct
        0x16t
        0x41t
        0x74t
        0x3t
        0x17t
        0x54t
        0xbt
        0xft
        0x75t
        0x3t
        0x1ct
        0x5ct
        0x17t
        0x15t
        0x69t
        0x3t
        0x17t
        0x52t
        0xft
        0x12t
    .end array-data
.end method
