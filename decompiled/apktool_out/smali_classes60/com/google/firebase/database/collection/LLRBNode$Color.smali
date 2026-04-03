.class public final enum Lcom/google/firebase/database/collection/LLRBNode$Color;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/collection/LLRBNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/collection/LLRBNode$Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/collection/LLRBNode$Color;

.field public static final enum BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

.field public static final enum RED:Lcom/google/firebase/database/collection/LLRBNode$Color;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/google/firebase/database/collection/LLRBNode$Color;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "86327a"

    const v3, -0x314fad7c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/collection/LLRBNode$Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->RED:Lcom/google/firebase/database/collection/LLRBNode$Color;

    new-instance v0, Lcom/google/firebase/database/collection/LLRBNode$Color;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e92106"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/collection/LLRBNode$Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/database/collection/LLRBNode$Color;

    sget-object v1, Lcom/google/firebase/database/collection/LLRBNode$Color;->RED:Lcom/google/firebase/database/collection/LLRBNode$Color;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->$VALUES:[Lcom/google/firebase/database/collection/LLRBNode$Color;

    return-void

    nop

    :array_0
    .array-data 1
        0x6at
        0x73t
        0x77t
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x75t
        0x73t
        0x72t
        0x7bt
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/collection/LLRBNode$Color;
    .locals 1

    const-class v0, Lcom/google/firebase/database/collection/LLRBNode$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/collection/LLRBNode$Color;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/collection/LLRBNode$Color;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->$VALUES:[Lcom/google/firebase/database/collection/LLRBNode$Color;

    invoke-virtual {v0}, [Lcom/google/firebase/database/collection/LLRBNode$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/collection/LLRBNode$Color;

    return-object v0
.end method
