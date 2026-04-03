.class Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;
.super Landroid/graphics/drawable/GradientDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/BanksActivity$Listview1Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/BanksActivity$Listview1Adapter;


# direct methods
.method constructor <init>(Lcom/dz/scanner/BanksActivity$Listview1Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;->this$1:Lcom/dz/scanner/BanksActivity$Listview1Adapter;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;->setCornerRadius(F)V

    invoke-virtual {p0, p2}, Lcom/dz/scanner/BanksActivity$Listview1Adapter$2;->setColor(I)V

    return-object p0
.end method
