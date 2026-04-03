.class public Lcom/dz/scanner/BanksActivity$Listview1Adapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dz/scanner/BanksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listview1Adapter"
.end annotation


# instance fields
.field _data:Ljava/util/ArrayList;
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

.field final this$0:Lcom/dz/scanner/BanksActivity;


# direct methods
.method public constructor <init>(Lcom/dz/scanner/BanksActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->_data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->getItem(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->_data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-virtual {v0}, Lcom/dz/scanner/BanksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    const v1, 0x7f0b0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f080152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f080161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08016c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v1, 0x7f080177

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v1, 0x7f0801d9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801cc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0801f8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08010d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v4, 0x7f080052

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08023c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080050

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f08017f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v7, 0x7f0802ab

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0802a7

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f080288

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v9, 0x7f080130

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v9, 0x7f0800a4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v10}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "line1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v6}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v10, "line2"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v6}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "line3"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v2}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "line4"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "line5"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "line6"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "line7"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "line8"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "line9"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/dz/scanner/SketchwareUtil;->getRandom(II)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fputna(Lcom/dz/scanner/BanksActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetna(Lcom/dz/scanner/BanksActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput-byte v4, v2, v3

    const-string v3, "9a66f1"

    const/16 v4, 0x4270

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/dz/scanner/BanksActivity$Listview1Adapter$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$1;-><init>(Lcom/dz/scanner/BanksActivity$Listview1Adapter;)V

    const/16 v2, 0x168

    const/16 v3, -0x6800

    invoke-virtual {v1, v2, v3}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$1;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetna(Lcom/dz/scanner/BanksActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x50

    aput-byte v4, v2, v3

    const-string v3, "b4a19d"

    const-wide/32 v4, -0x78c51e55

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;-><init>(Lcom/dz/scanner/BanksActivity$Listview1Adapter;)V

    const/16 v2, 0x168

    const v3, -0xc0ae4b

    invoke-virtual {v1, v2, v3}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v1}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetna(Lcom/dz/scanner/BanksActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    const-string v3, "72fbc4"

    const v4, 0x4e65d363    # 9.63959E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/dz/scanner/BanksActivity$Listview1Adapter$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$3;-><init>(Lcom/dz/scanner/BanksActivity$Listview1Adapter;)V

    const/16 v2, 0x168

    const v3, -0xff7c71

    invoke-virtual {v1, v2, v3}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
