.class Lcom/dz/scanner/DebugActivity$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dz/scanner/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "StringIndexOutOfBoundsException"

    const-string v1, "Invalid string operation\n"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/DebugActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "IndexOutOfBoundsException"

    const-string v1, "Invalid list operation\n"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/DebugActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ArithmeticException"

    const-string v1, "Invalid arithmetical operation\n"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/DebugActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NumberFormatException"

    const-string v1, "Invalid toNumber block operation\n"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/DebugActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ActivityNotFoundException"

    const-string v1, "Invalid intent operation\n"

    invoke-virtual {p0, v0, v1}, Lcom/dz/scanner/DebugActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
