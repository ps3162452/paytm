.class public Lcom/dz/scanner/ResultActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dz/scanner/ResultActivity$EnglishNumberToWords;
    }
.end annotation


# instance fields
.field private Next:Landroid/content/Intent;

.field private ReSuLt:Ljava/lang/String;

.field private _timer:Ljava/util/Timer;

.field private bootom:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private d:Landroid/app/AlertDialog$Builder;

.field private edittext1:Landroid/widget/EditText;

.field private edittext2:Landroid/widget/EditText;

.field private imageview2:Landroid/widget/ImageView;

.field private imageview3:Landroid/widget/ImageView;

.field private imageview4:Landroid/widget/ImageView;

.field private imageview5:Landroid/widget/ImageView;

.field private j:Landroid/content/Intent;

.field private lastValue:Ljava/lang/String;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear14:Landroid/widget/LinearLayout;

.field private linear15:Landroid/widget/LinearLayout;

.field private linear16:Landroid/widget/LinearLayout;

.field private linear17:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear20:Landroid/widget/LinearLayout;

.field private linear21:Landroid/widget/LinearLayout;

.field private linear22:Landroid/widget/LinearLayout;

.field private linear23:Landroid/widget/LinearLayout;

.field private linear24:Landroid/widget/LinearLayout;

.field private linear25:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private na:D

.field private naa:Ljava/lang/String;

.field private number:D

.field private textview10:Landroid/widget/TextView;

.field private textview12:Landroid/widget/TextView;

.field private textview14:Landroid/widget/TextView;

.field private textview15:Landroid/widget/TextView;

.field private textview17:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private textview8:Landroid/widget/EditText;

.field private textview9:Landroid/widget/TextView;

