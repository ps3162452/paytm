.class public Landroidx/constraintlayout/core/parser/CLObject;
.super Landroidx/constraintlayout/core/parser/CLContainer;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/constraintlayout/core/parser/CLContainer;",
        "Ljava/lang/Iterable",
        "<",
        "Landroidx/constraintlayout/core/parser/CLKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLObject;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;-><init>(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/parser/CLObject;)V

    return-object v0
.end method

.method public toFormattedJSON()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFormattedJSON(II)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->getDebugName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "8f4b08"

    const-wide v6, -0x3e467235e5000000L    # -4.28722715E8

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    if-nez v1, :cond_0

    new-array v6, v8, [B

    fill-array-data v6, :array_1

    const-string v7, "26b500"

    invoke-static {v6, v7, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget v6, Landroidx/constraintlayout/core/parser/CLObject;->BASE_INDENT:I

    add-int/2addr v6, p1

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v0, v6, v7}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, p1}, Landroidx/constraintlayout/core/parser/CLObject;->addIndent(Ljava/lang/StringBuilder;I)V

    new-array v0, v2, [B

    const/16 v1, 0x45

    aput-byte v1, v0, v3

    const-string v1, "832fb3"

    const/16 v2, 0x22de

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x43t
        0x6ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1et
        0x3ct
    .end array-data
.end method

.method public toJSON()Ljava/lang/String;
    .locals 10

    const/4 v7, 0x2

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v3, "03df2f"

    invoke-static {v1, v3, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    if-nez v1, :cond_0

    new-array v5, v7, [B

    fill-array-data v5, :array_1

    const-string v6, "28035e"

    const-wide/32 v8, -0x2282cffe

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "05eb7f"

    const-wide v4, 0x41b565dbb1000000L    # 3.58996913E8

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4bt
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1et
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x10t
        0x48t
    .end array-data
.end method
