.class public Ln/NPStringFog;
.super Ljava/lang/Object;
.source "NPStringFog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 12
    array-length v1, p0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 14
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 15
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;D)Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    array-length v1, p0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 81
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;F)Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    array-length v1, p0

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 67
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 68
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    array-length v1, p0

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 53
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 54
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    array-length v1, p0

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 94
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 25
    array-length v1, p0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 27
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 28
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;ZZ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    array-length v1, p0

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 41
    :cond_0
    aget-byte v3, p0, v0

    rem-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
