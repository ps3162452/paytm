.class public final Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/AppCompatButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoSizeMaxTextSizeId:I

.field private mAutoSizeMinTextSizeId:I

.field private mAutoSizeStepGranularityId:I

.field private mAutoSizeTextTypeId:I

.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mDrawableTintId:I

.field private mDrawableTintModeId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 7

    const/16 v6, 0x13

    const/16 v5, 0x10

    const/4 v4, 0x1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "305eb4"

    const-wide v2, -0x3e329ab04c800000L    # -9.86357607E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->autoSizeMaxTextSize:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "5796f1"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->autoSizeMinTextSize:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "2d3184"

    const-wide v2, 0x41d7287f5d000000L    # 1.554120052E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->autoSizeStepGranularity:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeStepGranularityId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "8644d5"

    const v2, -0x31263653

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->autoSizeTextType:I

    new-instance v2, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;-><init>(Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;)V

    invoke-interface {p1, v0, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeTextTypeId:I

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "0bdb0c"

    const/16 v2, -0xaf

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mBackgroundTintId:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "cf0741"

    const/16 v2, 0x7436

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mBackgroundTintModeId:I

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "61caff"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->drawableTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mDrawableTintId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_7

    const-string v1, "c5403e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->drawableTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mDrawableTintModeId:I

    iput-boolean v4, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x52t
        0x45t
        0x41t
        0xat
        0x31t
        0x5dt
        0x49t
        0x55t
        0x78t
        0x4t
        0x1at
        0x60t
        0x56t
        0x48t
        0x41t
        0x36t
        0xbt
        0x4et
        0x56t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x42t
        0x4dt
        0x59t
        0x35t
        0x58t
        0x4ft
        0x52t
        0x74t
        0x5ft
        0x8t
        0x65t
        0x50t
        0x4ft
        0x4dt
        0x65t
        0xft
        0x4bt
        0x50t
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x11t
        0x47t
        0x5et
        0x6bt
        0x5dt
        0x48t
        0x1t
        0x60t
        0x45t
        0x5dt
        0x44t
        0x75t
        0x16t
        0x52t
        0x5ft
        0x4dt
        0x58t
        0x53t
        0x16t
        0x5at
        0x45t
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x59t
        0x43t
        0x40t
        0x5bt
        0x37t
        0x5ct
        0x42t
        0x53t
        0x60t
        0x51t
        0x1ct
        0x41t
        0x6ct
        0x4ft
        0x44t
        0x51t
    .end array-data

    :array_4
    .array-data 1
        0x52t
        0x3t
        0x7t
        0x9t
        0x57t
        0x11t
        0x5ft
        0x17t
        0xat
        0x6t
        0x64t
        0xat
        0x5et
        0x16t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x7t
        0x53t
        0x5ct
        0x53t
        0x43t
        0xct
        0x13t
        0x5et
        0x53t
        0x60t
        0x58t
        0xdt
        0x12t
        0x7dt
        0x58t
        0x50t
        0x54t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x52t
        0x43t
        0x2t
        0x16t
        0x7t
        0x4t
        0x5at
        0x54t
        0x37t
        0x8t
        0x8t
        0x12t
    .end array-data

    :array_7
    .array-data 1
        0x7t
        0x47t
        0x55t
        0x47t
        0x52t
        0x7t
        0xft
        0x50t
        0x60t
        0x59t
        0x5dt
        0x11t
        0x2et
        0x5at
        0x50t
        0x55t
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatButton;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getAutoSizeMaxTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getAutoSizeMinTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeStepGranularityId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getAutoSizeStepGranularity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mAutoSizeTextTypeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getAutoSizeTextType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mDrawableTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mDrawableTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

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

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
