.class Lcom/dz/scanner/ResultActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/dz/scanner/ResultActivity$2;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2;->this$0:Lcom/dz/scanner/ResultActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-direct {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-virtual {v0}, Lcom/dz/scanner/ResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f080161

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f08016c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f080177

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f08018a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f08017f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f080065

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08010d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v1, 0x7f080116

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v1, 0x7f08011f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v1, 0x7f080274

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f08027f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "Pay \u20b9 "

    iget-object v5, p0, Lcom/dz/scanner/ResultActivity$2;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v5}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " From"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Pay Securely \u20b9 "

    iget-object v4, p0, Lcom/dz/scanner/ResultActivity$2;->this$0:Lcom/dz/scanner/ResultActivity;

    invoke-static {v4}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/dz/scanner/ResultActivity$2$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$2$1;-><init>(Lcom/dz/scanner/ResultActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void
.end method
