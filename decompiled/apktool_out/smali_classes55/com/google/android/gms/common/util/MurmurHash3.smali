.class public Lcom/google/android/gms/common/util/MurmurHash3;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static murmurhash3_x86_32([BIII)I
    .locals 7

    const v6, 0x1b873593

    const/4 v0, 0x0

    const v5, -0x3361d2af    # -8.293031E7f

    move v2, p1

    move v1, p3

    :goto_0
    and-int/lit8 v3, p2, -0x4

    add-int/2addr v3, p1

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    mul-int/2addr v3, v5

    ushr-int/lit8 v4, v3, 0x11

    shl-int/lit8 v3, v3, 0xf

    or-int/2addr v3, v4

    mul-int/2addr v3, v6

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x13

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x5

    const v3, 0x19ab949c

    sub-int p3, v1, v3

    add-int/lit8 v1, v2, 0x4

    move v2, v1

    move v1, p3

    goto :goto_0

    :cond_0
    and-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, p2

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0

    :pswitch_0
    add-int/lit8 v0, v3, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    :pswitch_2
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    mul-int/2addr v0, v5

    ushr-int/lit8 v2, v0, 0x11

    shl-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v2

    mul-int/2addr v0, v6

    xor-int/2addr v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
