.class public final enum Lcom/google/firebase/database/snapshot/Node$HashVersion;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/snapshot/Node$HashVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/snapshot/Node$HashVersion;

.field public static final enum V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

.field public static final enum V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v2, "68375e"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/firebase/database/snapshot/Node$HashVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    new-instance v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "63fedf"

    const/16 v4, -0x68cf

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/google/firebase/database/snapshot/Node$HashVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    new-array v2, v6, [Lcom/google/firebase/database/snapshot/Node$HashVersion;

    aput-object v0, v2, v7

    aput-object v1, v2, v5

    sput-object v2, Lcom/google/firebase/database/snapshot/Node$HashVersion;->$VALUES:[Lcom/google/firebase/database/snapshot/Node$HashVersion;

    return-void

    :array_0
    .array-data 1
        0x60t
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0x1t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/Node$HashVersion;
    .locals 1

    const-class v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/snapshot/Node$HashVersion;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->$VALUES:[Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {v0}, [Lcom/google/firebase/database/snapshot/Node$HashVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/snapshot/Node$HashVersion;

    return-object v0
.end method
