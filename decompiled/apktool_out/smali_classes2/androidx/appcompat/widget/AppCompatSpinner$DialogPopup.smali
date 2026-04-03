.class Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Landroidx/appcompat/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "025f09"

    const-wide v2, -0x3e2cbe1db0000000L    # -1.29233952E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "398d7f"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x71t
        0x42t
        0x45t
        0x25t
        0x5ft
        0x54t
        0x40t
        0x53t
        0x41t
        0x35t
        0x40t
        0x50t
        0x5et
        0x5ct
        0x50t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x58t
        0x56t
        0xat
        0x58t
        0x12t
        0x13t
        0x4at
        0x5dt
        0x10t
        0x17t
        0x16t
        0x5ct
        0x49t
        0x4dt
        0x14t
        0x17t
        0x4t
        0x52t
        0x5at
        0x53t
        0x3t
        0x45t
        0x9t
        0x46t
        0x57t
        0x5ct
        0x44t
        0x51t
        0x9t
        0x41t
        0x19t
        0x75t
        0x2bt
        0x73t
        0x23t
        0x6ct
        0x7dt
        0x71t
        0x25t
        0x7bt
        0x29t
        0x74t
        0x15t
        0x18t
        0xdt
        0x50t
        0x8t
        0x5ct
        0x4bt
        0x51t
        0xat
        0x50t
    .end array-data
.end method

.method public setHorizontalOffset(I)V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c7fa8d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1c4175"

    const-wide v4, -0x3e31a5e809800000L    # -1.018441709E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x22t
        0x47t
        0x16t
        0x22t
        0x57t
        0x9t
        0x13t
        0x56t
        0x12t
        0x32t
        0x48t
        0xdt
        0xdt
        0x59t
        0x3t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x2t
        0x5at
        0x5ft
        0x58t
        0x41t
        0x11t
        0x10t
        0x51t
        0x45t
        0x17t
        0x5dt
        0x5et
        0x11t
        0x5dt
        0x4bt
        0x58t
        0x5bt
        0x45t
        0x2t
        0x58t
        0x11t
        0x58t
        0x53t
        0x57t
        0x10t
        0x51t
        0x45t
        0x17t
        0x53t
        0x5et
        0x11t
        0x14t
        0x7ct
        0x78t
        0x71t
        0x74t
        0x3ct
        0x70t
        0x78t
        0x76t
        0x79t
        0x7et
        0x24t
        0x18t
        0x11t
        0x5et
        0x52t
        0x5ft
        0xct
        0x46t
        0x58t
        0x59t
        0x52t
    .end array-data
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8eb537"

    const-wide/32 v2, 0x2bec636f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x41

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f3d904"

    const v3, 0x4e8f74a7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x79t
        0x15t
        0x12t
        0x76t
        0x5ct
        0x5at
        0x48t
        0x4t
        0x16t
        0x66t
        0x43t
        0x5et
        0x56t
        0xbt
        0x7t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x25t
        0x52t
        0xat
        0x57t
        0x5ft
        0x40t
        0x46t
        0x40t
        0x1t
        0x4dt
        0x10t
        0x5ct
        0x9t
        0x41t
        0xdt
        0x43t
        0x5ft
        0x5at
        0x12t
        0x52t
        0x8t
        0x19t
        0x18t
        0x5bt
        0x14t
        0x5at
        0x3t
        0x50t
        0x5et
        0x55t
        0xat
        0x1at
        0x44t
        0x56t
        0x56t
        0x52t
        0x15t
        0x56t
        0x10t
        0x19t
        0x56t
        0x5bt
        0x14t
        0x13t
        0x29t
        0x76t
        0x74t
        0x71t
        0x39t
        0x77t
        0x2dt
        0x78t
        0x7ct
        0x7bt
        0x21t
        0x1ft
        0x44t
        0x50t
        0x57t
        0x5at
        0x9t
        0x41t
        0xdt
        0x57t
        0x57t
    .end array-data
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "dbfb05"

    const-wide/32 v2, -0x34bc6204

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "4977c6"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x25t
        0x12t
        0x16t
        0x21t
        0x5ft
        0x58t
        0x14t
        0x3t
        0x12t
        0x31t
        0x40t
        0x5ct
        0xat
        0xct
        0x3t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x58t
        0x59t
        0x59t
        0xct
        0x42t
        0x14t
        0x4at
        0x52t
        0x43t
        0x43t
        0x40t
        0x51t
        0x4bt
        0x43t
        0x5et
        0x0t
        0x57t
        0x58t
        0x19t
        0x58t
        0x51t
        0x5t
        0x45t
        0x51t
        0x4dt
        0x17t
        0x51t
        0xct
        0x44t
        0x14t
        0x74t
        0x78t
        0x73t
        0x26t
        0x69t
        0x70t
        0x70t
        0x76t
        0x7bt
        0x2ct
        0x71t
        0x18t
        0x19t
        0x5et
        0x50t
        0xdt
        0x59t
        0x46t
        0x50t
        0x59t
        0x50t
    .end array-data
.end method

.method public show(II)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0
.end method
