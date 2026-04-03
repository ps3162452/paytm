.class public interface abstract Lorg/apache/http/conn/params/ConnConnectionPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MAX_STATUS_LINE_GARBAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b23c11"

    const-wide/32 v2, -0x6dbbb12e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnConnectionPNames;->MAX_STATUS_LINE_GARBAGE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0xat
        0x46t
        0x47t
        0x13t
        0x1ft
        0x52t
        0xdt
        0x5ct
        0x5dt
        0x6t
        0x52t
        0x45t
        0xbt
        0x5dt
        0x5dt
        0x4dt
        0x5ct
        0x50t
        0x1at
        0x1ft
        0x40t
        0x17t
        0x50t
        0x45t
        0x17t
        0x41t
        0x1et
        0xft
        0x58t
        0x5ft
        0x7t
        0x1ft
        0x54t
        0x2t
        0x43t
        0x53t
        0x3t
        0x55t
        0x56t
    .end array-data
.end method
