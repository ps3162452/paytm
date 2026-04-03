.class public final Landroidx/core/view/ContentInfoCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ContentInfoCompat$Api31Impl;,
        Landroidx/core/view/ContentInfoCompat$Builder;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompat;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;,
        Landroidx/core/view/ContentInfoCompat$Compat;,
        Landroidx/core/view/ContentInfoCompat$Compat31Impl;,
        Landroidx/core/view/ContentInfoCompat$CompatImpl;,
        Landroidx/core/view/ContentInfoCompat$Flags;,
        Landroidx/core/view/ContentInfoCompat$Source;
    }
.end annotation


# static fields
.field public static final FLAG_CONVERT_TO_PLAIN_TEXT:I = 0x1

.field public static final SOURCE_APP:I = 0x0

.field public static final SOURCE_AUTOFILL:I = 0x4

.field public static final SOURCE_CLIPBOARD:I = 0x1

.field public static final SOURCE_DRAG_AND_DROP:I = 0x3

.field public static final SOURCE_INPUT_METHOD:I = 0x2

.field public static final SOURCE_PROCESS_TEXT:I = 0x5


# instance fields
.field private final mCompat:Landroidx/core/view/ContentInfoCompat$Compat;


# direct methods
.method constructor <init>(Landroidx/core/view/ContentInfoCompat$Compat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    return-void
.end method

.method static buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    new-instance v2, Landroid/content/ClipData;

    new-instance v1, Landroid/content/ClipDescription;

    invoke-direct {v1, p0}, Landroid/content/ClipDescription;-><init>(Landroid/content/ClipDescription;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    invoke-direct {v2, v1, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    invoke-virtual {v2, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static flagsToString(I)Ljava/lang/String;
    .locals 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d5603e"

    const/16 v2, -0x17b8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x22t
        0x79t
        0x77t
        0x77t
        0x6ct
        0x26t
        0x2bt
        0x7bt
        0x60t
        0x75t
        0x61t
        0x31t
        0x3bt
        0x61t
        0x79t
        0x6ft
        0x63t
        0x29t
        0x25t
        0x7ct
        0x78t
        0x6ft
        0x67t
        0x20t
        0x3ct
        0x61t
    .end array-data
.end method

.method static partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Landroidx/core/util/Predicate",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ClipData;",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    move-object v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_2
.end method

.method public static partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContentInfo;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/view/ContentInfoCompat$Api31Impl;->partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static sourceToString(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x13

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9073ba"

    const v2, 0x4db1ac1f    # 3.7260592E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "3793eb"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "039171"

    const-wide/32 v2, -0x272b342c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "1f086c"

    const-wide v2, -0x3e25ad6f7ec00000L    # -1.766474245E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "cd5304"

    const-wide/32 v2, 0x30386d70

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "4d0230"

    const-wide v2, 0x41d330703dc00000L    # 1.287766263E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x6at
        0x7ft
        0x62t
        0x61t
        0x21t
        0x24t
        0x66t
        0x60t
        0x65t
        0x7ct
        0x21t
        0x24t
        0x6at
        0x63t
        0x68t
        0x67t
        0x27t
        0x39t
        0x6dt
    .end array-data

    :array_1
    .array-data 1
        0x60t
        0x78t
        0x6ct
        0x61t
        0x26t
        0x27t
        0x6ct
        0x76t
        0x6ct
        0x67t
        0x2at
        0x24t
        0x7at
        0x7bt
        0x75t
    .end array-data

    :array_2
    .array-data 1
        0x63t
        0x7ct
        0x6ct
        0x63t
        0x74t
        0x74t
        0x6ft
        0x77t
        0x6bt
        0x70t
        0x70t
        0x6et
        0x71t
        0x7dt
        0x7dt
        0x6et
        0x73t
        0x63t
        0x7ft
        0x63t
    .end array-data

    :array_3
    .array-data 1
        0x62t
        0x29t
        0x65t
        0x6at
        0x75t
        0x26t
        0x6et
        0x2ft
        0x7et
        0x68t
        0x63t
        0x37t
        0x6et
        0x2bt
        0x75t
        0x6ct
        0x7et
        0x2ct
        0x75t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x2bt
        0x60t
        0x61t
        0x73t
        0x71t
        0x3ct
        0x27t
        0x79t
        0x7at
        0x60t
        0x76t
        0x2ct
        0x25t
        0x67t
        0x77t
    .end array-data

    :array_5
    .array-data 1
        0x67t
        0x2bt
        0x65t
        0x60t
        0x70t
        0x75t
        0x6bt
        0x25t
        0x60t
        0x62t
    .end array-data
.end method

.method public static toContentInfoCompat(Landroid/view/ContentInfo;)Landroidx/core/view/ContentInfoCompat;
    .locals 2

    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    new-instance v1, Landroidx/core/view/ContentInfoCompat$Compat31Impl;

    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$Compat31Impl;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    return-object v0
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getSource()I

    move-result v0

    return v0
.end method

.method public partition(Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroidx/core/view/ContentInfoCompat;",
            "Landroidx/core/view/ContentInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v1}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p0

    :goto_0
    if-eqz v2, :cond_0

    move-object p0, v0

    :cond_0
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v1, p1}, Landroidx/core/view/ContentInfoCompat;->partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_4

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v2, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipData;

    invoke-virtual {v2, v0}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    new-instance v3, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipData;

    invoke-virtual {v3, v0}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1
.end method

.method public toContentInfo()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getWrapped()Landroid/view/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
