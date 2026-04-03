.class public Lcom/google/firebase/database/tubesock/WebSocketMessage;
.super Ljava/lang/Object;


# instance fields
.field private byteMessage:[B

.field private opcode:B

.field private stringMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    const/4 v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->byteMessage:[B

    const/4 v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->byteMessage:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
