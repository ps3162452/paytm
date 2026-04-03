.class public final enum Lcom/budiyev/android/codescanner/ScanMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/budiyev/android/codescanner/ScanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/budiyev/android/codescanner/ScanMode;

.field public static final enum CONTINUOUS:Lcom/budiyev/android/codescanner/ScanMode;

.field public static final enum PREVIEW:Lcom/budiyev/android/codescanner/ScanMode;

.field public static final enum SINGLE:Lcom/budiyev/android/codescanner/ScanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/budiyev/android/codescanner/ScanMode;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "12081d"

    const v3, 0x4ededfcb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/budiyev/android/codescanner/ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/budiyev/android/codescanner/ScanMode;->SINGLE:Lcom/budiyev/android/codescanner/ScanMode;

    new-instance v1, Lcom/budiyev/android/codescanner/ScanMode;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e52a37"

    const-wide v4, -0x3e21a47e18400000L    # -2.037254047E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/budiyev/android/codescanner/ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/budiyev/android/codescanner/ScanMode;->CONTINUOUS:Lcom/budiyev/android/codescanner/ScanMode;

    new-instance v2, Lcom/budiyev/android/codescanner/ScanMode;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "f80e6d"

    const v5, 0x4e35fa5e    # 7.6327104E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lcom/budiyev/android/codescanner/ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/budiyev/android/codescanner/ScanMode;->PREVIEW:Lcom/budiyev/android/codescanner/ScanMode;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/budiyev/android/codescanner/ScanMode;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    sput-object v3, Lcom/budiyev/android/codescanner/ScanMode;->$VALUES:[Lcom/budiyev/android/codescanner/ScanMode;

    return-void

    :array_0
    .array-data 1
        0x62t
        0x7bt
        0x7et
        0x7ft
        0x7dt
        0x21t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x7at
        0x7ct
        0x35t
        0x7at
        0x79t
        0x30t
        0x7at
        0x67t
        0x32t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x36t
        0x6at
        0x75t
        0x33t
        0x7ft
        0x21t
        0x31t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/budiyev/android/codescanner/ScanMode;
    .locals 1

    const-class v0, Lcom/budiyev/android/codescanner/ScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/ScanMode;

    return-object v0
.end method

.method public static values()[Lcom/budiyev/android/codescanner/ScanMode;
    .locals 1

    sget-object v0, Lcom/budiyev/android/codescanner/ScanMode;->$VALUES:[Lcom/budiyev/android/codescanner/ScanMode;

    invoke-virtual {v0}, [Lcom/budiyev/android/codescanner/ScanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/budiyev/android/codescanner/ScanMode;

    return-object v0
.end method
