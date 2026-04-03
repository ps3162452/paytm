.class public final Lcom/google/android/material/color/HarmonizedColorAttributes;
.super Ljava/lang/Object;


# static fields
.field private static final HARMONIZED_MATERIAL_ATTRIBUTES:[I


# instance fields
.field private final attributes:[I

.field private final themeOverlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/material/R$attr;->colorError:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/android/material/R$attr;->colorOnError:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/android/material/R$attr;->colorErrorContainer:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/android/material/R$attr;->colorOnErrorContainer:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    return-void
.end method

.method private constructor <init>([II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    iput p2, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x44

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fbb4ad"

    const-wide/32 v4, 0x6abc625d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x32t
        0xat
        0x7t
        0x59t
        0x4t
        0x44t
        0x9t
        0x14t
        0x7t
        0x46t
        0xdt
        0x5t
        0x1ft
        0x42t
        0x11t
        0x5ct
        0xet
        0x11t
        0xat
        0x6t
        0x42t
        0x56t
        0x4t
        0x44t
        0x13t
        0x11t
        0x7t
        0x50t
        0x41t
        0x13t
        0xft
        0x16t
        0xat
        0x14t
        0x15t
        0xct
        0x3t
        0x42t
        0x3t
        0x57t
        0x2t
        0xbt
        0xbt
        0x12t
        0x3t
        0x5at
        0x18t
        0xdt
        0x8t
        0x5t
        0x42t
        0x5dt
        0xft
        0x10t
        0x3dt
        0x3ft
        0x42t
        0x55t
        0x15t
        0x10t
        0x14t
        0xbt
        0x0t
        0x41t
        0x15t
        0x1t
        0x15t
        0x4ct
    .end array-data
.end method

.method public static create([I)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    return-object v0
.end method

.method public static create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1

    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    return-object v0
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 2

    sget-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors:I

    invoke-static {v0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributes()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    return-object v0
.end method

.method public getThemeOverlay()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    return v0
.end method
