.class Landroidx/core/widget/TextViewCompat$OreoCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OreoCallback"
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object p2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a3a559"

    const v3, -0x318065ba

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c56fc4"

    const-wide/32 v4, -0x968ead7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x5dt
        0x5t
        0x47t
        0x5at
        0x50t
        0x5t
        0x1dt
        0x8t
        0x5bt
        0x41t
        0x5ct
        0xft
        0x47t
        0x4ft
        0x54t
        0x56t
        0x4dt
        0x8t
        0x5ct
        0xft
        0x1bt
        0x65t
        0x6bt
        0x2et
        0x70t
        0x24t
        0x66t
        0x66t
        0x66t
        0x35t
        0x76t
        0x39t
        0x61t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x50t
        0x4et
        0x12t
        0x4ct
        0x44t
        0xft
        0x54t
        0x5ft
        0x8t
    .end array-data
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 4

    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d29d27"

    const v3, 0x4e4ef650    # 8.680622E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isEditable(Landroid/widget/TextView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5t
        0x5ct
        0x5dt
        0x16t
        0x5dt
        0x5et
        0x0t
        0x1ct
        0x50t
        0xat
        0x46t
        0x52t
        0xat
        0x46t
        0x17t
        0x1t
        0x4at
        0x43t
        0x16t
        0x53t
        0x17t
        0x34t
        0x60t
        0x78t
        0x27t
        0x77t
        0x6at
        0x37t
        0x6dt
        0x63t
        0x21t
        0x6at
        0x6dt
        0x3bt
        0x60t
        0x72t
        0x25t
        0x76t
        0x76t
        0x2at
        0x7et
        0x6et
    .end array-data
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0, p1}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .locals 1

    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    if-nez v0, :cond_0

    iput-boolean v10, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    const/16 v0, 0x2a

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7901b7"

    const v5, -0x32c4e69a

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v5, "208c21"

    const v6, 0x4e2aabc1    # 7.158457E8f

    invoke-static {v1, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    move-object v1, v0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    const/16 v6, 0x22

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "a46ec5"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    iput-object v8, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    iput-object v8, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    iput-boolean v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v5, "3b237b"

    const-wide v6, 0x41da013122400000L    # 1.745142921E9

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v4}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    add-int/lit8 v5, v1, 0x64

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v2, v2, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    :cond_4
    :goto_5
    return-void

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_3

    :array_0
    .array-data 1
        0x54t
        0x56t
        0x5dt
        0x1ft
        0x3t
        0x59t
        0x53t
        0x4bt
        0x5ft
        0x58t
        0x6t
        0x19t
        0x5et
        0x57t
        0x44t
        0x54t
        0x10t
        0x59t
        0x56t
        0x55t
        0x1et
        0x47t
        0xbt
        0x52t
        0x40t
        0x17t
        0x5dt
        0x54t
        0xct
        0x42t
        0x19t
        0x74t
        0x55t
        0x5ft
        0x17t
        0x75t
        0x42t
        0x50t
        0x5ct
        0x55t
        0x7t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x40t
        0x55t
        0x55t
        0xct
        0x44t
        0x54t
        0x7bt
        0x44t
        0x5dt
        0xet
        0x73t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x5at
        0x52t
        0x17t
        0xct
        0x5ct
        0x5t
        0x1at
        0x5ft
        0xbt
        0x17t
        0x50t
        0xft
        0x40t
        0x18t
        0x4t
        0x0t
        0x41t
        0x8t
        0x5bt
        0x58t
        0x4bt
        0x33t
        0x67t
        0x2et
        0x77t
        0x73t
        0x36t
        0x30t
        0x6at
        0x35t
        0x71t
        0x6et
        0x31t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x41t
        0x7t
        0x5ft
        0x5ct
        0x41t
        0x7t
        0x7at
        0x16t
        0x57t
        0x5et
        0x76t
        0x16t
    .end array-data
.end method


# virtual methods
.method getWrappedCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
