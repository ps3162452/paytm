.class final enum Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/QueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

.field public static final enum LEFT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

.field public static final enum RIGHT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1ef19e"

    const v3, 0x4e41bef0    # 8.12629E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->LEFT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    new-instance v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ca8ebe"

    const v4, 0x4eba4e4e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    sput-object v2, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->$VALUES:[Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    return-void

    :array_0
    .array-data 1
        0x7dt
        0x20t
        0x20t
        0x65t
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x28t
        0x7ft
        0x2dt
        0x36t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;
    .locals 1

    const-class v0, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->$VALUES:[Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    return-object v0
.end method
