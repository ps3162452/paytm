.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 5

    const/4 v1, 0x0

    add-int v0, p1, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0xf1

    if-eq v3, v4, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-gt v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a05827"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x22t
        0x51t
        0x5bt
        0x18t
        0x5dt
        0x59t
        0xdt
        0x49t
        0x15t
        0x5dt
        0x5ct
        0x54t
        0xet
        0x54t
        0x50t
        0x18t
        0x71t
        0x78t
        0x25t
        0x75t
        0x6at
        0x9t
        0x0t
        0xft
        0x4dt
        0x10t
        0x57t
        0x4dt
        0x46t
        0x17t
        0x6t
        0x5ft
        0x41t
        0x18t
    .end array-data
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13

    const/16 v7, 0x63

    const/4 v8, 0x1

    const/16 v3, 0x64

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v8, :cond_0

    const/16 v0, 0x50

    if-le v10, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "cf5b9f"

    const/16 v4, 0x4501

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v6

    :goto_0
    if-ge v0, v10, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7e

    if-le v1, v2, :cond_3

    :cond_2
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "4e0303"

    const/16 v5, 0x58d2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    move v4, v6

    move v5, v8

    move v9, v6

    :goto_1
    if-ge v1, v10, :cond_b

    if-ne v4, v7, :cond_5

    const/4 v0, 0x2

    :goto_2
    invoke-static {p1, v1, v0}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v7

    :goto_3
    if-ne v2, v4, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_1

    if-ne v4, v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x20

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    :goto_5
    sget-object v4, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v4, v4, v1

    invoke-interface {v11, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int/2addr v1, v5

    add-int v4, v9, v1

    if-eqz v0, :cond_f

    add-int/lit8 v1, v5, 0x1

    :goto_6
    move v5, v1

    move v9, v4

    move v1, v0

    move v4, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x66

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_4

    :pswitch_2
    const/16 v0, 0x61

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_4

    :pswitch_3
    const/16 v0, 0x60

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_4

    :pswitch_4
    move v0, v1

    move v1, v3

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v2

    goto :goto_4

    :cond_8
    if-nez v4, :cond_a

    if-ne v2, v3, :cond_9

    const/16 v0, 0x68

    :goto_7
    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_5

    :cond_9
    const/16 v0, 0x69

    goto :goto_7

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    rem-int/lit8 v1, v9, 0x67

    aget-object v0, v0, v1

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v4, v0

    move v2, v6

    :goto_8
    if-ge v2, v4, :cond_c

    aget v5, v0, v2

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    new-array v1, v1, [Z

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v1, v6, v0, v8}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_9

    :cond_e
    return-object v1

    :cond_f
    move v1, v5

    goto/16 :goto_6

    nop

    :array_0
    .array-data 1
        0x20t
        0x9t
        0x5bt
        0x16t
        0x5ct
        0x8t
        0x17t
        0x15t
        0x15t
        0xet
        0x5ct
        0x8t
        0x4t
        0x12t
        0x5dt
        0x42t
        0x4at
        0xet
        0xct
        0x13t
        0x59t
        0x6t
        0x19t
        0x4t
        0x6t
        0x46t
        0x57t
        0x7t
        0x4dt
        0x11t
        0x6t
        0x3t
        0x5bt
        0x42t
        0x8t
        0x46t
        0x2t
        0x8t
        0x51t
        0x42t
        0x1t
        0x56t
        0x43t
        0x5t
        0x5dt
        0x3t
        0x4bt
        0x7t
        0x0t
        0x12t
        0x50t
        0x10t
        0x4at
        0x4at
        0x43t
        0x4t
        0x40t
        0x16t
        0x19t
        0x1t
        0xct
        0x12t
        0x15t
    .end array-data

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_1
    .array-data 1
        0x76t
        0x4t
        0x54t
        0x13t
        0x53t
        0x5bt
        0x55t
        0x17t
        0x51t
        0x50t
        0x44t
        0x56t
        0x46t
        0x45t
        0x59t
        0x5dt
        0x10t
        0x5at
        0x5at
        0x15t
        0x45t
        0x47t
        0xat
        0x13t
    .end array-data

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
