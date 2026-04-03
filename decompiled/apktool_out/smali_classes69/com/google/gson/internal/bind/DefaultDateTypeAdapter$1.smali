.class Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/util/Date;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;

    sget-object v2, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;-><init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;IILcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "69b1ff"

    const v2, -0x316f0537

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x5ct
        0x4t
        0x50t
        0x13t
        0xat
        0x42t
        0x7dt
        0x3t
        0x45t
        0x3t
        0x32t
        0x4ft
        0x49t
        0x7t
        0x70t
        0x2t
        0x7t
        0x46t
        0x4dt
        0x7t
        0x43t
        0x45t
        0x22t
        0x73t
        0x7ft
        0x23t
        0x64t
        0x2at
        0x32t
        0x69t
        0x6at
        0x36t
        0x68t
        0x2at
        0x23t
        0x69t
        0x7ft
        0x23t
        0x72t
        0x32t
        0x29t
        0x64t
        0x60t
    .end array-data
.end method
