.class Lcom/dz/scanner/ResultActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/ResultActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/ResultActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/ResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x1c

    aput-byte v3, v1, v2

    const-string v2, "07fb94"

    const-wide v4, -0x3e5b1d3dd4000000L    # -1.75202582E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext2(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "IN"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$1;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext2(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
