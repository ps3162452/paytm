.class final Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusClickListener"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/CodeScannerView;


# direct methods
.method private constructor <init>(Lcom/budiyev/android/codescanner/CodeScannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;->this$0:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/CodeScannerView;Lcom/budiyev/android/codescanner/CodeScannerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;-><init>(Lcom/budiyev/android/codescanner/CodeScannerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;->this$0:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->access$200(Lcom/budiyev/android/codescanner/CodeScannerView;)Lcom/budiyev/android/codescanner/CodeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->isAutoFocusSupportedOrUnknown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->isAutoFocusEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->setAutoFocusEnabled(Z)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScannerView$AutoFocusClickListener;->this$0:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusEnabled(Z)V

    goto :goto_0
.end method
