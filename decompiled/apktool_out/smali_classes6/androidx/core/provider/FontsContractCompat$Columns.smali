.class public final Landroidx/core/provider/FontsContractCompat$Columns;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final FILE_ID:Ljava/lang/String;

.field public static final ITALIC:Ljava/lang/String;

.field public static final RESULT_CODE:Ljava/lang/String;

.field public static final RESULT_CODE_FONT_NOT_FOUND:I = 0x1

.field public static final RESULT_CODE_FONT_UNAVAILABLE:I = 0x2

.field public static final RESULT_CODE_MALFORMED_QUERY:I = 0x3

.field public static final RESULT_CODE_OK:I

.field public static final TTC_INDEX:Ljava/lang/String;

.field public static final VARIATION_SETTINGS:Ljava/lang/String;

.field public static final WEIGHT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "db75a8"

    const-wide v2, 0x41b3a99a63000000L    # 3.29882211E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontsContractCompat$Columns;->FILE_ID:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "851c73"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontsContractCompat$Columns;->ITALIC:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "cbe5d6"

    const/16 v2, 0x6cf9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontsContractCompat$Columns;->RESULT_CODE:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "3ab931"

    const-wide v2, 0x41d0b9630a000000L    # 1.12233988E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontsContractCompat$Columns;->TTC_INDEX:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "a403a5"

    const-wide v2, 0x41ac10161c000000L    # 2.35408142E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontsContractCompat$Columns;->VARIATION_SETTINGS:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "b08677"

    const/16 v2, 0x53f9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontsContractCompat$Columns;->WEIGHT:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x2t
        0xbt
        0x5bt
        0x50t
        0x3et
        0x51t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x5et
        0x5at
        0x5ft
        0x17t
        0x68t
        0x5at
        0x4ct
        0x54t
        0x5dt
        0xat
        0x54t
    .end array-data

    :array_2
    .array-data 1
        0x11t
        0x7t
        0x16t
        0x40t
        0x8t
        0x42t
        0x3ct
        0x1t
        0xat
        0x51t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0xet
        0xct
        0x4dt
        0x6ct
        0x45t
        0x47t
        0x2t
        0x3dt
        0x50t
        0x5dt
        0x55t
        0x56t
        0x19t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7t
        0x5bt
        0x5et
        0x47t
        0x3et
        0x43t
        0x0t
        0x46t
        0x59t
        0x52t
        0x15t
        0x5ct
        0xet
        0x5at
        0x6ft
        0x40t
        0x4t
        0x41t
        0x15t
        0x5dt
        0x5et
        0x54t
        0x12t
    .end array-data

    :array_5
    .array-data 1
        0x4t
        0x5ft
        0x56t
        0x42t
        0x68t
        0x40t
        0x7t
        0x59t
        0x5ft
        0x5et
        0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
