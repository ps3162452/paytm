.class public Lcom/google/gson/internal/PreJava9DateFormatProvider;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFormatPattern(I)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a727c4"

    const-wide/32 v4, -0x76e8fc45

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "880c19"

    const/16 v2, 0x5a4b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "babd94"

    const v2, 0x4e5683ba    # 8.9973926E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "79e34a"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "c15512"

    const/16 v2, -0xf5a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x34t
        0x59t
        0x59t
        0x59t
        0xct
        0x43t
        0xft
        0x17t
        0x76t
        0x56t
        0x17t
        0x51t
        0x27t
        0x58t
        0x40t
        0x5at
        0x2t
        0x40t
        0x41t
        0x44t
        0x46t
        0x4et
        0xft
        0x51t
        0x5bt
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x17t
        0x54t
        0x4ct
        0x48t
        0x40t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2ft
        0x2ct
        0x2ft
        0x44t
        0x5dt
        0x18t
        0x42t
        0x18t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x74t
        0x28t
        0x7et
        0x14t
        0x5t
        0x1bt
        0x19t
        0x1ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x26t
        0x74t
        0x70t
        0x70t
        0x1dt
        0x12t
        0x2et
        0x7ct
        0x78t
        0x78t
        0x11t
        0x56t
        0x4ft
        0x11t
        0x4ct
    .end array-data
.end method

.method private static getDatePartOfDateTimePattern(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "cc6c2a"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "e441f5"

    const-wide v2, -0x3e2407ed89c00000L    # -1.876969945E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "0ab09e"

    const-wide/32 v2, 0x6057b7c3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "07a320"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "b39fc7"

    const/16 v2, -0x12d2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x36t
        0xdt
        0x5dt
        0xdt
        0x5dt
        0x16t
        0xdt
        0x43t
        0x72t
        0x2t
        0x46t
        0x4t
        0x25t
        0xct
        0x44t
        0xet
        0x53t
        0x15t
        0x43t
        0x10t
        0x42t
        0x1at
        0x5et
        0x4t
        0x59t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x1bt
        0x50t
        0x1et
        0x1ft
        0x4ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7dt
        0x2ct
        0x2ft
        0x10t
        0x5dt
        0x49t
        0x10t
        0x18t
        0x1bt
        0x49t
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0x7dt
        0x7at
        0x2ct
        0x7et
        0x12t
        0x54t
        0x1ct
        0x17t
        0x18t
        0x4at
        0x4bt
        0x49t
    .end array-data

    :array_4
    .array-data 1
        0x27t
        0x76t
        0x7ct
        0x23t
        0x4ft
        0x17t
        0x2ft
        0x7et
        0x74t
        0x2bt
        0x43t
        0x53t
        0x4et
        0x13t
        0x40t
        0x1ft
        0x1at
        0x4et
    .end array-data
.end method

.method private static getTimePartOfDateTimePattern(I)Ljava/lang/String;
    .locals 5

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ec69e7"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "8737ef"

    const v2, 0x4e876e42

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "6b845a"

    const/16 v2, -0x60ee

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "08ae33"

    const v2, 0x4e5ba463    # 9.212459E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        0xdt
        0x5dt
        0x57t
        0xat
        0x40t
        0xbt
        0x43t
        0x72t
        0x58t
        0x11t
        0x52t
        0x23t
        0xct
        0x44t
        0x54t
        0x4t
        0x43t
        0x45t
        0x10t
        0x42t
        0x40t
        0x9t
        0x52t
        0x5ft
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0xdt
        0x5et
        0x5at
        0x45t
        0x7t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5et
        0x58t
        0x55t
        0x59t
        0xft
        0x12t
        0x45t
        0x42t
        0x59t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x58t
        0x2t
        0xct
        0x8t
        0x9t
        0x40t
        0x43t
        0x18t
        0x0t
        0x45t
        0x49t
    .end array-data
.end method

.method public static getUSDateFormat(I)Ljava/text/DateFormat;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDateFormatPattern(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getUSDateTimeFormat(II)Ljava/text/DateFormat;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDatePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getTimePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method
