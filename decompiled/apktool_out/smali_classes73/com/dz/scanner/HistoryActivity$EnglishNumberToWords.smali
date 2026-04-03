.class public Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dz/scanner/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnglishNumberToWords"
.end annotation


# static fields
.field private static final numNames:[Ljava/lang/String;

.field private static final tensNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, " ten"

    aput-object v1, v0, v4

    const-string v1, " twenty"

    aput-object v1, v0, v5

    const-string v1, " thirty"

    aput-object v1, v0, v6

    const-string v1, " forty"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, " fifty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " sixty"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " seventy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " eighty"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " ninety"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->tensNames:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, " one"

    aput-object v1, v0, v4

    const-string v1, " two"

    aput-object v1, v0, v5

    const-string v1, " three"

    aput-object v1, v0, v6

    const-string v1, " four"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, " five"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " six"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " seven"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " eight"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " nine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " ten"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " twelve"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " thirteen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " fourteen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " fifteen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " sixteen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " seventeen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " eighteen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " nineteen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->numNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(J)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    const/4 v5, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "zero"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000000000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convertLessThanOneThousand(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " billion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convertLessThanOneThousand(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " million "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convertLessThanOneThousand(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " thousand "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convertLessThanOneThousand(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\b\\s{2,}\\b"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convertLessThanOneThousand(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " billion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->convertLessThanOneThousand(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " million "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    const-string v0, ""

    goto/16 :goto_2

    :cond_5
    const-string v0, "one thousand "

    goto :goto_3

    :cond_6
    const-string v0, ""

    goto :goto_3
.end method

.method private static convertLessThanOneThousand(I)Ljava/lang/String;
    .locals 5

    rem-int/lit8 v0, p0, 0x64

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->numNames:[Ljava/lang/String;

    aget-object v0, v1, v0

    div-int/lit8 v1, p0, 0x64

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->numNames:[Ljava/lang/String;

    rem-int/lit8 v1, p0, 0xa

    aget-object v0, v0, v1

    div-int/lit8 v1, p0, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->tensNames:[Ljava/lang/String;

    rem-int/lit8 v4, v1, 0xa

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    div-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/dz/scanner/HistoryActivity$EnglishNumberToWords;->numNames:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " hundred"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
