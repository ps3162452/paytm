.class public Lcom/dz/scanner/PayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private Status:Landroid/content/SharedPreferences;

.field private _check_status_request_listener:Lcom/dz/scanner/RequestNetwork$RequestListener;

.field private _loadurl_request_listener:Lcom/dz/scanner/RequestNetwork$RequestListener;

.field private _timer:Ljava/util/Timer;

.field private check_status:Lcom/dz/scanner/RequestNetwork;

.field private i:Landroid/content/Intent;

.field private loadurl:Lcom/dz/scanner/RequestNetwork;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private order:Ljava/lang/String;

.field private sta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/TimerTask;

.field private textview1:Landroid/widget/TextView;

.field private webview1:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetStatus(Lcom/dz/scanner/PayActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->Status:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fget_check_status_request_listener(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork$RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->_check_status_request_listener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->check_status:Lcom/dz/scanner/RequestNetwork;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgeti(Lcom/dz/scanner/PayActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetsta(Lcom/dz/scanner/PayActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->sta:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview1(Lcom/dz/scanner/PayActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->textview1:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputsta(Lcom/dz/scanner/PayActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/PayActivity;->sta:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->_timer:Ljava/util/Timer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->sta:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->order:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->i:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/dz/scanner/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f0802b8

    invoke-virtual {p0, v0}, Lcom/dz/scanner/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    new-instance v0, Lcom/dz/scanner/RequestNetwork;

    invoke-direct {v0, p0}, Lcom/dz/scanner/RequestNetwork;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->loadurl:Lcom/dz/scanner/RequestNetwork;

    new-instance v0, Lcom/dz/scanner/RequestNetwork;

    invoke-direct {v0, p0}, Lcom/dz/scanner/RequestNetwork;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->check_status:Lcom/dz/scanner/RequestNetwork;

    const-string v0, "Status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/PayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->Status:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lcom/dz/scanner/PayActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/PayActivity$1;-><init>(Lcom/dz/scanner/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/dz/scanner/PayActivity$2;

    invoke-direct {v0, p0}, Lcom/dz/scanner/PayActivity$2;-><init>(Lcom/dz/scanner/PayActivity;)V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->_loadurl_request_listener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    new-instance v0, Lcom/dz/scanner/PayActivity$3;

    invoke-direct {v0, p0}, Lcom/dz/scanner/PayActivity$3;-><init>(Lcom/dz/scanner/PayActivity;)V

    iput-object v0, p0, Lcom/dz/scanner/PayActivity;->_check_status_request_listener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    return-void
.end method

.method private initializeLogic()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->loadurl:Lcom/dz/scanner/RequestNetwork;

    iget-object v1, p0, Lcom/dz/scanner/PayActivity;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Lcom/dz/scanner/RequestNetwork;->setParams(Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->loadurl:Lcom/dz/scanner/RequestNetwork;

    const-string v1, "GET"

    const-string v2, "https://techbhai.online/gautam/create.php?amount="

    invoke-virtual {p0}, Lcom/dz/scanner/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/16 v4, 0x27

    aput-byte v4, v3, v5

    const-string v4, "f19e6d"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dz/scanner/PayActivity;->_loadurl_request_listener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dz/scanner/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dz/scanner/RequestNetwork$RequestListener;)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity;->textview1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

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

    invoke-virtual {p0}, Lcom/dz/scanner/PayActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/PayActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/PayActivity;->getResources()Landroid/content/res/Resources;

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

    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/PayActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/PayActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/PayActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/PayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
