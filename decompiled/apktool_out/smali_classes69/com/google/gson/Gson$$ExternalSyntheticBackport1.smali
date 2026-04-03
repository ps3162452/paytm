.class public final synthetic Lcom/google/gson/Gson$$ExternalSyntheticBackport1;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "1f8e13343363e049817a9dcb5497db709a24997414e94a91798e0e92dd49259e"
.end annotation


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
