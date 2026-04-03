.class public Lcom/dz/scanner/WebsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private _timer:Ljava/util/Timer;

.field private bank:Landroid/content/Intent;

.field private cuadro_abajo:Landroid/widget/LinearLayout;

.field private data:Landroid/content/SharedPreferences;

.field private imageview1:Landroid/widget/ImageView;

.field private imageview10:Landroid/widget/ImageView;

.field private imageview12:Landroid/widget/ImageView;

.field private imageview13:Landroid/widget/ImageView;

.field private imageview14:Landroid/widget/ImageView;

.field private imageview18:Landroid/widget/ImageView;

.field private imageview19:Landroid/widget/ImageView;

.field private imageview2:Landroid/widget/ImageView;

.field private imageview20:Landroid/widget/ImageView;

.field private imageview21:Landroid/widget/ImageView;

.field private imageview22:Landroid/widget/ImageView;

.field private imageview3:Landroid/widget/ImageView;

.field private imageview4:Landroid/widget/ImageView;

.field private imageview5:Landroid/widget/ImageView;

.field private imageview6:Landroid/widget/ImageView;

.field private imageview7:Landroid/widget/ImageView;

.field private imageview8:Landroid/widget/ImageView;

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

.field private linear24:Landroid/widget/LinearLayout;

.field private linear25:Landroid/widget/LinearLayout;

.field private linear26:Landroid/widget/LinearLayout;

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

.field private nest:Landroid/content/Intent;

.field private numbe:D

.field private nusen:Ljava/lang/String;

.field private posicion:D

.field private save:Landroid/content/SharedPreferences;

.field private textview1:Landroid/widget/TextView;

.field private time:Ljava/util/TimerTask;

.field private vib:Landroid/os/Vibrator;

.field private vscroll1:Landroid/widget/ScrollView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->bank:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetimageview10(Lcom/dz/scanner/WebsActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview10:Landroid/widget/ImageView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetintent(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetnest(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->nest:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/dz/scanner/WebsActivity;->numbe:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputnumbe(Lcom/dz/scanner/WebsActivity;D)V
    .locals 1

    iput-wide p1, p0, Lcom/dz/scanner/WebsActivity;->numbe:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->_timer:Ljava/util/Timer;

    iput-wide v2, p0, Lcom/dz/scanner/WebsActivity;->posicion:D

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->nusen:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->map1:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->map2:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->mas:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dz/scanner/WebsActivity;->numbe:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->listSalve:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->internet:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->nest:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->bank:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear1:Landroid/widget/LinearLayout;

    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear12:Landroid/widget/LinearLayout;

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->cuadro_abajo:Landroid/widget/LinearLayout;

    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear24:Landroid/widget/LinearLayout;

    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear22:Landroid/widget/LinearLayout;

    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->vscroll1:Landroid/widget/ScrollView;

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear26:Landroid/widget/LinearLayout;

    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview6:Landroid/widget/ImageView;

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear23:Landroid/widget/LinearLayout;

    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear25:Landroid/widget/LinearLayout;

    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview7:Landroid/widget/ImageView;

    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview8:Landroid/widget/ImageView;

    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview18:Landroid/widget/ImageView;

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview10:Landroid/widget/ImageView;

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview19:Landroid/widget/ImageView;

    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview20:Landroid/widget/ImageView;

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview22:Landroid/widget/ImageView;

    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview21:Landroid/widget/ImageView;

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview13:Landroid/widget/ImageView;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview14:Landroid/widget/ImageView;

    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->mini_cuadro:Landroid/widget/LinearLayout;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear15:Landroid/widget/LinearLayout;

    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear16:Landroid/widget/LinearLayout;

    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear17:Landroid/widget/LinearLayout;

    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear18:Landroid/widget/LinearLayout;

    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear19:Landroid/widget/LinearLayout;

    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear21:Landroid/widget/LinearLayout;

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview1:Landroid/widget/ImageView;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview2:Landroid/widget/ImageView;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview3:Landroid/widget/ImageView;

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview12:Landroid/widget/ImageView;

    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview4:Landroid/widget/ImageView;

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview5:Landroid/widget/ImageView;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->vib:Landroid/os/Vibrator;

    const-string v0, "data"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/WebsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->save:Landroid/content/SharedPreferences;

    const-string v0, "data"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/WebsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/WebsActivity;->data:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear26:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/WebsActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$1;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview8:Landroid/widget/ImageView;

    new-instance v1, Lcom/dz/scanner/WebsActivity$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$2;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview13:Landroid/widget/ImageView;

    new-instance v1, Lcom/dz/scanner/WebsActivity$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$3;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview14:Landroid/widget/ImageView;

    new-instance v1, Lcom/dz/scanner/WebsActivity$4;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$4;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear18:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/WebsActivity$5;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$5;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->imageview12:Landroid/widget/ImageView;

    new-instance v1, Lcom/dz/scanner/WebsActivity$6;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$6;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeLogic()V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dz/scanner/WebsActivity$7;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$7;-><init>(Lcom/dz/scanner/WebsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "MyAppPrefs"

    invoke-virtual {p0, v0, v2}, Lcom/dz/scanner/WebsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isLoggedIn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dz/scanner/WebsActivity;->finishAffinity()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->cuadro_abajo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->mini_cuadro:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->linear26:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dz/scanner/WebsActivity$8;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$8;-><init>(Lcom/dz/scanner/WebsActivity;)V

    const/16 v2, 0x168

    const v3, -0x442105

    invoke-virtual {v1, v2, v3}, Lcom/dz/scanner/WebsActivity$8;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->textview1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dz/scanner/WebsActivity;->data:Landroid/content/SharedPreferences;

    const-string v2, "nm"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/dz/scanner/WebsActivity$9;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$9;-><init>(Lcom/dz/scanner/WebsActivity;)V

    iput-object v1, p0, Lcom/dz/scanner/WebsActivity;->time:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity;->_timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/dz/scanner/WebsActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/WebsActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/WebsActivity;->getResources()Landroid/content/res/Resources;

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

    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/dz/scanner/WebsActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/WebsActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/WebsActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/WebsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
