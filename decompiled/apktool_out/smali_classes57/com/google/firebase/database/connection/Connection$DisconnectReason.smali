.class public final enum Lcom/google/firebase/database/connection/Connection$DisconnectReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/connection/Connection$DisconnectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

.field public static final enum OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

.field public static final enum SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3c0f06"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    new-instance v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2c7888"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    sput-object v2, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->$VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-void

    nop

    :array_0
    .array-data 1
        0x60t
        0x26t
        0x62t
        0x30t
        0x75t
        0x64t
        0x6ct
        0x31t
        0x75t
        0x35t
        0x75t
        0x62t
    .end array-data

    :array_1
    .array-data 1
        0x7dt
        0x37t
        0x7ft
        0x7dt
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    .locals 1

    const-class v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->$VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-object v0
.end method