.field private time:Ljava/util/TimerTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->Next:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->edittext1:Landroid/widget/EditText;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetedittext2(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->edittext2:Landroid/widget/EditText;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview15(Lcom/dz/scanner/ResultActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview15:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview7(Lcom/dz/scanner/ResultActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview7:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview8(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview8:Landroid/widget/EditText;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->_timer:Ljava/util/Timer;

    iput-wide v2, p0, Lcom/dz/scanner/ResultActivity;->number:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->ReSuLt:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dz/scanner/ResultActivity;->na:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->naa:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->lastValue:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->j:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->Next:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear3:Landroid/widget/LinearLayout;

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear1:Landroid/widget/LinearLayout;

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview2:Landroid/widget/TextView;

    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear19:Landroid/widget/LinearLayout;

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear14:Landroid/widget/LinearLayout;

    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear17:Landroid/widget/LinearLayout;

    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview12:Landroid/widget/TextView;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear15:Landroid/widget/LinearLayout;

    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear24:Landroid/widget/LinearLayout;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->edittext2:Landroid/widget/EditText;

    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear2:Landroid/widget/LinearLayout;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->imageview3:Landroid/widget/ImageView;

    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear25:Landroid/widget/LinearLayout;

    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear16:Landroid/widget/LinearLayout;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview15:Landroid/widget/TextView;

    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear18:Landroid/widget/LinearLayout;

    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview7:Landroid/widget/TextView;

    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview8:Landroid/widget/EditText;

    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->imageview4:Landroid/widget/ImageView;

    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear21:Landroid/widget/LinearLayout;

    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear22:Landroid/widget/LinearLayout;

    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview14:Landroid/widget/TextView;

    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview10:Landroid/widget/TextView;

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->edittext1:Landroid/widget/EditText;

    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear23:Landroid/widget/LinearLayout;

    const v0, 0x7f08027c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview17:Landroid/widget/TextView;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear4:Landroid/widget/LinearLayout;

    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear5:Landroid/widget/LinearLayout;

    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear20:Landroid/widget/LinearLayout;

    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear6:Landroid/widget/LinearLayout;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->imageview2:Landroid/widget/ImageView;

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->imageview5:Landroid/widget/ImageView;

    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview9:Landroid/widget/TextView;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->d:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->edittext1:Landroid/widget/EditText;

    new-instance v1, Lcom/dz/scanner/ResultActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$1;-><init>(Lcom/dz/scanner/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear6:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/ResultActivity$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$2;-><init>(Lcom/dz/scanner/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeLogic()V
    .locals 11

    const/16 v10, 0x168

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dz/scanner/ResultActivity$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$3;-><init>(Lcom/dz/scanner/ResultActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview2:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :try_start_0
    const-string v0, "upi://pay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const-string v0, ""

    if-eqz v2, :cond_5

    :try_start_1
    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v8, :cond_5

    const/4 v0, 0x1

    aget-object v0, v1, v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v4, 0x45

    aput-byte v4, v1, v2

    const-string v2, "c4e079"

    const-wide v4, -0x3e41de1d3d000000L    # -5.05537219E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, ""

    const-string v0, ""

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_2

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/dz/scanner/ResultActivity;->textview7:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity;->textview8:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    const v2, -0xff470a

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v4, v8, [[I

    new-array v5, v3, [I

    aput-object v5, v4, v3

    new-array v5, v8, [I

    const v6, -0x424243

    aput v6, v5, v3

    invoke-direct {v2, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview8:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v8

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/dz/scanner/ResultActivity;->textview15:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity;->textview15:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    const v2, -0x1c0d03

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity;->linear23:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "MyAppPrefs"

    invoke-virtual {p0, v0, v3}, Lcom/dz/scanner/ResultActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isLoggedIn"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->finishAffinity()V

    :cond_1
    :goto_6
    return-void

    :cond_2
    aget-object v6, v4, v2

    :try_start_3
    const-string v7, "pa="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v7, "pn="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "%20"

    const-string v7, " "

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_7

    :cond_5
    const-string v1, ""

    goto/16 :goto_1

    :cond_6
    const-string v0, "Invalid UPI ID"

    goto/16 :goto_2

    :cond_7
    const-string v0, "Invalid Name"

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview7:Landroid/widget/TextView;

    const-string v1, "Error fetching UPI ID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->textview8:Landroid/widget/EditText;

    const-string v1, "Error fetching Name"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    invoke-static {v8, v9}, Lcom/dz/scanner/SketchwareUtil;->getRandom(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/ResultActivity;->naa:Ljava/lang/String;

    new-array v1, v8, [B

    const/16 v2, 0x52

    aput-byte v2, v1, v3

    const-string v2, "cf4974"

    const/16 v4, -0x54

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear16:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/ResultActivity$4;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$4;-><init>(Lcom/dz/scanner/ResultActivity;)V

    const/16 v2, -0x6800

    invoke-virtual {v1, v10, v2}, Lcom/dz/scanner/ResultActivity$4;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->naa:Ljava/lang/String;

    new-array v1, v8, [B

    const/4 v2, 0x7

    aput-byte v2, v1, v3

    const-string v2, "54cb91"

    const/16 v4, 0xbc4

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear16:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/ResultActivity$5;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$5;-><init>(Lcom/dz/scanner/ResultActivity;)V

    const v2, -0xc0ae4b

    invoke-virtual {v1, v10, v2}, Lcom/dz/scanner/ResultActivity$5;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_b
    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->naa:Ljava/lang/String;

    new-array v1, v8, [B

    const/4 v2, 0x6

    aput-byte v2, v1, v3

    const-string v2, "58c5ce"

    invoke-static {v1, v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->linear16:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/ResultActivity$6;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ResultActivity$6;-><init>(Lcom/dz/scanner/ResultActivity;)V

    const v2, -0xff7c71

    invoke-virtual {v1, v10, v2}, Lcom/dz/scanner/ResultActivity$6;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public _external()V
    .locals 0

    return-void
.end method

.method public _getWordFromNumber(D)Ljava/lang/String;
    .locals 3

    double-to-int v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/dz/scanner/ResultActivity$EnglishNumberToWords;->convert(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getResources()Landroid/content/res/Resources;

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

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->j:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity;->j:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ResultActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/ResultActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/ResultActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
