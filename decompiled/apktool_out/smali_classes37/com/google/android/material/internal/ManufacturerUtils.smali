.class public Lcom/google/android/material/internal/ManufacturerUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LGE:Ljava/lang/String;

.field private static final MEIZU:Ljava/lang/String;

.field private static final SAMSUNG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e4b373"

    const v2, -0x31135842

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/ManufacturerUtils;->LGE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "582cff"

    const/16 v2, 0x2571

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/ManufacturerUtils;->MEIZU:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "e6cdaf"

    const-wide v2, -0x3e26e0031e000000L    # -1.686107016E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/ManufacturerUtils;->SAMSUNG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x53t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x5dt
        0x5bt
        0x19t
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x57t
        0xet
        0x17t
        0x14t
        0x8t
        0x2t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDateInputKeyboardMissingSeparatorCharacters()Z
    .locals 1

    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isLGEDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLGEDevice()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/internal/ManufacturerUtils;->LGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMeizuDevice()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/internal/ManufacturerUtils;->MEIZU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSamsungDevice()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/internal/ManufacturerUtils;->SAMSUNG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
