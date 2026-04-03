.class public interface abstract Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$CastExtraArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CastExtraArgs"
.end annotation


# static fields
.field public static final LISTENER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0df8a6"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$CastExtraArgs;->LISTENER:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5ct
        0xdt
        0x15t
        0x4ct
        0x4t
        0x58t
        0x55t
        0x16t
    .end array-data
.end method
