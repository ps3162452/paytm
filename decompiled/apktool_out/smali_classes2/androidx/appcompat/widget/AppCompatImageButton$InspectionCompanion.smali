.class public final Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/AppCompatImageButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mPropertiesMapped:Z

.field private mTintId:I

.field private mTintModeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6ed5ad"

    const/16 v2, 0x5c33

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mBackgroundTintId:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "3566d7"

    const/16 v2, 0x454d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mBackgroundTintModeId:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "48806c"

    const v2, -0x313299f0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->tint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mTintId:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "62c9b1"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->tintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mTintModeId:I

    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    :array_0
    .array-data 1
        0x54t
        0x4t
        0x7t
        0x5et
        0x6t
        0x16t
        0x59t
        0x10t
        0xat
        0x51t
        0x35t
        0xdt
        0x58t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x54t
        0x55t
        0x5dt
        0x3t
        0x45t
        0x5ct
        0x40t
        0x58t
        0x52t
        0x30t
        0x5et
        0x5dt
        0x41t
        0x7bt
        0x59t
        0x0t
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x40t
        0x51t
        0x56t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x42t
        0x5bt
        0xdt
        0x4dt
        0x2ft
        0x5et
        0x52t
        0x57t
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatImageButton;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageButton;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->mTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageButton;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

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

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatImageButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
