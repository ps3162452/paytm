.class public final Lcom/google/android/material/navigation/NavigationBarMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;


# instance fields
.field private final maxItemCount:I

.field private final viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->stopDispatchingItemsChanged()V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    instance-of v0, v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->startDispatchingItemsChanged()V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "6af195"

    const/16 v5, 0x7b93

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "8fb9b9"

    const-wide/32 v6, -0x2025c2ce

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "3e9383"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "42c9e5"

    const-wide/32 v4, 0x51815f76

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x7bt
        0x0t
        0x1et
        0x58t
        0x54t
        0x40t
        0x5bt
        0x41t
        0x8t
        0x44t
        0x54t
        0x57t
        0x53t
        0x13t
        0x46t
        0x5et
        0x5ft
        0x15t
        0x5ft
        0x15t
        0x3t
        0x5ct
        0x4at
        0x15t
        0x45t
        0x14t
        0x16t
        0x41t
        0x56t
        0x47t
        0x42t
        0x4t
        0x2t
        0x11t
        0x5bt
        0x4ct
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0xft
        0x11t
        0x19t
    .end array-data

    :array_2
    .array-data 1
        0x1dt
        0x45t
        0x75t
        0x5at
        0x55t
        0x5at
        0x47t
        0x45t
        0x5at
        0x52t
        0x56t
        0x13t
        0x51t
        0x0t
        0x19t
        0x50t
        0x50t
        0x56t
        0x50t
        0xet
        0x5ct
        0x57t
        0x18t
        0x44t
        0x5at
        0x11t
        0x51t
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x17t
        0x55t
        0x6t
        0x4dt
        0x28t
        0x54t
        0x4ct
        0x7bt
        0x17t
        0x5ct
        0x8t
        0x76t
        0x5bt
        0x47t
        0xdt
        0x4dt
        0x4dt
        0x1ct
    .end array-data
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bfaf19"

    const-wide/32 v4, -0x4ec0c3e5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x42t
        0x2t
        0xet
        0x3t
        0x42t
        0x19t
        0xct
        0x9t
        0x15t
        0x46t
        0x42t
        0x4ct
        0x12t
        0x16t
        0xet
        0x14t
        0x45t
        0x19t
        0x11t
        0x13t
        0x3t
        0xbt
        0x54t
        0x57t
        0x17t
        0x15t
    .end array-data
.end method

.method public getMaxItemCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    return v0
.end method
