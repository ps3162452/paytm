.class public Landroidx/constraintlayout/core/parser/CLToken;
.super Landroidx/constraintlayout/core/parser/CLElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLToken$Type;
    }
.end annotation


# instance fields
.field index:I

.field tokenFalse:[C

.field tokenNull:[C

.field tokenTrue:[C

.field type:Landroidx/constraintlayout/core/parser/CLToken$Type;


# direct methods
.method public constructor <init>([C)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "f78dba"

    const-wide/32 v2, -0x1076962e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "9d78c2"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    new-array v0, v5, [B

    fill-array-data v0, :array_2

    const-string v1, "d94bc8"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    return-void

    :array_0
    .array-data 1
        0x12t
        0x45t
        0x4dt
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        0x5t
        0x5bt
        0x4bt
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xat
        0x4ct
        0x58t
        0xet
    .end array-data
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLToken;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLToken;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public getBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    sget-object v3, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    sget-object v3, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "a6064d"

    const v5, -0x327eb10c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [B

    const/16 v3, 0x5b

    aput-byte v3, v0, v1

    const-string v1, "e61fd3"

    const v3, 0x4e704df8    # 1.0079104E9f

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    :array_0
    .array-data 1
        0x15t
        0x5et
        0x59t
        0x45t
        0x14t
        0x10t
        0xet
        0x5dt
        0x55t
        0x58t
        0x14t
        0xdt
        0x12t
        0x16t
        0x5et
        0x59t
        0x40t
        0x44t
        0x0t
        0x16t
        0x52t
        0x59t
        0x5bt
        0x8t
        0x4t
        0x57t
        0x5et
        0xct
        0x14t
        0x58t
    .end array-data
.end method

.method public getType()Landroidx/constraintlayout/core/parser/CLToken$Type;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    return-object v0
.end method

.method public isNull()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    if-ne v0, v1, :cond_0

    return v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "18e0cf"

    const v3, -0x31d8e384

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [B

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    const-string v2, "90ed18"

    const/16 v3, -0xdb4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :array_0
    .array-data 1
        0x45t
        0x50t
        0xct
        0x43t
        0x43t
        0x12t
        0x5et
        0x53t
        0x0t
        0x5et
        0x43t
        0xft
        0x42t
        0x18t
        0xbt
        0x5ft
        0x17t
        0x46t
        0x50t
        0x18t
        0xbt
        0x45t
        0xft
        0xat
        0xbt
        0x18t
        0x59t
    .end array-data
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLToken;->addIndent(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [B

    const/16 v2, 0xa

    aput-byte v2, v1, v4

    const-string v2, "673b2d"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [B

    const/16 v2, 0xf

    aput-byte v2, v1, v4

    const-string v2, "10f72b"

    const/16 v3, -0x4b4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validate(CJ)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    return v0

    :pswitch_0
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_1

    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_2

    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_0

    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v4, v2, v3

    if-ne v4, p1, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_0

    add-int/lit8 v1, v3, 0x1

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v4, v2, v3

    if-ne v4, p1, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_0

    add-int/lit8 v1, v3, 0x1

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v4, v2, v3

    if-ne v4, p1, :cond_5

    move v0, v1

    :cond_5
    if-eqz v0, :cond_0

    add-int/lit8 v1, v3, 0x1

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
