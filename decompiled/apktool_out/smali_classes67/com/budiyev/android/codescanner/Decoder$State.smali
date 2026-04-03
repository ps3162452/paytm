.class public final enum Lcom/budiyev/android/codescanner/Decoder$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/budiyev/android/codescanner/Decoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/budiyev/android/codescanner/Decoder$State;

.field public static final enum DECODED:Lcom/budiyev/android/codescanner/Decoder$State;

.field public static final enum DECODING:Lcom/budiyev/android/codescanner/Decoder$State;

.field public static final enum IDLE:Lcom/budiyev/android/codescanner/Decoder$State;

.field public static final enum INITIALIZED:Lcom/budiyev/android/codescanner/Decoder$State;

.field public static final enum STOPPED:Lcom/budiyev/android/codescanner/Decoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/budiyev/android/codescanner/Decoder$State;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a03fbe"

    const-wide/32 v4, 0x248e7d5e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/budiyev/android/codescanner/Decoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/budiyev/android/codescanner/Decoder$State;->INITIALIZED:Lcom/budiyev/android/codescanner/Decoder$State;

    new-instance v1, Lcom/budiyev/android/codescanner/Decoder$State;

    new-array v2, v10, [B

    fill-array-data v2, :array_1

    const-string v3, "fbe0b6"

    invoke-static {v2, v3, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lcom/budiyev/android/codescanner/Decoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/budiyev/android/codescanner/Decoder$State;->IDLE:Lcom/budiyev/android/codescanner/Decoder$State;

    new-instance v2, Lcom/budiyev/android/codescanner/Decoder$State;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "74712b"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lcom/budiyev/android/codescanner/Decoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/budiyev/android/codescanner/Decoder$State;->DECODING:Lcom/budiyev/android/codescanner/Decoder$State;

    new-instance v3, Lcom/budiyev/android/codescanner/Decoder$State;

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "8db265"

    const-wide v6, -0x3e27b3f233000000L    # -1.630549812E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/budiyev/android/codescanner/Decoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/budiyev/android/codescanner/Decoder$State;->DECODED:Lcom/budiyev/android/codescanner/Decoder$State;

    new-instance v4, Lcom/budiyev/android/codescanner/Decoder$State;

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "da7da9"

    invoke-static {v5, v6, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Lcom/budiyev/android/codescanner/Decoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/budiyev/android/codescanner/Decoder$State;->STOPPED:Lcom/budiyev/android/codescanner/Decoder$State;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/budiyev/android/codescanner/Decoder$State;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v11

    aput-object v3, v5, v12

    aput-object v4, v5, v10

    sput-object v5, Lcom/budiyev/android/codescanner/Decoder$State;->$VALUES:[Lcom/budiyev/android/codescanner/Decoder$State;

    return-void

    nop

    :array_0
    .array-data 1
        0x28t
        0x7et
        0x7at
        0x32t
        0x2bt
        0x24t
        0x2dt
        0x79t
        0x69t
        0x23t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x2ft
        0x26t
        0x29t
        0x75t
    .end array-data

    :array_2
    .array-data 1
        0x73t
        0x71t
        0x74t
        0x7et
        0x76t
        0x2bt
        0x79t
        0x73t
    .end array-data

    :array_3
    .array-data 1
        0x7ct
        0x21t
        0x21t
        0x7dt
        0x72t
        0x70t
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        0x37t
        0x35t
        0x78t
        0x34t
        0x31t
        0x7ct
        0x20t
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

.method public static valueOf(Ljava/lang/String;)Lcom/budiyev/android/codescanner/Decoder$State;
    .locals 1

    const-class v0, Lcom/budiyev/android/codescanner/Decoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/Decoder$State;

    return-object v0
.end method

.method public static values()[Lcom/budiyev/android/codescanner/Decoder$State;
    .locals 1

    sget-object v0, Lcom/budiyev/android/codescanner/Decoder$State;->$VALUES:[Lcom/budiyev/android/codescanner/Decoder$State;

    invoke-virtual {v0}, [Lcom/budiyev/android/codescanner/Decoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/budiyev/android/codescanner/Decoder$State;

    return-object v0
.end method
