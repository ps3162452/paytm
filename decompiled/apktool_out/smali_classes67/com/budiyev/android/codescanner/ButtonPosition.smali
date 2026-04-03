.class public final enum Lcom/budiyev/android/codescanner/ButtonPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/budiyev/android/codescanner/ButtonPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/budiyev/android/codescanner/ButtonPosition;

.field public static final enum BOTTOM_END:Lcom/budiyev/android/codescanner/ButtonPosition;

.field public static final enum BOTTOM_START:Lcom/budiyev/android/codescanner/ButtonPosition;

.field public static final enum TOP_END:Lcom/budiyev/android/codescanner/ButtonPosition;

.field public static final enum TOP_START:Lcom/budiyev/android/codescanner/ButtonPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/budiyev/android/codescanner/ButtonPosition;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1d91c3"

    const v3, -0x313db281

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/budiyev/android/codescanner/ButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->TOP_START:Lcom/budiyev/android/codescanner/ButtonPosition;

    new-instance v1, Lcom/budiyev/android/codescanner/ButtonPosition;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "cba1e4"

    const/16 v4, -0xc1e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lcom/budiyev/android/codescanner/ButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/budiyev/android/codescanner/ButtonPosition;->TOP_END:Lcom/budiyev/android/codescanner/ButtonPosition;

    new-instance v2, Lcom/budiyev/android/codescanner/ButtonPosition;

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "ac5654"

    const v5, -0x325ff99b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Lcom/budiyev/android/codescanner/ButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/budiyev/android/codescanner/ButtonPosition;->BOTTOM_START:Lcom/budiyev/android/codescanner/ButtonPosition;

    new-instance v3, Lcom/budiyev/android/codescanner/ButtonPosition;

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "8e6b6b"

    const-wide/32 v6, -0x57206d09

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lcom/budiyev/android/codescanner/ButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/budiyev/android/codescanner/ButtonPosition;->BOTTOM_END:Lcom/budiyev/android/codescanner/ButtonPosition;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/budiyev/android/codescanner/ButtonPosition;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    aput-object v3, v4, v11

    sput-object v4, Lcom/budiyev/android/codescanner/ButtonPosition;->$VALUES:[Lcom/budiyev/android/codescanner/ButtonPosition;

    return-void

    :array_0
    .array-data 1
        0x65t
        0x2bt
        0x69t
        0x6et
        0x30t
        0x67t
        0x70t
        0x36t
        0x6dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x37t
        0x2dt
        0x31t
        0x6et
        0x20t
        0x7at
        0x27t
    .end array-data

    :array_2
    .array-data 1
        0x23t
        0x2ct
        0x61t
        0x62t
        0x7at
        0x79t
        0x3et
        0x30t
        0x61t
        0x77t
        0x67t
        0x60t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x2at
        0x62t
        0x36t
        0x79t
        0x2ft
        0x67t
        0x20t
        0x78t
        0x26t
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

.method public static valueOf(Ljava/lang/String;)Lcom/budiyev/android/codescanner/ButtonPosition;
    .locals 1

    const-class v0, Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/ButtonPosition;

    return-object v0
.end method

.method public static values()[Lcom/budiyev/android/codescanner/ButtonPosition;
    .locals 1

    sget-object v0, Lcom/budiyev/android/codescanner/ButtonPosition;->$VALUES:[Lcom/budiyev/android/codescanner/ButtonPosition;

    invoke-virtual {v0}, [Lcom/budiyev/android/codescanner/ButtonPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/budiyev/android/codescanner/ButtonPosition;

    return-object v0
.end method
