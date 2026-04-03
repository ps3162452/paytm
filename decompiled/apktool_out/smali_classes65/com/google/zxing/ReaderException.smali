.class public abstract Lcom/google/zxing/ReaderException;
.super Ljava/lang/Exception;


# static fields
.field protected static final NO_TRACE:[Ljava/lang/StackTraceElement;

.field protected static final isStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "ecbc30"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/ReaderException;->isStackTrace:Z

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/google/zxing/ReaderException;->NO_TRACE:[Ljava/lang/StackTraceElement;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x16t
        0x16t
        0x10t
        0x6t
        0x55t
        0x59t
        0x17t
        0x6t
        0x4ct
        0x17t
        0x56t
        0x43t
        0x11t
        0x4dt
        0x1t
        0xft
        0x52t
        0x43t
        0x16t
        0x4dt
        0x12t
        0x2t
        0x47t
        0x58t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
