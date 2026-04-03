.class Landroidx/core/app/ShareCompat$Api16Impl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static migrateExtraStreamToClipData(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d1be36"

    const-wide v4, -0x3e20304829c00000L    # -2.134826841E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "cb09ff"

    const-wide v4, 0x41c7c1179b000000L    # 7.97060918E8

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v5, v1, v3, v7, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    new-instance v3, Landroid/content/ClipData;

    new-array v0, v2, [Ljava/lang/String;

    aput-object v4, v0, v6

    invoke-direct {v3, v7, v0, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    new-instance v5, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v5, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x5ft
        0x6t
        0x17t
        0x5ct
        0x5ft
        0x0t
        0x1ft
        0xbt
        0xbt
        0x47t
        0x53t
        0xat
        0x45t
        0x4ct
        0x0t
        0x4bt
        0x42t
        0x16t
        0x50t
        0x4ct
        0x31t
        0x76t
        0x6et
        0x30t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0xct
        0x54t
        0x4bt
        0x9t
        0xft
        0x7t
        0x4ct
        0x59t
        0x57t
        0x12t
        0x3t
        0xdt
        0x16t
        0x1et
        0x5ct
        0x1et
        0x12t
        0x11t
        0x3t
        0x1et
        0x71t
        0x32t
        0x2bt
        0x2ft
        0x3dt
        0x64t
        0x7ct
        0x3et
        0x32t
    .end array-data
.end method

.method static removeClipData(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method
