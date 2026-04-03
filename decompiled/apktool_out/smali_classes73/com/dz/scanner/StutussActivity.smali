.class public Lcom/dz/scanner/StutussActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private _timer:Ljava/util/Timer;

.field private inte:Landroid/content/Intent;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private nm:Landroid/widget/TextView;

.field private pese:Landroid/widget/TextView;

.field private relative1:Landroid/widget/RelativeLayout;

.field private simpleamount:Landroid/widget/TextView;

.field private textview1:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private timer:Ljava/util/TimerTask;

.field private upi:Landroid/widget/TextView;

.field private username:Landroid/widget/TextView;

.field private webview1:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetinte(Lcom/dz/scanner/StutussActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->inte:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetlinear5(Lcom/dz/scanner/StutussActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear5:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetnm(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->nm:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetpese(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->pese:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetsimpleamount(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->simpleamount:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview1(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview1:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview2(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview2:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview3(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview3:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetupi(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->upi:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->username:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->_timer:Ljava/util/Timer;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->inte:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->relative1:Landroid/widget/RelativeLayout;

    const v0, 0x7f0802b8

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear2:Landroid/widget/LinearLayout;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear3:Landroid/widget/LinearLayout;

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->username:Landroid/widget/TextView;

    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->upi:Landroid/widget/TextView;

    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear5:Landroid/widget/LinearLayout;

    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->simpleamount:Landroid/widget/TextView;

    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->nm:Landroid/widget/TextView;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear4:Landroid/widget/LinearLayout;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview3:Landroid/widget/TextView;

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview2:Landroid/widget/TextView;

    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->pese:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lcom/dz/scanner/StutussActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/StutussActivity$1;-><init>(Lcom/dz/scanner/StutussActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private initializeLogic()V
    .locals 7

    const/4 v1, 0x0

    const/16 v2, 0x400

    const/16 v6, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->webview1:Landroid/webkit/WebView;

    const-string v2, "<html><body style=\'margin:0;padding:0;overflow:hidden;background:#FFFFFF;\'><video id=\'bgvideo\' autoplay muted loop playsinline preload=\'auto\' poster=\'\' style=\'width:100%;height:100%;object-fit:cover;opacity:0;\'><source src=\'file:/android_asset/bg.mp4\' type=\'video/mp4\'></video><script>var v=document.getElementById(\'bgvideo\');v.addEventListener(\'playing\',function(){v.style.opacity=\'1\';});</script></body></html>"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->pese:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->upi:Landroid/widget/TextView;

    const-string v1, "UPI ID: "

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "upi"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->username:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->nm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->simpleamount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "spn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->textview3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity;->linear5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/dz/scanner/StutussActivity$2;

    invoke-direct {v0, p0}, Lcom/dz/scanner/StutussActivity$2;-><init>(Lcom/dz/scanner/StutussActivity;)V

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->timer:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/dz/scanner/StutussActivity;->_timer:Ljava/util/Timer;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Lcom/dz/scanner/StutussActivity$3;

    invoke-direct {v0, p0}, Lcom/dz/scanner/StutussActivity$3;-><init>(Lcom/dz/scanner/StutussActivity;)V

    iput-object v0, p0, Lcom/dz/scanner/StutussActivity;->timer:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/dz/scanner/StutussActivity;->_timer:Ljava/util/Timer;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/dz/scanner/StutussActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/StutussActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/StutussActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/StutussActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
