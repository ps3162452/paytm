.class public Landroidx/constraintlayout/core/motion/parse/KeyParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;,
        Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x118

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9e55b7"

    const v2, -0x3154a887

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/parse/KeyParser;->parseAttributes(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    return-void

    :array_0
    .array-data 1
        0x42t
        0x3t
        0x47t
        0x54t
        0xft
        0x52t
        0x3t
        0x57t
        0x7t
        0x19t
        0x68t
        0x43t
        0x58t
        0x17t
        0x52t
        0x50t
        0x16t
        0xdt
        0x1et
        0x12t
        0x5ct
        0x51t
        0x5t
        0x52t
        0x4dt
        0x54t
        0x12t
        0x19t
        0x68t
        0x52t
        0x58t
        0x16t
        0x5ct
        0x5bt
        0x5t
        0xdt
        0x1et
        0x0t
        0x54t
        0x46t
        0x7t
        0x7et
        0x57t
        0x42t
        0x19t
        0x3ft
        0x1t
        0x42t
        0x4bt
        0x13t
        0x50t
        0x73t
        0xbt
        0x43t
        0x3t
        0x42t
        0x46t
        0x45t
        0xet
        0x5et
        0x57t
        0x0t
        0x12t
        0x19t
        0x68t
        0x47t
        0x4bt
        0xat
        0x52t
        0x47t
        0x7t
        0x44t
        0x4at
        0x5ft
        0x5t
        0x1bt
        0x51t
        0x1bt
        0x33t
        0x4t
        0x59t
        0x45t
        0xat
        0x56t
        0x3t
        0x55t
        0x1bt
        0x7t
        0x4et
        0x3dt
        0x5ct
        0x9t
        0x50t
        0x43t
        0x3t
        0x43t
        0x50t
        0xat
        0x5bt
        0xft
        0x52t
        0x19t
        0xet
        0x49t
        0x3ft
        0x47t
        0xdt
        0x43t
        0x58t
        0x11t
        0x5ct
        0x5at
        0xct
        0x6dt
        0x3t
        0x57t
        0x6t
        0x19t
        0x68t
        0x45t
        0x56t
        0x11t
        0x54t
        0x41t
        0xbt
        0x58t
        0x57t
        0x3dt
        0xft
        0x7t
        0x57t
        0x19t
        0x9t
        0x49t
        0x3ft
        0x47t
        0xdt
        0x43t
        0x58t
        0x11t
        0x5ct
        0x5at
        0xct
        0x6et
        0x3t
        0x57t
        0x2t
        0x1bt
        0x52t
        0x1bt
        0x33t
        0x15t
        0x5ct
        0x43t
        0xdt
        0x43t
        0x61t
        0x5ft
        0x4t
        0x0t
        0x4et
        0x3dt
        0x49t
        0xct
        0x43t
        0x5at
        0x16t
        0x6et
        0x3t
        0x54t
        0x2t
        0x19t
        0x68t
        0x47t
        0x50t
        0x13t
        0x5at
        0x41t
        0x36t
        0x56t
        0x4bt
        0x2t
        0x50t
        0x41t
        0x58t
        0x10t
        0xat
        0x57t
        0x12t
        0x19t
        0x68t
        0x47t
        0x58t
        0x11t
        0x5dt
        0x67t
        0xdt
        0x43t
        0x58t
        0x11t
        0x50t
        0xft
        0x50t
        0x4t
        0x15t
        0x6ft
        0x46t
        0x56t
        0x3t
        0x5bt
        0x5ct
        0x3dt
        0xft
        0x5t
        0x4ct
        0x2t
        0x15t
        0x6ft
        0x46t
        0x56t
        0x3t
        0x5bt
        0x5ct
        0x3ct
        0xft
        0x5t
        0x4ct
        0x0t
        0x15t
        0x6ft
        0x41t
        0x47t
        0x3t
        0x59t
        0x4at
        0x9t
        0x54t
        0x41t
        0xbt
        0x58t
        0x57t
        0x3dt
        0xft
        0x0t
        0x4et
        0x3dt
        0x4dt
        0x17t
        0x54t
        0x5bt
        0x11t
        0x5bt
        0x58t
        0x11t
        0x5ct
        0x5at
        0xct
        0x6et
        0x3t
        0x52t
        0x19t
        0x3ft
        0x16t
        0x45t
        0x58t
        0xbt
        0x46t
        0x59t
        0x3t
        0x43t
        0x50t
        0xat
        0x5bt
        0x6ft
        0x58t
        0x6t
        0x8t
        0x49t
        0x3ft
        0x48t
    .end array-data
.end method

.method private static parse(Ljava/lang/String;Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .locals 12

    const/4 v0, 0x0

    new-instance v2, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    :try_start_0
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-interface {p1, v5}, Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;->get(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "910b10"

    const v9, -0x32b7da97

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v6}, Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;->get(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/parser/CLObject;->getBoolean(I)Z

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IZ)V
    :try_end_0
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParsingException;->printStackTrace()V

    :cond_1
    return-object v2

    :pswitch_2
    :try_start_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x6

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    const-string v9, "b0aa3d"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xf

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v8, "134779"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v5, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x6

    new-array v8, v8, [B

    fill-array-data v8, :array_3

    const-string v9, "f32311"

    const v10, -0x316ccc37

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v8, "b746e7"

    const v9, 0x4eb474fd

    invoke-static {v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x6

    new-array v8, v8, [B

    fill-array-data v8, :array_5

    const-string v9, "51b3d9"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v8, "254278"

    const-wide/32 v10, 0xa6ef147

    invoke-static {v5, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x4ct
        0x5ft
        0x5bt
        0xct
        0x5et
        0x47t
        0x57t
        0x11t
        0x44t
        0x1bt
        0x41t
        0x55t
        0x19t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :array_1
    .array-data 1
        0x12t
        0x51t
        0x13t
        0x12t
        0x56t
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x60t
        0x60t
        0x65t
        0x7et
        0x77t
        0x76t
        0x6ct
        0x79t
        0x76t
        0x64t
        0x72t
        0x11t
        0xdt
        0x14t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        0x52t
        0x40t
        0x40t
        0x54t
        0x11t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x42t
        0x71t
        0x78t
        0x79t
        0x24t
        0x63t
        0x3dt
        0x7at
        0x75t
        0x65t
        0x2et
        0x17t
        0x5ct
        0x17t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x50t
        0x10t
        0x40t
        0x1t
        0x19t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x12t
        0x7ct
        0x7at
        0x66t
        0x68t
        0x75t
        0x73t
        0x66t
        0x7ft
        0x12t
        0x9t
        0x18t
    .end array-data
.end method

.method public static parseAttributes(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda1;->INSTANCE:Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda1;

    sget-object v1, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, v1}, Landroidx/constraintlayout/core/motion/parse/KeyParser;->parse(Ljava/lang/String;Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move-result-object v0

    return-object v0
.end method
