.class public Lcom/dz/scanner/ProfileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private button2:Landroid/widget/Button;

.field private button3:Landroid/widget/Button;

.field private button4:Landroid/widget/Button;

.field private data:Landroid/content/SharedPreferences;

.field private edittext1:Landroid/widget/EditText;

.field private edittext4:Landroid/widget/EditText;

.field private edittext_full:Landroid/widget/EditText;

.field private edittext_short:Landroid/widget/EditText;

.field private imageview1:Landroid/widget/ImageView;

.field private internate:Landroid/content/Intent;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private linear7:Landroid/widget/LinearLayout;

.field private nm:Landroid/content/Intent;

.field private textview1:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private textview4:Landroid/widget/TextView;

.field private upi:Landroid/content/Intent;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/dz/scanner/ProfileActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->data:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetedittext1(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext1:Landroid/widget/EditText;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetedittext4(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext4:Landroid/widget/EditText;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetedittext_full(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_full:Landroid/widget/EditText;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetedittext_short(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_short:Landroid/widget/EditText;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetinternate(Lcom/dz/scanner/ProfileActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->internate:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetnm(Lcom/dz/scanner/ProfileActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->nm:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetupi(Lcom/dz/scanner/ProfileActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->upi:Landroid/content/Intent;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->internate:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->upi:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->nm:Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear1:Landroid/widget/LinearLayout;

    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear2:Landroid/widget/LinearLayout;

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->textview1:Landroid/widget/TextView;

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext1:Landroid/widget/EditText;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear4:Landroid/widget/LinearLayout;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->textview3:Landroid/widget/TextView;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_full:Landroid/widget/EditText;

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->textview2:Landroid/widget/TextView;

    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext4:Landroid/widget/EditText;

    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear5:Landroid/widget/LinearLayout;

    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear6:Landroid/widget/LinearLayout;

    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->textview4:Landroid/widget/TextView;

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_short:Landroid/widget/EditText;

    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear7:Landroid/widget/LinearLayout;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->linear3:Landroid/widget/LinearLayout;

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->imageview1:Landroid/widget/ImageView;

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->button2:Landroid/widget/Button;

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->button3:Landroid/widget/Button;

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->button4:Landroid/widget/Button;

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/ProfileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/ProfileActivity;->data:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->button2:Landroid/widget/Button;

    new-instance v1, Lcom/dz/scanner/ProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ProfileActivity$1;-><init>(Lcom/dz/scanner/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->button3:Landroid/widget/Button;

    new-instance v1, Lcom/dz/scanner/ProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ProfileActivity$2;-><init>(Lcom/dz/scanner/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->button4:Landroid/widget/Button;

    new-instance v1, Lcom/dz/scanner/ProfileActivity$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ProfileActivity$3;-><init>(Lcom/dz/scanner/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeLogic()V
    .locals 10

    const/4 v9, -0x1

    const v8, -0x1f1f20

    const v7, -0xfc560c

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_full:Landroid/widget/EditText;

    new-instance v1, Lcom/dz/scanner/ProfileActivity$4;

    invoke-direct {v1, p0}, Lcom/dz/scanner/ProfileActivity$4;-><init>(Lcom/dz/scanner/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v2, v1, 0xe

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v8, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext1:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setClickable(Z)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v2, v1, 0xe

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v8, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext4:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext4:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setClickable(Z)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v2, v1, 0xe

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v8, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_short:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_short:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setClickable(Z)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v2, v1, 0xe

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v8, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_full:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity;->edittext_full:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setClickable(Z)V

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

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getResources()Landroid/content/res/Resources;

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

    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/dz/scanner/ProfileActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/dz/scanner/ProfileActivity;->initialize(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    invoke-direct {p0}, Lcom/dz/scanner/ProfileActivity;->initializeLogic()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/dz/scanner/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
