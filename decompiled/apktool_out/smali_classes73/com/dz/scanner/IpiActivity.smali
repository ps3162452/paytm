.class public Lcom/dz/scanner/IpiActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private checkupi:Landroid/widget/TextView;

.field private editText1:Landroid/widget/TextView;

.field private imageview1:Landroid/widget/ImageView;

.field private imageview18:Landroid/widget/ImageView;

.field private imageview2:Landroid/widget/ImageView;

.field private imageview3:Landroid/widget/ImageView;

.field private inte:Landroid/content/Intent;

.field private line1:Landroid/widget/ImageView;

.field private line2:Landroid/widget/ImageView;

.field private line3:Landroid/widget/ImageView;

.field private line4:Landroid/widget/ImageView;

.field private linear10:Landroid/widget/LinearLayout;

.field private linear11:Landroid/widget/LinearLayout;

.field private linear12:Landroid/widget/LinearLayout;

.field private linear13:Landroid/widget/LinearLayout;

.field private linear14:Landroid/widget/LinearLayout;

.field private linear15:Landroid/widget/LinearLayout;

.field private linear17:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear20:Landroid/widget/LinearLayout;

.field private linear21:Landroid/widget/LinearLayout;

.field private linear22:Landroid/widget/LinearLayout;

.field private linear24:Landroid/widget/LinearLayout;

.field private linear25:Landroid/widget/LinearLayout;

.field private linear26:Landroid/widget/LinearLayout;

.field private linear27:Landroid/widget/LinearLayout;

.field private linear28:Landroid/widget/LinearLayout;

.field private linear29:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private linear7:Landroid/widget/LinearLayout;

.field private linear8:Landroid/widget/LinearLayout;

.field private linear9:Landroid/widget/LinearLayout;

.field private spn:Landroid/widget/TextView;

.field private textView77:Landroid/widget/TextView;

.field private textView88:Landroid/widget/TextView;

.field private textview1:Landroid/widget/TextView;

.field private textview10:Landroid/widget/TextView;

.field private textview13:Landroid/widget/TextView;

.field private textview14:Landroid/widget/TextView;

.field private textview18:Landroid/widget/TextView;

.field private textview19:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview20:Landroid/widget/TextView;

.field private textview21:Landroid/widget/TextView;

.field private textview22:Landroid/widget/TextView;

.field private textview23:Landroid/widget/TextView;

.field private textview24:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private textview4:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private textview8:Landroid/widget/TextView;

.field private textview9:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgeteditText1(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->editText1:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->inte:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetline1(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->line1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetline2(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->line2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetline3(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->line3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetline4(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->line4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetspn(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->spn:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextView77(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textView77:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextView88(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textView88:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettextview24(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview24:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->inte:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear6:Landroid/widget/LinearLayout;

    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear7:Landroid/widget/LinearLayout;

    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear8:Landroid/widget/LinearLayout;

    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear21:Landroid/widget/LinearLayout;

    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear22:Landroid/widget/LinearLayout;

    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear28:Landroid/widget/LinearLayout;

    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->editText1:Landroid/widget/TextView;

    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->spn:Landroid/widget/TextView;

    const v0, 0x7f08018b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear9:Landroid/widget/LinearLayout;

    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear10:Landroid/widget/LinearLayout;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear15:Landroid/widget/LinearLayout;

    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear17:Landroid/widget/LinearLayout;

    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview13:Landroid/widget/TextView;

    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview14:Landroid/widget/TextView;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->imageview3:Landroid/widget/ImageView;

    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear18:Landroid/widget/LinearLayout;

    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear19:Landroid/widget/LinearLayout;

    const v0, 0x7f08027d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview18:Landroid/widget/TextView;

    const v0, 0x7f08027e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview19:Landroid/widget/TextView;

    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textView88:Landroid/widget/TextView;

    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear20:Landroid/widget/LinearLayout;

    const v0, 0x7f080280

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview20:Landroid/widget/TextView;

    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textView77:Landroid/widget/TextView;

    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview21:Landroid/widget/TextView;

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear29:Landroid/widget/LinearLayout;

    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview24:Landroid/widget/TextView;

    const v0, 0x7f080282

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview22:Landroid/widget/TextView;

    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear24:Landroid/widget/LinearLayout;

    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear25:Landroid/widget/LinearLayout;

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear26:Landroid/widget/LinearLayout;

    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear27:Landroid/widget/LinearLayout;

    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->line1:Landroid/widget/ImageView;

    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->line2:Landroid/widget/ImageView;

    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->line3:Landroid/widget/ImageView;

    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->line4:Landroid/widget/ImageView;

    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->imageview18:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->checkupi:Landroid/widget/TextView;

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview23:Landroid/widget/TextView;

    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear11:Landroid/widget/LinearLayout;

    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear12:Landroid/widget/LinearLayout;

    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear13:Landroid/widget/LinearLayout;

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->linear14:Landroid/widget/LinearLayout;

    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview4:Landroid/widget/TextView;

    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview5:Landroid/widget/TextView;

    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview6:Landroid/widget/TextView;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->imageview2:Landroid/widget/ImageView;

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview2:Landroid/widget/TextView;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview3:Landroid/widget/TextView;

    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview10:Landroid/widget/TextView;

    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview7:Landroid/widget/TextView;

    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview8:Landroid/widget/TextView;

    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview9:Landroid/widget/TextView;

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/IpiActivity;->imageview1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview4:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$1;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview6:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$2;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview1:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$3;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview2:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$4;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$4;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview3:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$5;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$5;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview10:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$6;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$6;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview7:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$7;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$7;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview8:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$8;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$8;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview9:Landroid/widget/TextView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$9;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$9;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->imageview1:Landroid/widget/ImageView;

    new-instance v1, Lcom/dz/scanner/IpiActivity$10;

    invoke-direct {v1, p0}, Lcom/dz/scanner/IpiActivity$10;-><init>(Lcom/dz/scanner/IpiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeLogic()V
    .locals 6

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->checkupi:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sani"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textView77:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "amo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->editText1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "up"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textView88:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nam"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview24:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->spn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "spn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    const/16 v2, -0x1f4e

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/dz/scanner/IpiActivity;->linear28:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity;->textview23:Landroid/widget/TextView;

    const-string v1, "You are SENDING"

    const-string v2, " \u20b9 "

    iget-object v3, p0, Lcom/dz/scanner/IpiActivity;->textView77:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " from your account to "

    iget-object v5, p0, Lcom/dz/scanner/IpiActivity;->textView88:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getResources()Landroid/content/res/Resources;

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

    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/dz/scanner/IpiActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/IpiActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/IpiActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/IpiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
