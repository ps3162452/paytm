.class public final enum Lcom/budiyev/android/codescanner/AutoFocusMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/budiyev/android/codescanner/AutoFocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/budiyev/android/codescanner/AutoFocusMode;

.field public static final enum CONTINUOUS:Lcom/budiyev/android/codescanner/AutoFocusMode;

.field public static final enum SAFE:Lcom/budiyev/android/codescanner/AutoFocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/budiyev/android/codescanner/AutoFocusMode;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2e0f7f"

    const-wide v4, -0x3e46b067c8000000L    # -4.24646712E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/budiyev/android/codescanner/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/budiyev/android/codescanner/AutoFocusMode;->SAFE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    new-instance v1, Lcom/budiyev/android/codescanner/AutoFocusMode;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "5c3956"

    const v4, 0x4dfd0bdd    # 5.3067664E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/budiyev/android/codescanner/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/budiyev/android/codescanner/AutoFocusMode;->CONTINUOUS:Lcom/budiyev/android/codescanner/AutoFocusMode;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/budiyev/android/codescanner/AutoFocusMode;

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    sput-object v2, Lcom/budiyev/android/codescanner/AutoFocusMode;->$VALUES:[Lcom/budiyev/android/codescanner/AutoFocusMode;

    return-void

    nop

    :array_0
    .array-data 1
        0x61t
        0x24t
        0x76t
        0x23t
    .end array-data

    :array_1
    .array-data 1
        0x76t
        0x2ct
        0x7dt
        0x6dt
        0x7ct
        0x78t
        0x60t
        0x2ct
        0x66t
        0x6at
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

.method public static valueOf(Ljava/lang/String;)Lcom/budiyev/android/codescanner/AutoFocusMode;
    .locals 1

    const-class v0, Lcom/budiyev/android/codescanner/AutoFocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/budiyev/android/codescanner/AutoFocusMode;

    return-object v0
.end method

.method public static values()[Lcom/budiyev/android/codescanner/AutoFocusMode;
    .locals 1

    sget-object v0, Lcom/budiyev/android/codescanner/AutoFocusMode;->$VALUES:[Lcom/budiyev/android/codescanner/AutoFocusMode;

    invoke-virtual {v0}, [Lcom/budiyev/android/codescanner/AutoFocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/budiyev/android/codescanner/AutoFocusMode;

    return-object v0
.end method
