.class public final Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/AppCompatRadioButton;",
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

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x1

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "fc52aa"

    const-wide/32 v2, -0x74e89947

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mBackgroundTintId:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "b01c5f"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mBackgroundTintModeId:I

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "c57226"

    const-wide v2, -0x3e4c955ad6000000L    # -3.25756202E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->buttonTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mButtonTintId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "866336"

    const v2, -0x315db22e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->buttonTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mButtonTintModeId:I

    iput-boolean v4, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x2t
        0x56t
        0x59t
        0x6t
        0x13t
        0x9t
        0x16t
        0x5bt
        0x56t
        0x35t
        0x8t
        0x8t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x51t
        0x52t
        0x8t
        0x52t
        0x14t
        0xdt
        0x45t
        0x5ft
        0x7t
        0x61t
        0xft
        0xct
        0x44t
        0x7ct
        0xct
        0x51t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x40t
        0x43t
        0x46t
        0x5dt
        0x58t
        0x37t
        0x5ct
        0x59t
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5at
        0x43t
        0x42t
        0x47t
        0x5ct
        0x58t
        0x6ct
        0x5ft
        0x58t
        0x47t
        0x7et
        0x59t
        0x5ct
        0x53t
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mButtonTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->mButtonTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

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

    check-cast p1, Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
