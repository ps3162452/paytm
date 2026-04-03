.class Lcom/dz/scanner/FistActivity$14;
.super Landroid/graphics/drawable/GradientDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/FistActivity;->initializeLogic()V
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

    iput-object p1, p0, Lcom/dz/scanner/FistActivity$14;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/dz/scanner/FistActivity$14;->setCornerRadius(F)V

    invoke-virtual {p0, p2}, Lcom/dz/scanner/FistActivity$14;->setColor(I)V

    return-object p0
.end method
