.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field private hasComment:Z

.field private lineNumber:I

.field private mContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "89517d"

    const-wide v6, 0x41b6ff58ae000000L    # 3.85833134E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "c73248"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p5, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Landroidx/constraintlayout/core/parser/CLParser$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE:[I

    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :pswitch_0
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_5
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    if-eqz p4, :cond_2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    :cond_2
    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    :cond_3
    move-object v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x7bt
        0x6bt
        0x70t
        0x70t
        0x63t
        0x21t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x56t
        0x47t
        0x12t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x1

    sparse-switch p2, :sswitch_data_0

    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz v0, :cond_3

    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v0, :cond_3

    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v2, p1

    invoke-virtual {v0, p2, v2, v3}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p3, v1

    :cond_0
    :goto_0
    :sswitch_0
    return-object p3

    :sswitch_1
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_0

    :sswitch_3
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_0

    :sswitch_4
    add-int/lit8 v0, p1, 0x1

    array-length v1, p4

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-char v0, p4, v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iput-boolean v4, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    goto :goto_0

    :sswitch_5
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_0

    :sswitch_6
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v0, :cond_1

    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "59a357"

    const/16 v4, -0x6fc3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "81bde0"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v2

    :cond_3
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2b -> :sswitch_5
        0x2c -> :sswitch_0
        0x2d -> :sswitch_5
        0x2e -> :sswitch_5
        0x2f -> :sswitch_4
        0x30 -> :sswitch_5
        0x31 -> :sswitch_5
        0x32 -> :sswitch_5
        0x33 -> :sswitch_5
        0x34 -> :sswitch_5
        0x35 -> :sswitch_5
        0x36 -> :sswitch_5
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3a -> :sswitch_0
        0x5b -> :sswitch_3
        0x5d -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 1
        0x5ct
        0x57t
        0x2t
        0x5ct
        0x47t
        0x45t
        0x50t
        0x5at
        0x15t
        0x13t
        0x41t
        0x58t
        0x5et
        0x5ct
        0xft
        0x13t
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x11t
        0x3t
        0x10t
        0x45t
        0x5ct
        0x51t
        0x5ft
        0x7t
        0x44t
    .end array-data
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/4 v1, -0x1

    const/16 v14, 0x7d

    const/16 v13, 0x5d

    const/4 v4, 0x0

    const/16 v12, 0xa

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    move v0, v4

    :goto_0
    if-ge v0, v6, :cond_1a

    aget-char v2, v5, v0

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_4

    :goto_1
    if-eq v0, v1, :cond_19

    invoke-static {v5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v2

    iget v1, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/parser/CLObject;->setLine(I)V

    int-to-long v8, v0

    invoke-virtual {v2, v8, v9}, Landroidx/constraintlayout/core/parser/CLObject;->setStart(J)V

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    move v3, v0

    :goto_2
    if-ge v3, v6, :cond_2

    aget-char v7, v5, v3

    if-ne v7, v12, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    if-eqz v0, :cond_1

    if-ne v7, v12, :cond_9

    iput-boolean v4, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    :cond_1
    if-nez v1, :cond_6

    :cond_2
    :goto_3
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v0

    if-nez v0, :cond_17

    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v0, :cond_3

    iget-wide v4, v1, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    :cond_3
    add-int/lit8 v0, v6, -0x1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_3

    :cond_4
    if-ne v2, v12, :cond_5

    iget v2, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v3, v7, v1, v5}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    iget-object v0, v0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_a
    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v0, :cond_c

    if-ne v7, v14, :cond_b

    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_4

    :cond_b
    invoke-direct {p0, v3, v7, v1, v5}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_4

    :cond_c
    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v0, :cond_e

    if-ne v7, v13, :cond_d

    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_4

    :cond_d
    invoke-direct {p0, v3, v7, v1, v5}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    goto :goto_4

    :cond_e
    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v0, :cond_f

    iget-wide v8, v1, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v0, v8

    aget-char v0, v5, v0

    if-ne v0, v7, :cond_7

    iget-wide v8, v1, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_4

    :cond_f
    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v0, :cond_10

    move-object v0, v1

    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v8, v3

    invoke-virtual {v0, v7, v8, v9}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_10
    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLKey;

    if-nez v0, :cond_11

    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v0, :cond_13

    :cond_11
    iget-wide v8, v1, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v0, v8

    aget-char v0, v5, v0

    const/16 v8, 0x27

    if-eq v0, v8, :cond_12

    const/16 v8, 0x22

    if-ne v0, v8, :cond_13

    :cond_12
    if-ne v0, v7, :cond_13

    iget-wide v8, v1, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    :cond_13
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    if-eq v7, v14, :cond_14

    if-eq v7, v13, :cond_14

    const/16 v0, 0x2c

    if-eq v7, v0, :cond_14

    const/16 v0, 0x20

    if-eq v7, v0, :cond_14

    const/16 v0, 0x9

    if-eq v7, v0, :cond_14

    const/16 v0, 0xd

    if-eq v7, v0, :cond_14

    if-eq v7, v12, :cond_14

    const/16 v0, 0x3a

    if-ne v7, v0, :cond_7

    :cond_14
    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    if-eq v7, v14, :cond_15

    if-ne v7, v13, :cond_7

    :cond_15
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    instance-of v0, v1, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    add-int/lit8 v0, v3, -0x1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_4

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9f1b3c"

    const/16 v4, -0x6ba4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "31268d"

    const v4, 0x4d53422b    # 2.2152056E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v2

    :cond_17
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_18

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "04e05b"

    const v5, -0x31ce9e7c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_18
    return-object v2

    :cond_19
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "8c731c"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    :cond_1a
    move v0, v1

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x49t
        0x7t
        0x43t
        0x11t
        0x5at
        0xdt
        0x5et
        0x46t
        0x58t
        0xct
        0x50t
        0xct
        0x4bt
        0x14t
        0x54t
        0x1t
        0x47t
        0x43t
        0x4dt
        0x9t
        0x5at
        0x7t
        0x5dt
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x50t
        0x46t
        0x16t
        0x54t
        0xdt
        0x5dt
        0x54t
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x62t
        0x5bt
        0xat
        0x44t
        0xft
        0x42t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x51t
        0xdt
        0x41t
        0x52t
        0x5dt
        0xat
        0x5ct
        0x43t
        0x5dt
        0x40t
        0x5et
        0xdt
        0x18t
        0x0t
        0x58t
        0x5dt
        0x45t
        0x6t
        0x56t
        0x17t
    .end array-data
.end method
