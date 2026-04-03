.class public interface abstract Lorg/apache/http/auth/params/AuthPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREDENTIAL_CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "22e545"

    const-wide/32 v2, 0x18f4a382

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/auth/params/AuthPNames;->CREDENTIAL_CHARSET:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        0x46t
        0x11t
        0x45t
        0x1at
        0x54t
        0x47t
        0x46t
        0xdt
        0x1bt
        0x57t
        0x47t
        0x57t
        0x56t
        0x0t
        0x5bt
        0x40t
        0x5ct
        0x53t
        0x5et
        0x48t
        0x56t
        0x5ct
        0x54t
        0x40t
        0x41t
        0x0t
        0x41t
    .end array-data
.end method
