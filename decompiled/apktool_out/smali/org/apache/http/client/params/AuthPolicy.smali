.class public final Lorg/apache/http/client/params/AuthPolicy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BASIC:Ljava/lang/String;

.field public static final DIGEST:Ljava/lang/String;

.field public static final NTLM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f8ce22"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/AuthPolicy;->BASIC:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "15b326"

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/AuthPolicy;->DIGEST:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "055cbe"

    const/16 v2, -0x289d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/AuthPolicy;->NTLM:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x59t
        0x10t
        0xct
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x5ct
        0x5t
        0x56t
        0x41t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7et
        0x61t
        0x79t
        0x2et
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9c425d"

    const/16 v3, -0x200b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x17t
        0x41t
        0x50t
        0x14t
    .end array-data
.end method
