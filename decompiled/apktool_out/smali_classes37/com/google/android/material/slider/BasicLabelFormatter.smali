.class public final Lcom/google/android/material/slider/BasicLabelFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/slider/LabelFormatter;


# static fields
.field private static final BILLION:I = 0x3b9aca00

.field private static final MILLION:I = 0xf4240

.field private static final THOUSAND:I = 0x3e8

.field private static final TRILLION:J = 0xe8d4a51000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 8

    const v5, 0x49742400    # 1000000.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const v0, 0x5368d4a5    # 1.0E12f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a59924"

    const-wide/32 v4, 0x79899a15    # 1.0074299963E-314

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x5368d4a5    # 1.0E12f

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x4e6e6b28    # 1.0E9f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7cd164"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    cmpl-float v0, p1, v5

    if-ltz v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ab7644"

    const v3, -0x31fc30f5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    div-float v3, p1, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "7e08c5"

    const/16 v3, -0x714a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    div-float v3, p1, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "42fe76"

    const/16 v3, 0x240b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x44t
        0x1bt
        0x8t
        0x5ft
        0x66t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x4dt
        0x55t
        0x57t
        0x74t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x44t
        0x4ct
        0x6t
        0x50t
        0x79t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x12t
        0x4bt
        0x1t
        0x5et
        0x28t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x11t
        0x1ct
        0x56t
        0x3t
    .end array-data
.end method
