.class public Lcom/dz/scanner/HistoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;
    }
.end annotation


# instance fields
.field private ReSuLt:Ljava/lang/String;

.field private _timer:Ljava/util/Timer;

.field private amo1:Landroid/widget/TextView;

.field private amon:Landroid/widget/TextView;

.field private amout:Landroid/widget/TextView;

.field private banknuber:Landroid/widget/TextView;

.field private cuadro_abajo:Landroid/widget/LinearLayout;

.field private data:Landroid/content/SharedPreferences;

.field private date:Landroid/widget/TextView;

.field private datee:Landroid/widget/TextView;

.field private edittext1:Landroid/widget/EditText;

.field private imageview1:Landroid/widget/ImageView;

.field private imageview10:Landroid/widget/ImageView;

.field private imageview12:Landroid/widget/ImageView;

.field private imageview14:Landroid/widget/ImageView;

.field private imageview15:Landroid/widget/ImageView;

.field private imageview5:Landroid/widget/ImageView;

.field private imageview7:Landroid/widget/ImageView;

.field private imageview8:Landroid/widget/ImageView;

.field private imageview9:Landroid/widget/ImageView;

.field private intent:Landroid/content/Intent;

.field private internet:Landroid/content/Intent;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear12:Landroid/widget/LinearLayout;

.field private linear15:Landroid/widget/LinearLayout;

.field private linear16:Landroid/widget/LinearLayout;

.field private linear17:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear21:Landroid/widget/LinearLayout;

.field private linear22:Landroid/widget/LinearLayout;

.field private linear23:Landroid/widget/LinearLayout;

.field private linear25:Landroid/widget/LinearLayout;

.field private linear26:Landroid/widget/LinearLayout;

.field private linear27:Landroid/widget/LinearLayout;

.field private linear28:Landroid/widget/LinearLayout;

.field private linear29:Landroid/widget/LinearLayout;

.field private linear31:Landroid/widget/LinearLayout;

.field private linear32:Landroid/widget/LinearLayout;

.field private linear33:Landroid/widget/LinearLayout;

.field private linear34:Landroid/widget/LinearLayout;

.field private linear35:Landroid/widget/LinearLayout;

.field private linear37:Landroid/widget/LinearLayout;

.field private linear38:Landroid/widget/LinearLayout;

.field private linear39:Landroid/widget/LinearLayout;

.field private linear40:Landroid/widget/LinearLayout;

.field private linear41:Landroid/widget/LinearLayout;

.field private linear42:Landroid/widget/LinearLayout;

.field private linear45:Landroid/widget/LinearLayout;

.field private linear46:Landroid/widget/LinearLayout;

.field private listSalve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private map1:Ljava/util/HashMap;
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

.field private map2:Ljava/util/HashMap;
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

.field private mas:Ljava/lang/String;

.field private mini_cuadro:Landroid/widget/LinearLayout;

.field private na:Ljava/lang/String;

.field private name:Landroid/widget/TextView;

.field private nm:Landroid/widget/TextView;

.field private numbe:D

.field private number:D

.field private nusen:Ljava/lang/String;

.field private posicion:D

.field private textview1:Landroid/widget/TextView;

.field private textview11:Landroid/widget/TextView;

.field private textview13:Landroid/widget/TextView;

.field private textview21:Landroid/widget/TextView;

.field private textview22:Landroid/widget/TextView;

.field private textview23:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private textview9:Landroid/widget/TextView;

.field private time:Ljava/util/TimerTask;

.field private upi:Landroid/widget/TextView;

.field private username:Landroid/widget/TextView;

.field private usesm:Landroid/widget/TextView;

.field private utr:Landroid/widget/TextView;

.field private vib:Landroid/os/Vibrator;

.field private vscroll1:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->_timer:Ljava/util/Timer;

    iput-wide v2, p0, Lcom/dz/scanner/HistoryActivity;->posicion:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->nusen:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->map1:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->map2:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->mas:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dz/scanner/HistoryActivity;->numbe:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->na:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dz/scanner/HistoryActivity;->number:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->ReSuLt:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->listSalve:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->internet:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear1:Landroid/widget/LinearLayout;

    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear12:Landroid/widget/LinearLayout;

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->cuadro_abajo:Landroid/widget/LinearLayout;

    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview7:Landroid/widget/ImageView;

    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear22:Landroid/widget/LinearLayout;

    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->vscroll1:Landroid/widget/ScrollView;

    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear23:Landroid/widget/LinearLayout;

    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear25:Landroid/widget/LinearLayout;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview14:Landroid/widget/ImageView;

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear26:Landroid/widget/LinearLayout;

    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear27:Landroid/widget/LinearLayout;

    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->amon:Landroid/widget/TextView;

    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->amo1:Landroid/widget/TextView;

    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview9:Landroid/widget/ImageView;

    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear28:Landroid/widget/LinearLayout;

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear29:Landroid/widget/LinearLayout;

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview12:Landroid/widget/ImageView;

    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear35:Landroid/widget/LinearLayout;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview3:Landroid/widget/TextView;

    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->amout:Landroid/widget/TextView;

    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview5:Landroid/widget/TextView;

    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview8:Landroid/widget/ImageView;

    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview6:Landroid/widget/TextView;

    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview7:Landroid/widget/TextView;

    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear32:Landroid/widget/LinearLayout;

    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear31:Landroid/widget/LinearLayout;

    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear33:Landroid/widget/LinearLayout;

    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear34:Landroid/widget/LinearLayout;

    const v0, 0x7f0801cc

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->name:Landroid/widget/TextView;

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview10:Landroid/widget/ImageView;

    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview9:Landroid/widget/TextView;

    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->upi:Landroid/widget/TextView;

    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear46:Landroid/widget/LinearLayout;

    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->nm:Landroid/widget/TextView;

    const v0, 0x7f080174

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear37:Landroid/widget/LinearLayout;

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear45:Landroid/widget/LinearLayout;

    const v0, 0x7f080276

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview11:Landroid/widget/TextView;

    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->username:Landroid/widget/TextView;

    const v0, 0x7f080176

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear39:Landroid/widget/LinearLayout;

    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear41:Landroid/widget/LinearLayout;

    const v0, 0x7f080178

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear40:Landroid/widget/LinearLayout;

    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear42:Landroid/widget/LinearLayout;

    const v0, 0x7f080282

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview22:Landroid/widget/TextView;

    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview13:Landroid/widget/TextView;

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview23:Landroid/widget/TextView;

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->edittext1:Landroid/widget/EditText;

    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->banknuber:Landroid/widget/TextView;

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview15:Landroid/widget/ImageView;

    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->date:Landroid/widget/TextView;

    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->datee:Landroid/widget/TextView;

    const v0, 0x7f0802ab

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->utr:Landroid/widget/TextView;

    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->textview21:Landroid/widget/TextView;

    const v0, 0x7f080175

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear38:Landroid/widget/LinearLayout;

    const v0, 0x7f0802aa

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->usesm:Landroid/widget/TextView;

    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->mini_cuadro:Landroid/widget/LinearLayout;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear15:Landroid/widget/LinearLayout;

    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear16:Landroid/widget/LinearLayout;

    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear17:Landroid/widget/LinearLayout;

    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear18:Landroid/widget/LinearLayout;

    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear19:Landroid/widget/LinearLayout;

    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear21:Landroid/widget/LinearLayout;

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview1:Landroid/widget/ImageView;

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->imageview5:Landroid/widget/ImageView;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->vib:Landroid/os/Vibrator;

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/HistoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->data:Landroid/content/SharedPreferences;

    return-void
