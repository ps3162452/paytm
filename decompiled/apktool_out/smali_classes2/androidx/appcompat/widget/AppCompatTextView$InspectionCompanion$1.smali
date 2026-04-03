.class Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;->this$0:Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;->apply(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ad6bef"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "45cea9"

    const/16 v2, 0x233b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x14t
        0xat
        0x5ft
        0x4t
        0xat
        0x14t
        0xct
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x5at
        0xdt
        0x0t
    .end array-data
.end method
