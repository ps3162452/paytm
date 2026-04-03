.class public final Landroidx/appcompat/widget/SearchView$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/SearchView;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconifiedByDefaultId:I

.field private mImeOptionsId:I

.field private mMaxWidthId:I

.field private mPropertiesMapped:Z

.field private mQueryHintId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 5

    const/4 v4, 0x1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "89db78"

    const/16 v2, 0x5e99

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1010264

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mImeOptionsId:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "1de305"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const v1, 0x101011f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "771924"

    const-wide/32 v2, -0xf0d1d8a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->iconifiedByDefault:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "f49331"

    const/16 v2, -0x47d8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->queryHint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    iput-boolean v4, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0x54t
        0x1t
        0x2dt
        0x47t
        0x4ct
        0x51t
        0x56t
        0xat
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ct
        0x5t
        0x1dt
        0x64t
        0x59t
        0x51t
        0x45t
        0xct
    .end array-data

    :array_2
    .array-data 1
        0x5et
        0x54t
        0x5et
        0x57t
        0x5bt
        0x52t
        0x5et
        0x52t
        0x55t
        0x7bt
        0x4bt
        0x70t
        0x52t
        0x51t
        0x50t
        0x4ct
        0x5et
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x17t
        0x41t
        0x5ct
        0x41t
        0x4at
        0x79t
        0xft
        0x5at
        0x4dt
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/SearchView;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mImeOptionsId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->isIconfiedByDefault()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/SearchView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
