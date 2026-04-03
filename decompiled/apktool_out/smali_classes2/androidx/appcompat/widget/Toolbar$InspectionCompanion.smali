.class public final Landroidx/appcompat/widget/Toolbar$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion",
        "<",
        "Landroidx/appcompat/widget/Toolbar;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollapseContentDescriptionId:I

.field private mCollapseIconId:I

.field private mContentInsetEndId:I

.field private mContentInsetEndWithActionsId:I

.field private mContentInsetLeftId:I

.field private mContentInsetRightId:I

.field private mContentInsetStartId:I

.field private mContentInsetStartWithNavigationId:I

.field private mLogoDescriptionId:I

.field private mLogoId:I

.field private mMenuId:I

.field private mNavigationContentDescriptionId:I

.field private mNavigationIconId:I

.field private mPopupThemeId:I

.field private mPropertiesMapped:Z

.field private mSubtitleId:I

.field private mTitleId:I

.field private mTitleMarginBottomId:I

.field private mTitleMarginEndId:I

.field private mTitleMarginStartId:I

.field private mTitleMarginTopId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 9

    const/16 v8, 0xf

    const/4 v7, 0x4

    const/16 v6, 0x11

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "416db1"

    const-wide/32 v2, -0x6c304cd8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->collapseContentDescription:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "791a9f"

    const-wide v2, -0x3e222abced800000L    # -2.00206241E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->collapseIcon:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    new-array v0, v8, [B

    fill-array-data v0, :array_2

    const-string v1, "6e7f8a"

    const-wide/32 v2, -0xd27fa60

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->contentInsetEnd:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "ee8f10"

    const-wide/32 v2, -0x33ad7e5d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->contentInsetEndWithActions:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "6e862a"

    const v2, -0x3167c3a2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->contentInsetLeft:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "abd52d"

    const-wide/32 v2, 0x48bebf26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->contentInsetRight:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "0263e8"

    const v2, 0x4eb9935c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->contentInsetStart:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "b5d7b2"

    const-wide v2, -0x3e3a9fbd8f800000L    # -7.17260001E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->contentInsetStartWithNavigation:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    new-array v0, v7, [B

    fill-array-data v0, :array_8

    const-string v1, "b52193"

    const-wide v2, 0x41ca431697000000L    # 8.81208622E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->logo:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoId:I

    new-array v0, v8, [B

    fill-array-data v0, :array_9

    const-string v1, "482f55"

    const/16 v2, 0x30f7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->logoDescription:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    new-array v0, v7, [B

    fill-array-data v0, :array_a

    const-string v1, "536e34"

    const/16 v2, -0x4e31

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->menu:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mMenuId:I

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "7faf58"

    const-wide/32 v2, 0x17d1e8d1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->navigationContentDescription:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_c

    const-string v1, "5c58bd"

    const-wide/32 v2, 0x7722a2a2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->navigationIcon:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "cccacd"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->popupTheme:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "441def"

    const/16 v2, 0x1b85

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->subtitle:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "f99bc2"

    const v2, 0x4d26c3b7    # 1.7486526E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->title:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleId:I

    new-array v0, v6, [B

    fill-array-data v0, :array_10

    const-string v1, "4f9dcb"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->titleMarginBottom:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_11

    const-string v1, "041c78"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->titleMarginEnd:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const-string v1, "d5c486"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->titleMarginStart:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    new-array v0, v5, [B

    fill-array-data v0, :array_13

    const-string v1, "ccbce3"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->titleMarginTop:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x5et
        0x5at
        0x8t
        0x3t
        0x41t
        0x47t
        0x54t
        0x75t
        0xbt
        0xct
        0x45t
        0x51t
        0x5ft
        0x42t
        0x20t
        0x7t
        0x42t
        0x57t
        0x43t
        0x5ft
        0x14t
        0x16t
        0x58t
        0x5bt
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0x56t
        0x5dt
        0xdt
        0x58t
        0x16t
        0x44t
        0x5ct
        0x78t
        0x2t
        0x56t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0xat
        0x59t
        0x12t
        0x5dt
        0xft
        0x42t
        0x2ct
        0x59t
        0x15t
        0x5dt
        0x15t
        0x73t
        0xbt
        0x53t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0xat
        0x56t
        0x12t
        0x54t
        0x5et
        0x11t
        0x2ct
        0x56t
        0x15t
        0x54t
        0x44t
        0x20t
        0xbt
        0x5ct
        0x31t
        0x58t
        0x44t
        0xdt
        0x24t
        0x5bt
        0x12t
        0x58t
        0x5ft
        0xbt
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x55t
        0xat
        0x56t
        0x42t
        0x57t
        0xft
        0x42t
        0x2ct
        0x56t
        0x45t
        0x57t
        0x15t
        0x7at
        0x0t
        0x5et
        0x42t
    .end array-data

    :array_5
    .array-data 1
        0x2t
        0xdt
        0xat
        0x41t
        0x57t
        0xat
        0x15t
        0x2bt
        0xat
        0x46t
        0x57t
        0x10t
        0x33t
        0xbt
        0x3t
        0x5dt
        0x46t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x53t
        0x5dt
        0x58t
        0x47t
        0x0t
        0x56t
        0x44t
        0x7bt
        0x58t
        0x40t
        0x0t
        0x4ct
        0x63t
        0x46t
        0x57t
        0x41t
        0x11t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0x5at
        0xat
        0x43t
        0x7t
        0x5ct
        0x16t
        0x7ct
        0xat
        0x44t
        0x7t
        0x46t
        0x31t
        0x41t
        0x5t
        0x45t
        0x16t
        0x65t
        0xbt
        0x41t
        0xct
        0x79t
        0x3t
        0x44t
        0xbt
        0x52t
        0x5t
        0x43t
        0xbt
        0x5dt
        0xct
    .end array-data

    :array_8
    .array-data 1
        0xet
        0x5at
        0x55t
        0x5et
    .end array-data

    :array_9
    .array-data 1
        0x58t
        0x57t
        0x55t
        0x9t
        0x71t
        0x50t
        0x47t
        0x5bt
        0x40t
        0xft
        0x45t
        0x41t
        0x5dt
        0x57t
        0x5ct
    .end array-data

    :array_a
    .array-data 1
        0x58t
        0x56t
        0x58t
        0x10t
    .end array-data

    :array_b
    .array-data 1
        0x59t
        0x7t
        0x17t
        0xft
        0x52t
        0x59t
        0x43t
        0xft
        0xet
        0x8t
        0x76t
        0x57t
        0x59t
        0x12t
        0x4t
        0x8t
        0x41t
        0x7ct
        0x52t
        0x15t
        0x2t
        0x14t
        0x5ct
        0x48t
        0x43t
        0xft
        0xet
        0x8t
    .end array-data

    :array_c
    .array-data 1
        0x5bt
        0x2t
        0x43t
        0x51t
        0x5t
        0x5t
        0x41t
        0xat
        0x5at
        0x56t
        0x2bt
        0x7t
        0x5at
        0xdt
    .end array-data

    nop

    :array_d
    .array-data 1
        0x13t
        0xct
        0x13t
        0x14t
        0x13t
        0x30t
        0xbt
        0x6t
        0xet
        0x4t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x47t
        0x41t
        0x53t
        0x10t
        0xct
        0x12t
        0x58t
        0x51t
    .end array-data

    :array_f
    .array-data 1
        0x12t
        0x50t
        0x4dt
        0xet
        0x6t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x40t
        0xft
        0x4dt
        0x8t
        0x6t
        0x2ft
        0x55t
        0x14t
        0x5et
        0xdt
        0xdt
        0x20t
        0x5bt
        0x12t
        0x4dt
        0xbt
        0xet
    .end array-data

    nop

    :array_11
    .array-data 1
        0x44t
        0x5dt
        0x45t
        0xft
        0x52t
        0x75t
        0x51t
        0x46t
        0x56t
        0xat
        0x59t
        0x7dt
        0x5et
        0x50t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x10t
        0x5ct
        0x17t
        0x58t
        0x5dt
        0x7bt
        0x5t
        0x47t
        0x4t
        0x5dt
        0x56t
        0x65t
        0x10t
        0x54t
        0x11t
        0x40t
    .end array-data

    :array_13
    .array-data 1
        0x17t
        0xat
        0x16t
        0xft
        0x0t
        0x7et
        0x2t
        0x11t
        0x5t
        0xat
        0xbt
        0x67t
        0xct
        0x13t
    .end array-data
.end method

.method public readProperties(Landroidx/appcompat/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseContentDescriptionId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mCollapseIconId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getCollapseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetEndWithActionsId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEndWithActions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetLeftId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetLeft()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetRightId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetRight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mContentInsetStartWithNavigationId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStartWithNavigation()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mLogoDescriptionId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getLogoDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mMenuId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationContentDescriptionId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mNavigationIconId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mPopupThemeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getPopupTheme()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mSubtitleId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginBottomId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginEndId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginStartId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->mTitleMarginTopId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/Toolbar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
