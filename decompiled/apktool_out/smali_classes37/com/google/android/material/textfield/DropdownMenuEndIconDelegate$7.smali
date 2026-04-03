.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$200(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
