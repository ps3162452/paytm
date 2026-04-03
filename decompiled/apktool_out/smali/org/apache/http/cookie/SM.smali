.class public interface abstract Lorg/apache/http/cookie/SM;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COOKIE:Ljava/lang/String;

.field public static final COOKIE2:Ljava/lang/String;

.field public static final SET_COOKIE:Ljava/lang/String;

.field public static final SET_COOKIE2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f19271"

    const-wide v2, 0x41d4abe851c00000L    # 1.387241799E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/SM;->COOKIE:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "519d0e"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/SM;->COOKIE2:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "fa63bc"

    const-wide/32 v2, 0x71c0af99

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/SM;->SET_COOKIE:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "b96600"

    const/4 v2, 0x1

    invoke-static {v0, v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/SM;->SET_COOKIE2:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x25t
        0x5et
        0x56t
        0x59t
        0x5et
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x5et
        0x56t
        0xft
        0x59t
        0x0t
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x35t
        0x4t
        0x42t
        0x1et
        0x21t
        0xct
        0x9t
        0xat
        0x5ft
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x31t
        0x5ct
        0x42t
        0x1bt
        0x73t
        0x5ft
        0xdt
        0x52t
        0x5ft
        0x53t
        0x2t
    .end array-data
.end method
