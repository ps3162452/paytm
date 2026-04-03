.class public final Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
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

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ConstructorConstructor;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/gson/TypeAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/gson/TypeAdapter;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/google/gson/TypeAdapterFactory;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v0, p2, p3}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/gson/JsonSerializer;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/google/gson/JsonDeserializer;

    if-eqz v1, :cond_6

    :cond_3
    instance-of v1, v0, Lcom/google/gson/JsonSerializer;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonSerializer;

    :goto_1
    instance-of v2, v0, Lcom/google/gson/JsonDeserializer;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/google/gson/JsonDeserializer;

    move-object v2, v0

    :goto_2
    new-instance v0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v2, v5

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x27

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "baff53"

    invoke-static {v3, v4, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c4f6db"

    const/16 v4, -0x2567

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x63

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "fb4fb7"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x2bt
        0xft
        0x10t
        0x7t
        0x59t
        0x5at
        0x6t
        0x41t
        0x7t
        0x12t
        0x41t
        0x56t
        0xft
        0x11t
        0x12t
        0x46t
        0x41t
        0x5ct
        0x42t
        0x3t
        0xft
        0x8t
        0x51t
        0x13t
        0x3t
        0xft
        0x46t
        0xft
        0x5bt
        0x40t
        0x16t
        0x0t
        0x8t
        0x5t
        0x50t
        0x13t
        0xdt
        0x7t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x55t
        0x15t
        0x16t
        0x5t
        0x42t
        0x23t
        0x7et
        0x15t
        0x59t
        0xat
        0x23t
        0x7t
        0x55t
        0x16t
        0x42t
        0x1t
        0x10t
        0x43t
        0x52t
        0x9t
        0x44t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x48t
        0x42t
        0x74t
        0x2ct
        0x11t
        0x58t
        0x8t
        0x23t
        0x50t
        0x7t
        0x12t
        0x43t
        0x3t
        0x10t
        0x14t
        0x10t
        0x3t
        0x5bt
        0x13t
        0x7t
        0x14t
        0xbt
        0x17t
        0x44t
        0x12t
        0x42t
        0x56t
        0x3t
        0x42t
        0x56t
        0x46t
        0x36t
        0x4dt
        0x16t
        0x7t
        0x76t
        0x2t
        0x3t
        0x44t
        0x12t
        0x7t
        0x45t
        0x4at
        0x42t
        0x60t
        0x1ft
        0x12t
        0x52t
        0x27t
        0x6t
        0x55t
        0x16t
        0x16t
        0x52t
        0x14t
        0x24t
        0x55t
        0x5t
        0x16t
        0x58t
        0x14t
        0x1bt
        0x18t
        0x46t
        0x28t
        0x44t
        0x9t
        0xct
        0x67t
        0x3t
        0x10t
        0x5et
        0x7t
        0xet
        0x5dt
        0x1ct
        0x7t
        0x45t
        0x46t
        0xdt
        0x46t
        0x46t
        0x28t
        0x44t
        0x9t
        0xct
        0x70t
        0x3t
        0x11t
        0x52t
        0x14t
        0xbt
        0x55t
        0xat
        0xbt
        0x4dt
        0x3t
        0x10t
        0x1at
    .end array-data
.end method
