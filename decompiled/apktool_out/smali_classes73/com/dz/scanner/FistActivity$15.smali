.class Lcom/dz/scanner/FistActivity$15;
.super Landroid/graphics/drawable/GradientDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/FistActivity;->_onCreateActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/FistActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/FistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/FistActivity$15;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/dz/scanner/FistActivity$15;->setCornerRadius(F)V

    invoke-virtual {p0, p2, p3}, Lcom/dz/scanner/FistActivity$15;->setStroke(II)V

    invoke-virtual {p0, p4}, Lcom/dz/scanner/FistActivity$15;->setColor(I)V

    return-object p0
.end method
