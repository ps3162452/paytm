.class Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/MessageBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextBuilder"
.end annotation


# static fields
.field private static localDecoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static localEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private carryOver:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$1;

    invoke-direct {v0}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$2;

    invoke-direct {v0}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private decodeString([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeStringStreaming([B)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->getBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-float v1, v0

    sget-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    :goto_0
    sget-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    iput-object v4, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    :cond_1
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    sget-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    move-object v1, v2

    goto :goto_2
.end method

.method private getBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public appendBytes([B)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->decodeString([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketMessage;

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketMessage;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
