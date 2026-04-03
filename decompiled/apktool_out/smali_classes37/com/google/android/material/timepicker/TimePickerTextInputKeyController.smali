.class Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private keyListenerRunning:Z

.field private final minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final time:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    return-void
.end method

.method private moveSelection(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x7

    if-lt p1, v3, :cond_2

    const/16 v3, 0x10

    if-gt p1, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {p3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public bind()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x10000005

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    const v2, 0x10000006

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    move-result v0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    move-result v0

    goto :goto_1
.end method
