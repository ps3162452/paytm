.class public Lcom/google/gson/FormattingStyle;
.super Ljava/lang/Object;


# static fields
.field public static final COMPACT:Lcom/google/gson/FormattingStyle;

.field public static final PRETTY:Lcom/google/gson/FormattingStyle;


# instance fields
.field private final indent:Ljava/lang/String;

.field private final newline:Ljava/lang/String;

.field private final spaceAfterSeparators:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/gson/FormattingStyle;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gson/FormattingStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/gson/FormattingStyle;->COMPACT:Lcom/google/gson/FormattingStyle;

    new-instance v0, Lcom/google/gson/FormattingStyle;

    const-string v1, "\n"

    const-string v2, "  "

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gson/FormattingStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/gson/FormattingStyle;->PRETTY:Lcom/google/gson/FormattingStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "433b38"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gson/FormattingStyle$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "1a8025"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/gson/FormattingStyle$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "619bb2"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "fcd022"

    const/16 v2, -0x6cde

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/gson/FormattingStyle;->newline:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/gson/FormattingStyle;->indent:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/gson/FormattingStyle;->spaceAfterSeparators:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "974c80"

    const-wide v4, -0x3e2612c2a1000000L    # -1.739912572E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "3dec35"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5at
        0x56t
        0x44t
        0xet
        0x5at
        0x56t
        0x51t
        0x13t
        0xet
        0x5ft
        0x13t
        0x56t
        0x41t
        0x5ft
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0xft
        0x5ct
        0x55t
        0x5ct
        0x41t
        0x11t
        0x5ct
        0x5t
        0x10t
        0x5ct
        0x40t
        0x5dt
        0xdt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6dt
        0x3ct
        0x33t
        0x3ft
        0x48t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3dt
        0x43t
        0x6dt
        0x6dt
        0x18t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x76t
        0x59t
        0x58t
        0x1at
        0x18t
        0x53t
        0x56t
        0x5at
        0x56t
        0xat
        0x56t
        0x51t
        0x4dt
        0x5et
        0x5bt
        0xdt
        0x4bt
        0x10t
        0x56t
        0x51t
        0x14t
        0x10t
        0x48t
        0x51t
        0x5at
        0x52t
        0x47t
        0x43t
        0x59t
        0x5et
        0x5dt
        0x17t
        0x40t
        0x2t
        0x5at
        0x43t
        0x19t
        0x56t
        0x46t
        0x6t
        0x18t
        0x51t
        0x55t
        0x5bt
        0x5bt
        0x14t
        0x5dt
        0x54t
        0x19t
        0x5et
        0x5at
        0x43t
        0x51t
        0x5et
        0x5dt
        0x52t
        0x5at
        0x17t
        0x16t
    .end array-data

    :array_5
    .array-data 1
        0x7ct
        0xat
        0x9t
        0x1at
        0x13t
        0x56t
        0x5ct
        0x9t
        0x7t
        0xat
        0x5dt
        0x54t
        0x47t
        0xdt
        0xat
        0xdt
        0x40t
        0x15t
        0x5ct
        0x2t
        0x45t
        0x3ft
        0x5dt
        0x15t
        0x52t
        0xat
        0x1t
        0x43t
        0x6ft
        0x47t
        0x13t
        0x5t
        0x17t
        0x6t
        0x13t
        0x54t
        0x5ft
        0x8t
        0xat
        0x14t
        0x56t
        0x51t
        0x13t
        0xdt
        0xbt
        0x43t
        0x5dt
        0x50t
        0x44t
        0x8t
        0xct
        0xdt
        0x56t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public getIndent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/FormattingStyle;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/FormattingStyle;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public usesSpaceAfterSeparators()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/FormattingStyle;->spaceAfterSeparators:Z

    return v0
.end method

.method public withIndent(Ljava/lang/String;)Lcom/google/gson/FormattingStyle;
    .locals 3

    new-instance v0, Lcom/google/gson/FormattingStyle;

    iget-object v1, p0, Lcom/google/gson/FormattingStyle;->newline:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/gson/FormattingStyle;->spaceAfterSeparators:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/gson/FormattingStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withNewline(Ljava/lang/String;)Lcom/google/gson/FormattingStyle;
    .locals 3

    new-instance v0, Lcom/google/gson/FormattingStyle;

    iget-object v1, p0, Lcom/google/gson/FormattingStyle;->indent:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/gson/FormattingStyle;->spaceAfterSeparators:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/google/gson/FormattingStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withSpaceAfterSeparators(Z)Lcom/google/gson/FormattingStyle;
    .locals 3

    new-instance v0, Lcom/google/gson/FormattingStyle;

    iget-object v1, p0, Lcom/google/gson/FormattingStyle;->newline:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/FormattingStyle;->indent:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/gson/FormattingStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
