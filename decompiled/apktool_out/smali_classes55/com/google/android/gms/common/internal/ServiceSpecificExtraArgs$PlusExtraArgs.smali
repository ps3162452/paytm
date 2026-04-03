.class public interface abstract Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$PlusExtraArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlusExtraArgs"
.end annotation


# static fields
.field public static final PLUS_AUTH_PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "225c88"

    const-wide/32 v2, 0x89d32c4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$PlusExtraArgs;->PLUS_AUTH_PACKAGE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x47t
        0x41t
        0xbt
        0x67t
        0x48t
        0x53t
        0x51t
        0x5et
        0x2t
        0x5ft
        0x5dt
    .end array-data
.end method
