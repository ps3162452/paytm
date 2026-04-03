.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

.field final val$editText:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iput-object p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->val$editText:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1700(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$402(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->val$editText:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$600(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    :cond_1
    return v2
.end method
