.class public Landroidx/appcompat/view/menu/MenuWrapperICS;
.super Landroidx/appcompat/view/menu/BaseMenuWrapper;

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private final mWrappedObject:Landroidx/core/internal/view/SupportMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "906499"

    const v3, -0x321276ac

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6et
        0x42t
        0x57t
        0x44t
        0x49t
        0x5ct
        0x5dt
        0x10t
        0x79t
        0x56t
        0x53t
        0x5ct
        0x5at
        0x44t
        0x16t
        0x57t
        0x58t
        0x57t
        0x19t
        0x5et
        0x59t
        0x40t
        0x19t
        0x5bt
        0x5ct
        0x10t
        0x58t
        0x41t
        0x55t
        0x55t
        0x17t
    .end array-data
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 10

    const/4 v9, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    array-length v1, v0

    new-array v9, v1, [Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroidx/core/internal/view/SupportMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v2

    if-eqz v9, :cond_1

    const/4 v1, 0x0

    array-length v3, v9

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v9, v1

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, p8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->internalClear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenu;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenu;->close()V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->performIdentifierAction(II)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3}, Landroidx/core/internal/view/SupportMenu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public removeGroup(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->internalRemoveGroup(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->removeGroup(I)V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;->internalRemoveItem(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->removeItem(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2, p3}, Landroidx/core/internal/view/SupportMenu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->setGroupEnabled(IZ)V

    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1, p2}, Landroidx/core/internal/view/SupportMenu;->setGroupVisible(IZ)V

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0, p1}, Landroidx/core/internal/view/SupportMenu;->setQwertyMode(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenu;

    invoke-interface {v0}, Landroidx/core/internal/view/SupportMenu;->size()I

    move-result v0

    return v0
.end method