.end method

.method private initializeLogic()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x168

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v2, v1, 0xf

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, -0x1f1f20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/dz/scanner/HistoryActivity;->linear25:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->amout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some8"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->amo1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some1"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->upi:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->nm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->datee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some5"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->username:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dz/scanner/HistoryActivity;->data:Landroid/content/SharedPreferences;

    const-string v2, "nc"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->edittext1:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dz/scanner/HistoryActivity;->data:Landroid/content/SharedPreferences;

    const-string v2, "nc1"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->usesm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dz/scanner/HistoryActivity;->data:Landroid/content/SharedPreferences;

    const-string v2, "nc2"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->utr:Landroid/widget/TextView;

    const-string v1, "UPI Ref No: "

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "some7"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->amout:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dz/scanner/HistoryActivity;->number:D

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/HistoryActivity;->_getWordFromNumber(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->ReSuLt:Ljava/lang/String;

    iget-object v1, p0, Lcom/dz/scanner/HistoryActivity;->textview6:Landroid/widget/TextView;

    const-string v2, "Rupees "

    const-string v3, " Only"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/dz/scanner/SketchwareUtil;->getRandom(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/HistoryActivity;->na:Ljava/lang/String;

    new-array v1, v4, [B

    const/16 v2, 0x8

    aput-byte v2, v1, v6

    const-string v2, "92ba18"

    invoke-static {v1, v2, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear46:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/HistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/HistoryActivity$1;-><init>(Lcom/dz/scanner/HistoryActivity;)V

    const/16 v2, -0x6800

    invoke-virtual {v1, v5, v2}, Lcom/dz/scanner/HistoryActivity$1;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear38:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/HistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/HistoryActivity$2;-><init>(Lcom/dz/scanner/HistoryActivity;)V

    const v2, -0x98c549

    invoke-virtual {v1, v5, v2}, Lcom/dz/scanner/HistoryActivity$2;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->na:Ljava/lang/String;

    new-array v1, v4, [B

    const/16 v2, 0x51

    aput-byte v2, v1, v6

    const-string v2, "cf1281"

    const v3, 0x4e5f863e    # 9.375292E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear46:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/HistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/HistoryActivity$3;-><init>(Lcom/dz/scanner/HistoryActivity;)V

    const v2, -0xc0ae4b

    invoke-virtual {v1, v5, v2}, Lcom/dz/scanner/HistoryActivity$3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear38:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/HistoryActivity$4;

    invoke-direct {v1, p0}, Lcom/dz/scanner/HistoryActivity$4;-><init>(Lcom/dz/scanner/HistoryActivity;)V

    const/16 v2, -0x3ef9

    invoke-virtual {v1, v5, v2}, Lcom/dz/scanner/HistoryActivity$4;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->na:Ljava/lang/String;

    new-array v1, v4, [B

    const/16 v2, 0x52

    aput-byte v2, v1, v6

    const-string v2, "a82067"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear46:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/HistoryActivity$5;

    invoke-direct {v1, p0}, Lcom/dz/scanner/HistoryActivity$5;-><init>(Lcom/dz/scanner/HistoryActivity;)V

    const v2, -0xff7c71

    invoke-virtual {v1, v5, v2}, Lcom/dz/scanner/HistoryActivity$5;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/HistoryActivity;->linear38:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/HistoryActivity$6;

    invoke-direct {v1, p0}, Lcom/dz/scanner/HistoryActivity$6;-><init>(Lcom/dz/scanner/HistoryActivity;)V

    const v2, -0xde690d

    invoke-virtual {v1, v5, v2}, Lcom/dz/scanner/HistoryActivity$6;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
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

    invoke-static {v0, v1}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convert(J)Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getResources()Landroid/content/res/Resources;

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

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/dz/scanner/HistoryActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/HistoryActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/HistoryActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
