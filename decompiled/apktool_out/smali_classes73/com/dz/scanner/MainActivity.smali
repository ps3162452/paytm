.class public Lcom/dz/scanner/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field public final REQ_CD_FILE_PICKER:I

.field public final REQ_CD_NEEDED_FOR_PERMISSION:I

.field private Result:Ljava/lang/String;

.field private _file_needed_for_permission:Ljava/io/File;

.field private cardview1:Landroidx/cardview/widget/CardView;

.field private file_picker:Landroid/content/Intent;

.field private filepath:Ljava/lang/String;

.field private imageview1:Landroid/widget/ImageView;

.field private imageview2:Landroid/widget/ImageView;

.field private intent:Landroid/content/Intent;

.field private l:Landroid/content/Intent;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private needed_for_permission:Landroid/content/Intent;

.field private oa:Landroid/animation/ObjectAnimator;

.field private one_time_n:D

.field private result:Ljava/lang/String;

.field private scanned:Z

.field private scannerview:Lcom/budiyev/android/codescanner/CodeScannerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetResult(Lcom/dz/scanner/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->Result:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetfile_picker(Lcom/dz/scanner/MainActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->file_picker:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetintent(Lcom/dz/scanner/MainActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputResult(Lcom/dz/scanner/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/MainActivity;->Result:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/dz/scanner/MainActivity;->REQ_CD_FILE_PICKER:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/dz/scanner/MainActivity;->REQ_CD_NEEDED_FOR_PERMISSION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dz/scanner/MainActivity;->scanned:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dz/scanner/MainActivity;->one_time_n:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->filepath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->result:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->Result:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->file_picker:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->needed_for_permission:Landroid/content/Intent;

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->l:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/CodeScannerView;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->scannerview:Lcom/budiyev/android/codescanner/CodeScannerView;

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->linear1:Landroid/widget/LinearLayout;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->linear3:Landroid/widget/LinearLayout;

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->imageview1:Landroid/widget/ImageView;

    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->cardview1:Landroidx/cardview/widget/CardView;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->linear4:Landroid/widget/LinearLayout;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->imageview2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->file_picker:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->file_picker:Landroid/content/Intent;

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/FileUtil;->createNewPictureFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->_file_needed_for_permission:Ljava/io/File;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dz/scanner/MainActivity;->_file_needed_for_permission:Ljava/io/File;

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->needed_for_permission:Landroid/content/Intent;

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->needed_for_permission:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->imageview1:Landroid/widget/ImageView;

    new-instance v1, Lcom/dz/scanner/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/MainActivity$1;-><init>(Lcom/dz/scanner/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/dz/scanner/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/MainActivity$2;-><init>(Lcom/dz/scanner/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->_file_needed_for_permission:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeLogic()V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/budiyev/android/codescanner/CodeScanner;

    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-direct {v1, p0, v0}, Lcom/budiyev/android/codescanner/CodeScanner;-><init>(Landroid/content/Context;Lcom/budiyev/android/codescanner/CodeScannerView;)V

    new-instance v0, Lcom/dz/scanner/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/dz/scanner/MainActivity$3;-><init>(Lcom/dz/scanner/MainActivity;)V

    invoke-virtual {v1, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->setDecodeCallback(Lcom/budiyev/android/codescanner/DecodeCallback;)V

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->startPreview()V

    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->linear1:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/SketchwareUtil;->getDisplayHeightPixels(Landroid/content/Context;)I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/SketchwareUtil;->getDisplayWidthPixels(Landroid/content/Context;)I

    move-result v0

    int-to-double v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dz/scanner/MainActivity;->_set_height(Landroid/view/View;DD)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->linear1:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dz/scanner/SketchwareUtil;->getDisplayHeightPixels(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/SketchwareUtil;->getDisplayWidthPixels(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/dz/scanner/MainActivity;->one_time_n:D

    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->cardview1:Landroidx/cardview/widget/CardView;

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/dz/scanner/MainActivity;->_set_height(Landroid/view/View;DD)V

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->_scanning_animation()V

    const-string v0, "MyAppPrefs"

    invoke-virtual {p0, v0, v6}, Lcom/dz/scanner/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isLoggedIn"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->finishAffinity()V

    :cond_0
    return-void
.end method


# virtual methods
.method public _scanning_animation()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/dz/scanner/MainActivity;->scanned:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->imageview2:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->imageview2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    const/high16 v2, -0x3d600000    # -80.0f

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v6, p0, Lcom/dz/scanner/MainActivity;->scanned:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->imageview2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->imageview2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/SketchwareUtil;->getDisplayWidthPixels(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->oa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v7, p0, Lcom/dz/scanner/MainActivity;->scanned:Z

    goto :goto_0
.end method

.method public _set_height(Landroid/view/View;DD)V
    .locals 4

    double-to-int v0, p2

    double-to-int v1, p4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

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

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getResources()Landroid/content/res/Resources;

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_2
    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->filepath:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v1, v3, v7

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {v0, v3, v7, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->result:Ljava/lang/String;

    iput-object v0, p0, Lcom/dz/scanner/MainActivity;->Result:Ljava/lang/String;

    iget-object v1, p0, Lcom/dz/scanner/MainActivity;->l:Landroid/content/Intent;

    const-string v2, "Result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->l:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/ResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity;->l:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/dz/scanner/FileUtil;->convertUriToFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dz/scanner/FileUtil;->convertUriToFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, -0x1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/dz/scanner/MainActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/MainActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dz/scanner/MainActivity;->initializeLogic()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/dz/scanner/MainActivity;->initializeLogic()V

    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
