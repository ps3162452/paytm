.class public final synthetic Landroidx/emoji2/text/MetadataListReader$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 5

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a4b6f5"

    const/16 v3, 0x1378

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x50t
        0x6t
        0x65t
        0x13t
        0x45t
        0x11t
        0x46t
        0x7t
        0x45t
        0x15t
        0x50t
        0x5t
    .end array-data
.end method
