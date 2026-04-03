.class Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteJsonEngine"
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String;


# instance fields
.field final BASELINE:Ljava/lang/String;

.field final BOTTOM:Ljava/lang/String;

.field final END:Ljava/lang/String;

.field final LEFT:Ljava/lang/String;

.field final RIGHT:Ljava/lang/String;

.field final START:Ljava/lang/String;

.field final TOP:Ljava/lang/String;

.field context:Landroid/content/Context;

.field flags:I

.field idMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final this$0:Landroidx/constraintlayout/widget/ConstraintSet;

.field unknownCount:I

.field writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "340fe3"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->SPACE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x13t
        0x14t
        0x10t
        0x46t
        0x45t
        0x13t
        0x13t
    .end array-data
.end method

.method constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet;Ljava/io/Writer;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "78e31d"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->LEFT:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v1, "952dc2"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->RIGHT:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "7c9ddb"

    const-wide/32 v2, -0x74660592

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->BASELINE:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "dc543a"

    const-wide v2, 0x41dc6e9ad4c00000L    # 1.908042579E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->BOTTOM:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "4e76c1"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->TOP:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "1b1ae6"

    const-wide/32 v2, 0x12532bb4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->START:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "0e0f15"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->END:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->context:Landroid/content/Context;

    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->flags:I

    return-void

    :array_0
    .array-data 1
        0x10t
        0x54t
        0x0t
        0x55t
        0x45t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1et
        0x47t
        0x5bt
        0x3t
        0xbt
        0x46t
        0x1et
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x1t
        0x58t
        0x17t
        0x1t
        0xet
        0x5et
        0xdt
        0x5ct
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x43t
        0x1t
        0x5at
        0x40t
        0x47t
        0xet
        0x9t
        0x44t
    .end array-data

    :array_4
    .array-data 1
        0x13t
        0x11t
        0x58t
        0x46t
        0x44t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x16t
        0x11t
        0x45t
        0x0t
        0x17t
        0x42t
        0x16t
    .end array-data

    :array_6
    .array-data 1
        0x17t
        0x0t
        0x5et
        0x2t
        0x16t
    .end array-data
.end method

