.class public final enum Lcom/google/android/material/elevation/SurfaceColors;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/material/elevation/SurfaceColors;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;


# instance fields
.field private final elevationResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x9

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "08df8a"

    const/16 v3, -0x17e7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level0:I

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v1, Lcom/google/android/material/elevation/SurfaceColors;

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "2ddede"

    const-wide v4, 0x41c9829eea800000L    # 8.55981525E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level1:I

    invoke-direct {v1, v2, v9, v3}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v2, Lcom/google/android/material/elevation/SurfaceColors;

    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "88f4e8"

    invoke-static {v3, v4, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level2:I

    invoke-direct {v2, v3, v11, v4}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v3, Lcom/google/android/material/elevation/SurfaceColors;

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    const-string v5, "ce448d"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level3:I

    invoke-direct {v3, v4, v12, v5}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v4, Lcom/google/android/material/elevation/SurfaceColors;

    new-array v5, v8, [B

    fill-array-data v5, :array_4

    const-string v6, "19fff1"

    const v7, 0x4eb4dfc4

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    sget v7, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level4:I

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v5, Lcom/google/android/material/elevation/SurfaceColors;

    new-array v6, v8, [B

    fill-array-data v6, :array_5

    const-string v7, "e6075d"

    const/16 v8, 0x2603

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    sget v8, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level5:I

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v0, v6, v10

    aput-object v1, v6, v9

    aput-object v2, v6, v11

    aput-object v3, v6, v12

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/google/android/material/elevation/SurfaceColors;->$VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

    return-void

    :array_0
    .array-data 1
        0x63t
        0x6dt
        0x36t
        0x20t
        0x79t
        0x22t
        0x75t
        0x67t
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x31t
        0x36t
        0x23t
        0x25t
        0x26t
        0x77t
        0x3bt
        0x55t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6bt
        0x6dt
        0x34t
        0x72t
        0x24t
        0x7bt
        0x7dt
        0x67t
        0x54t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0x30t
        0x66t
        0x72t
        0x79t
        0x27t
        0x26t
        0x3at
        0x7t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x62t
        0x6ct
        0x34t
        0x20t
        0x27t
        0x72t
        0x74t
        0x66t
        0x52t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x36t
        0x63t
        0x62t
        0x71t
        0x74t
        0x27t
        0x20t
        0x69t
        0x5t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/material/elevation/SurfaceColors;->elevationResId:I

    return-void
.end method

.method public static getColorForElevation(Landroid/content/Context;F)I
    .locals 3

    new-instance v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {v0, p0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/elevation/SurfaceColors;
    .locals 1

    const-class v0, Lcom/google/android/material/elevation/SurfaceColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/elevation/SurfaceColors;

    return-object v0
.end method

.method public static values()[Lcom/google/android/material/elevation/SurfaceColors;
    .locals 1

    sget-object v0, Lcom/google/android/material/elevation/SurfaceColors;->$VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

    invoke-virtual {v0}, [Lcom/google/android/material/elevation/SurfaceColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/elevation/SurfaceColors;

    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/elevation/SurfaceColors;->elevationResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/elevation/SurfaceColors;->getColorForElevation(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method
