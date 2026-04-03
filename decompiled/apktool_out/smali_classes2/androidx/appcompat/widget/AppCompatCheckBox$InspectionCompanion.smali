.class public final Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/AppCompatCheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mButtonTintId:I

.field private mButtonTintModeId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x1

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "a51ff1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mBackgroundTintId:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "072757"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mBackgroundTintModeId:I

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "546b95"

    const-wide v2, -0x3e2d30c889800000L    # -1.262280154E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->buttonTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mButtonTintId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "512755"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->buttonTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mButtonTintModeId:I

    iput-boolean v4, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    :array_0
    .array-data 1
        0x3t
        0x54t
        0x52t
        0xdt
        0x1t
        0x43t
        0xet
        0x40t
        0x5ft
        0x2t
        0x32t
        0x58t
        0xft
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x56t
        0x51t
        0x5ct
        0x52t
        0x45t
        0x5ft
        0x42t
        0x5ct
        0x53t
        0x61t
        0x5et
        0x5et
        0x43t
        0x7ft
        0x58t
        0x51t
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x57t
        0x41t
        0x42t
        0x16t
        0x56t
        0x5bt
        0x61t
        0x5dt
        0x58t
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x57t
        0x44t
        0x46t
        0x43t
        0x5at
        0x5bt
        0x61t
        0x58t
        0x5ct
        0x43t
        0x78t
        0x5at
        0x51t
        0x54t
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mButtonTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->mButtonTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

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

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