.method private writeDimension(Ljava/lang/String;IIFIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    if-nez p2, :cond_2

    if-ne p6, v1, :cond_0

    if-eq p5, v1, :cond_1

    :cond_0
    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3f2b4f"

    const-wide/32 v4, -0x6e0226a9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "41f499"

    invoke-static {v2, v3, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const-string v3, "9bfced"

    const-wide v4, 0x41d4d9b2ac800000L    # 1.39924549E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [B

    fill-array-data v2, :array_3

    const-string v3, "7aaa5e"

    invoke-static {v2, v3, v7, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v2, v4, [B

    fill-array-data v2, :array_4

    const-string v3, "9f7ed3"

    const v4, 0x4ebefd68

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "aa1897"

    invoke-static {v2, v3, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_6

    const-string v3, "d6304d"

    invoke-static {v2, v3, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "3184f4"

    const-wide v4, 0x41deace602000000L    # 2.058590216E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_8

    const-string v3, "bac6e4"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_9

    const-string v3, "74de55"

    const-wide v4, -0x3e549f5d96000000L    # -2.29658933E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "3cc396"

    const-wide/32 v4, -0x457ec8b5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_b

    const-string v3, "39e7b9"

    const-wide v4, 0x41c36c2393000000L    # 6.51708198E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_c

    const-string v3, "484235"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const-string v3, "8305e7"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v3, "72bdd9"

    const-wide v4, 0x41de1abeed000000L    # 2.020277172E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_f

    const-string v3, "3b9b34"

    const-wide/32 v4, 0x21ac4925

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_10

    const-string v3, "c5b455"

    const/16 v4, -0x1fc3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x9t
        0x46t
        0x15t
        0x5dt
        0xbt
        0x59t
        0xct
        0x59t
        0xdt
        0x5dt
        0xbt
        0x59t
        0xct
        0x59t
        0x15t
        0x4et
        0x3et
    .end array-data

    nop

    :array_1
    .array-data 1
        0xet
        0x11t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x1ct
        0x45t
        0x4at
        0x69t
    .end array-data

    :array_3
    .array-data 1
        0xdt
        0x41t
        0x1at
        0x46t
    .end array-data

    :array_4
    .array-data 1
        0x1et
        0x43t
        0x17t
        0x49t
    .end array-data

    :array_5
    .array-data 1
        0x4dt
        0x41t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x19t
        0x3ct
    .end array-data

    nop

    :array_7
    .array-data 1
        0x9t
        0x11t
        0x43t
        0x13t
        0x11t
        0x46t
        0x52t
        0x41t
        0x1ft
        0x14t
        0x4at
    .end array-data

    :array_8
    .array-data 1
        0x4et
        0x41t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x4at
        0x3et
    .end array-data

    nop

    :array_a
    .array-data 1
        0x9t
        0x43t
        0x18t
        0x14t
        0x4at
        0x46t
        0x41t
        0x6t
        0x2t
        0x57t
        0x1et
        0x16t
        0x1ft
    .end array-data

    nop

    :array_b
    .array-data 1
        0x1ft
        0x19t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x49t
        0x32t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x2t
        0x13t
        0x17t
        0x42t
        0x17t
        0x56t
        0x48t
        0x14t
        0x3at
    .end array-data

    nop

    :array_e
    .array-data 1
        0xdt
        0x12t
        0x45t
        0x14t
        0x5t
        0x4bt
        0x52t
        0x5ct
        0x16t
        0x43t
        0x6et
    .end array-data

    :array_f
    .array-data 1
        0x9t
        0x42t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x4ft
        0x3ft
    .end array-data
.end method

.method private writeGuideline(IIIF)V
    .locals 0

    return-void
.end method


# virtual methods
.method getName(I)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x12

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v7, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v6

    const-string v3, "fae521"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    const/16 v2, 0x43

    aput-byte v2, v0, v6

    const-string v2, "dcaa2e"

    invoke-static {v0, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b9f040"

    const-wide v2, -0x3e46b24fe1000000L    # -4.24521759E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->lookup(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v7, [B

    aput-byte v8, v2, v6

    const-string v3, "5e3aa4"

    const-wide v4, -0x3e43c4a372000000L    # -4.73652366E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    aput-byte v8, v0, v6

    const-string v2, "538539"

    const/16 v3, 0x5f6d

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x45t
        0x49t
        0x7t
        0x42t
        0x51t
        0x5et
        0x16t
        0x1et
    .end array-data
.end method

.method lookup(I)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x12

    const/4 v5, 0x7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "f444cf"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "bf77bd"

    const/16 v4, -0x23b7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x13t
        0x5at
        0x5ft
        0x5at
        0xct
        0x11t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x8t
        0x5ct
        0x59t
        0xdt
        0x13t
        0xct
    .end array-data
.end method

.method writeCircle(IFI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3a320b"

    const v3, -0x31ce765c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "3ea15c"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const-string v3, "9f8793"

    const-wide/32 v4, 0x72eaf46b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    const/4 v3, 0x0

    const/16 v4, 0x6b

    aput-byte v4, v2, v3

    const-string v3, "60701d"

    const-wide/32 v4, -0xe0dfd53

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x13t
        0x41t
        0x13t
        0x12t
        0x10t
        0x42t
        0x13t
        0x2t
        0x5at
        0x40t
        0x53t
        0xet
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0x3et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x15t
        0x46t
    .end array-data
.end method

.method writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ed279e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "a4d953"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "615641"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "12a21d"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5ft
        0x3ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x18t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0x1dt
        0x15t
    .end array-data

    :array_3
    .array-data 1
        0x6ct
        0x1et
        0x6bt
    .end array-data
.end method

.method writeLayout()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x6

    const/4 v13, 0x1

    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "892f80"

    const-wide/32 v4, 0x5f19b0d7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintSet;->access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "a0eb52"

    const-wide/32 v6, 0x57f7aad

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    new-array v0, v14, [B

    fill-array-data v0, :array_2

    const-string v1, "d61195"

    const-wide v2, 0x41b5efdfd2000000L    # 3.68041938E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iget-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeDimension(Ljava/lang/String;IIFIIZ)V

    new-array v0, v11, [B

    fill-array-data v0, :array_3

    const-string v1, "9265b7"

    invoke-static {v0, v1, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iget-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeDimension(Ljava/lang/String;IIFIIZ)V

    new-array v0, v14, [B

    fill-array-data v0, :array_4

    const-string v1, "7ad6d3"

    invoke-static {v0, v1, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    new-array v0, v14, [B

    fill-array-data v0, :array_5

    const-string v3, "95c228"

    const/16 v4, -0x6729

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v14, [B

    fill-array-data v0, :array_6

    const-string v1, "2b30e0"

    const v2, 0x4e98c82d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    new-array v0, v12, [B

    fill-array-data v0, :array_7

    const-string v3, "e713c9"

    invoke-static {v0, v3, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v12, [B

    fill-array-data v0, :array_8

    const-string v1, "167d67"

    const/16 v2, -0x2529

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    new-array v0, v14, [B

    fill-array-data v0, :array_9

    const-string v3, "6e0c18"

    invoke-static {v0, v3, v13, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v12, [B

    fill-array-data v0, :array_a

    const-string v1, "4edf00"

    const v2, 0x4d8ffaaa

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    new-array v0, v12, [B

    fill-array-data v0, :array_b

    const-string v3, "ccdce4"

    const-wide v4, -0x3e22bd8044000000L    # -1.96358936E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "2e6fe9"

    const-wide/32 v2, -0x49ca10b8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v3, "acd674"

    const/16 v4, 0x674e

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "d59c55"

    invoke-static {v0, v1, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    new-array v0, v11, [B

    fill-array-data v0, :array_f

    const-string v3, "f2dfd7"

    const-wide v4, 0x41deb9f77a800000L    # 2.062015978E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "d516f4"

    const-wide/32 v2, -0x6ab37048

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v3, "f44757"

    const/16 v4, -0x3219

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v11, [B

    fill-array-data v0, :array_12

    const-string v1, "46988e"

    invoke-static {v0, v1, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_13

    const-string v3, "4112d3"

    const v4, -0x315f7b4b

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v11, [B

    fill-array-data v0, :array_14

    const-string v1, "1c7316"

    const/16 v2, -0x16ce

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    new-array v0, v11, [B

    fill-array-data v0, :array_15

    const-string v3, "2a5408"

    const-wide/32 v4, 0x4cb7d590

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const-string v1, "ff7c3f"

    const v2, -0x3157db18

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_17

    const-string v3, "30ff8f"

    const-wide/32 v4, 0x2f85baa8

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    const-string v1, "0a1054"

    const-wide/32 v2, 0x40de530c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    new-array v0, v11, [B

    fill-array-data v0, :array_19

    const-string v3, "90b1cb"

    const/16 v4, -0x46ac

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v12, [B

    fill-array-data v0, :array_1a

    const-string v1, "c4a9c8"

    const v2, -0x315ddb87

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    new-array v0, v12, [B

    fill-array-data v0, :array_1b

    const-string v3, "d5079c"

    const-wide v4, 0x41cf12b092800000L    # 1.042637093E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v12, [B

    fill-array-data v0, :array_1c

    const-string v1, "1acc3c"

    const v2, 0x4e62f77a    # 9.5196736E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    new-array v0, v11, [B

    fill-array-data v0, :array_1d

    const-string v3, "29a36e"

    const-wide v4, -0x3e215e6d06c00000L    # -2.055621605E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v11, [B

    fill-array-data v0, :array_1e

    const-string v1, "2c18de"

    const-wide v2, -0x3e415c4118000000L    # -5.1404772E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    new-array v0, v12, [B

    fill-array-data v0, :array_1f

    const-string v3, "a62eb6"

    invoke-static {v0, v3, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    new-array v0, v11, [B

    fill-array-data v0, :array_20

    const-string v1, "20f90f"

    invoke-static {v0, v1, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    new-array v0, v11, [B

    fill-array-data v0, :array_21

    const-string v3, "6921d2"

    const-wide/32 v4, -0x73e3f3fc

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    const-string v1, "c4d97f"

    const-wide/32 v2, -0x26606985

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;FF)V

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_23

    const-string v1, "7339aa"

    const v2, 0x4d31a9d1    # 1.8629352E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;FF)V

    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeCircle(IFI)V

    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeGuideline(IIIF)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    const-string v1, "2869a1"

    invoke-static {v0, v1, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_25

    const-string v1, "eb517f"

    const-wide/32 v2, 0x11adb501

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    new-array v0, v14, [B

    fill-array-data v0, :array_26

    const-string v1, "c69cac"

    invoke-static {v0, v1, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_27

    const-string v1, "2aefb1"

    const-wide/32 v2, -0x68c3361f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    const-string v1, "dc19b7"

    const-wide/32 v2, -0xfa96a96

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {p0, v0, v1, v13}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;ZZ)V

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_29

    const-string v1, "953699"

    invoke-static {v0, v1, v10, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    const-string v1, "ab11d9"

    invoke-static {v0, v1, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;F)V

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2b

    const-string v1, "c2b354"

    const v2, -0x3186a339

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;F)V

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    const-string v1, "88c718"

    const/16 v2, 0x6920

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_2d

    const-string v1, "d7b99d"

    invoke-static {v0, v1, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    const-string v1, "de3f3b"

    const/16 v2, 0x3aa1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_2f

    const-string v1, "4a1b79"

    invoke-static {v0, v1, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;[I)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_30

    const-string v2, "fe17a0"

    invoke-static {v1, v2, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_31

    const-string v2, "70d402"

    const-wide/32 v4, -0x74fab7c4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x32t
        0x1et
        0x71t
        0x9t
        0x56t
        0x43t
        0x4ct
        0x4bt
        0x53t
        0xft
        0x56t
        0x44t
        0x6bt
        0x5ct
        0x46t
        0x41t
        0x2t
        0x4bt
        0x32t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x4bt
        0x6ft
    .end array-data

    :array_2
    .array-data 1
        0xct
        0x53t
        0x58t
        0x56t
        0x51t
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4et
        0x5bt
        0x52t
        0x41t
        0xat
    .end array-data

    nop

    :array_4
    .array-data 1
        0x10t
        0xdt
        0x1t
        0x50t
        0x10t
        0x14t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1et
        0x59t
        0x6t
        0x54t
        0x46t
        0x1ft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x15t
        0xet
        0x56t
        0x56t
        0x11t
        0x17t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x42t
        0x45t
        0x58t
        0x54t
        0xbt
        0x4dt
        0x42t
    .end array-data

    :array_8
    .array-data 1
        0x16t
        0x44t
        0x5et
        0x3t
        0x5et
        0x43t
        0x16t
    .end array-data

    :array_9
    .array-data 1
        0x11t
        0x9t
        0x55t
        0x5t
        0x45t
        0x1ft
    .end array-data

    nop

    :array_a
    .array-data 1
        0x13t
        0x17t
        0xdt
        0x1t
        0x58t
        0x44t
        0x13t
    .end array-data

    :array_b
    .array-data 1
        0x44t
        0x11t
        0xdt
        0x4t
        0xdt
        0x40t
        0x44t
    .end array-data

    :array_c
    .array-data 1
        0x15t
        0x7t
        0x57t
        0x15t
        0x0t
        0x55t
        0x5bt
        0xbt
        0x53t
        0x41t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x46t
        0x1t
        0x5t
        0x45t
        0x52t
        0x58t
        0x8t
        0xdt
        0x1t
        0x11t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x43t
        0x57t
        0x58t
        0x10t
        0x50t
        0x59t
        0xdt
        0x5bt
        0x5ct
        0x44t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x41t
        0x46t
        0xbt
        0x16t
        0x43t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x43t
        0x57t
        0x50t
        0x45t
        0x3t
        0x58t
        0xdt
        0x5bt
        0x54t
        0x11t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x41t
        0x56t
        0x5bt
        0x43t
        0x41t
        0x58t
        0xbt
        0x13t
    .end array-data

    :array_12
    .array-data 1
        0x13t
        0x42t
        0x56t
        0x48t
        0x1ft
    .end array-data

    nop

    :array_13
    .array-data 1
        0x13t
        0x53t
        0x5et
        0x46t
        0x10t
        0x5ct
        0x59t
        0x16t
    .end array-data

    :array_14
    .array-data 1
        0x16t
        0x17t
        0x58t
        0x43t
        0x16t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x15t
        0x15t
        0x5at
        0x44t
        0x17t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x41t
        0x4t
        0x58t
        0x17t
        0x47t
        0x9t
        0xbt
        0x41t
    .end array-data

    :array_17
    .array-data 1
        0x14t
        0x52t
        0x9t
        0x12t
        0x4ct
        0x9t
        0x5et
        0x17t
    .end array-data

    :array_18
    .array-data 1
        0x17t
        0x3t
        0x5et
        0x44t
        0x41t
        0x5bt
        0x5dt
        0x46t
    .end array-data

    :array_19
    .array-data 1
        0x1et
        0x44t
        0xdt
        0x41t
        0x44t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x44t
        0x47t
        0x15t
        0x58t
        0x11t
        0x4ct
        0x44t
    .end array-data

    :array_1b
    .array-data 1
        0x43t
        0x46t
        0x44t
        0x56t
        0x4bt
        0x17t
        0x43t
    .end array-data

    :array_1c
    .array-data 1
        0x16t
        0x12t
        0x17t
        0x2t
        0x41t
        0x17t
        0x16t
    .end array-data

    :array_1d
    .array-data 1
        0x15t
        0x5ct
        0xft
        0x57t
        0x11t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x15t
        0x6t
        0x5ft
        0x5ct
        0x43t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x46t
        0x45t
        0x46t
        0x4t
        0x10t
        0x42t
        0x46t
    .end array-data

    :array_20
    .array-data 1
        0x15t
        0x55t
        0x8t
        0x5dt
        0x17t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x11t
        0x5ct
        0x5ct
        0x55t
        0x43t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x44t
        0x5ct
        0xbt
        0x4bt
        0x5et
        0x1ct
        0xct
        0x5at
        0x10t
        0x58t
        0x5bt
        0x24t
        0xat
        0x55t
        0x17t
        0x1et
    .end array-data

    :array_23
    .array-data 1
        0x10t
        0x45t
        0x56t
        0x4bt
        0x15t
        0x8t
        0x54t
        0x52t
        0x5ft
        0x7bt
        0x8t
        0x0t
        0x44t
        0x14t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x15t
        0x5ct
        0x5ft
        0x54t
        0x4t
        0x5ft
        0x41t
        0x51t
        0x59t
        0x57t
        0x33t
        0x50t
        0x46t
        0x51t
        0x59t
        0x1et
    .end array-data

    :array_25
    .array-data 1
        0x42t
        0x0t
        0x54t
        0x43t
        0x45t
        0xft
        0x0t
        0x10t
        0x78t
        0x50t
        0x45t
        0x1t
        0xct
        0xct
        0x12t
    .end array-data

    :array_26
    .array-data 1
        0x44t
        0x42t
        0x40t
        0x13t
        0x4t
        0x44t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x15t
        0x33t
        0x0t
        0x0t
        0x7t
        0x43t
        0x57t
        0xft
        0x6t
        0x3t
        0x2bt
        0x55t
        0x15t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x43t
        0xet
        0x73t
        0x58t
        0x10t
        0x45t
        0xdt
        0x6t
        0x43t
        0x78t
        0xet
        0x5bt
        0xbt
        0x14t
        0x42t
        0x7et
        0xdt
        0x59t
        0x1t
        0x34t
        0x58t
        0x5dt
        0x5t
        0x52t
        0x10t
        0x10t
        0x16t
    .end array-data

    :array_29
    .array-data 1
        0x1et
        0x62t
        0x41t
        0x57t
        0x49t
        0x7bt
        0x5ct
        0x5dt
        0x52t
        0x40t
        0x50t
        0x56t
        0x4bt
        0x12t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x46t
        0x14t
        0x54t
        0x43t
        0x10t
        0x50t
        0x2t
        0x3t
        0x5dt
        0x66t
        0x1t
        0x50t
        0x6t
        0xat
        0x45t
        0x16t
    .end array-data

    :array_2b
    .array-data 1
        0x44t
        0x5at
        0xdt
        0x41t
        0x5ct
        0x4et
        0xct
        0x5ct
        0x16t
        0x52t
        0x59t
        0x63t
        0x6t
        0x5bt
        0x5t
        0x5bt
        0x41t
        0x13t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x1ft
        0x50t
        0xct
        0x45t
        0x58t
        0x42t
        0x57t
        0x56t
        0x17t
        0x56t
        0x5dt
        0x7bt
        0x50t
        0x59t
        0xat
        0x59t
        0x62t
        0x4ct
        0x41t
        0x54t
        0x6t
        0x10t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x43t
        0x41t
        0x7t
        0x4bt
        0x4dt
        0xdt
        0x7t
        0x56t
        0xet
        0x7at
        0x51t
        0x5t
        0xdt
        0x59t
        0x31t
        0x4dt
        0x40t
        0x8t
        0x1t
        0x10t
    .end array-data

    :array_2e
    .array-data 1
        0x43t
        0x7t
        0x52t
        0x14t
        0x41t
        0xbt
        0x1t
        0x17t
        0x77t
        0xft
        0x41t
        0x7t
        0x7t
        0x11t
        0x5at
        0x9t
        0x5dt
        0x45t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x13t
        0x33t
        0x54t
        0x4t
        0x52t
        0x4bt
        0x51t
        0xft
        0x52t
        0x7t
        0x7et
        0x5dt
        0x47t
        0x46t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x1bt
        0x6ft
    .end array-data

    nop

    :array_31
    .array-data 1
        0x4at
        0x3at
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "ba227c"

    const/16 v4, 0x2e01

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "330c56"

    const-wide v4, -0x3e789cb8e8000000L    # -4.9047779E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x58t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ft
        0x39t
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "56bb5e"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "bfdace"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0xft
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4et
        0x6ct
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v6, v1, v2

    const-string v2, "817850"

    const-wide v4, -0x3e4157140a000000L    # -5.14386934E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    const-string v3, "2d8dfd"

    const-wide v4, 0x41817fc998000000L    # 3.6698419E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x1et
        0x44t
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x5e

    aput-byte v2, v1, v6

    const-string v2, "dadc76"

    const-wide v4, -0x3e391d2661800000L    # -7.67931197E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "801b02"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "7a486b"

    const-wide v4, 0x41cf7903a3000000L    # 1.056048966E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x14t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1bt
        0x41t
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "e38161"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "f8355d"

    const-wide/32 v4, 0x6dfa6a9c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x5ft
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x32t
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    if-ne p2, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "4a22cb"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "e34f35"

    const-wide v4, -0x3e23c670f7800000L    # -1.894136866E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 1
        0xet
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x49t
        0x39t
    .end array-data
.end method

.method writeVariable(Ljava/lang/String;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, "       "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    const-string v3, "cf3ab6"

    const-wide/32 v4, 0x5fa5808a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_4

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    if-nez v0, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v4, 0x6d

    aput-byte v4, v2, v1

    const-string v4, "652204"

    const-wide v6, -0x3e3cb0ec2b800000L    # -6.47899049E8

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget v2, p2, v0

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v4, "3e569d"

    const/16 v5, 0x6e4e

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "6ca8b5"

    const/16 v3, 0x3bc6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x59t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ft
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6bt
        0x4ft
        0x6bt
    .end array-data
.end method
