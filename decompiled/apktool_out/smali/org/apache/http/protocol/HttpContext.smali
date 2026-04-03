.class public interface abstract Lorg/apache/http/protocol/HttpContext;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RESERVED_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c183ef"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HttpContext;->RESERVED_PREFIX:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0xbt
        0x45t
        0x4ct
        0x43t
        0x4bt
    .end array-data
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
