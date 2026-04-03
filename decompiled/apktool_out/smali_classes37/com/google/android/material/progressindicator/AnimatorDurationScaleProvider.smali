.class public Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;
.super Ljava/lang/Object;


# static fields
.field private static defaultSystemAnimatorDurationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultSystemAnimatorDurationScale(F)V
    .locals 0

    sput p0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    return-void
.end method


# virtual methods
.method public getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F
    .locals 5

    const/16 v4, 0x17

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "9aff27"

    const/16 v2, -0x5f6b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "ed6fae"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    goto :goto_0

    :array_0
    .array-data 1
        0x58t
        0xft
        0xft
        0xbt
        0x53t
        0x43t
        0x56t
        0x13t
        0x39t
        0x2t
        0x47t
        0x45t
        0x58t
        0x15t
        0xft
        0x9t
        0x5ct
        0x68t
        0x4at
        0x2t
        0x7t
        0xat
        0x57t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0xat
        0x5ft
        0xbt
        0x0t
        0x11t
        0xat
        0x16t
        0x69t
        0x2t
        0x14t
        0x17t
        0x4t
        0x10t
        0x5ft
        0x9t
        0xft
        0x3at
        0x16t
        0x7t
        0x57t
        0xat
        0x4t
    .end array-data
.end method
