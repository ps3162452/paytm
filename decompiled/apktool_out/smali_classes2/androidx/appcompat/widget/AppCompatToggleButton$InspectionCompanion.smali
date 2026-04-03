.class public final Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/AppCompatToggleButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "693fcf"

    const v2, 0x4e9c2c3a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mBackgroundTintId:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "a0bde0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mBackgroundTintModeId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    :array_0
    .array-data 1
        0x54t
        0x58t
        0x50t
        0xdt
        0x4t
        0x14t
        0x59t
        0x4ct
        0x5dt
        0x2t
        0x37t
        0xft
        0x58t
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3t
        0x51t
        0x1t
        0xft
        0x2t
        0x42t
        0xet
        0x45t
        0xct
        0x0t
        0x31t
        0x59t
        0xft
        0x44t
        0x2ft
        0xbt
        0x1t
        0x55t
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatToggleButton;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatToggleButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatToggleButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

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

    check-cast p1, Landroidx/appcompat/widget/AppCompatToggleButton;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatToggleButton$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatToggleButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
