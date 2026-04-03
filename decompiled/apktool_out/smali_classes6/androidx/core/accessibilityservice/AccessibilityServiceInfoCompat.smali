.class public final Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1434f4"

    const v2, -0x31f02e20

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "d610a6"

    const v2, -0x31a0dc15

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "6ad908"

    const/16 v2, -0x10dc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "07e3cd"

    const/16 v2, -0x7d24

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "e6849c"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x64t
        0x7at
        0x78t
        0x7at
        0x29t
        0x63t
        0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x77t
        0x61t
        0x71t
        0x23t
        0x7ft
        0x28t
        0x7ft
        0x65t
        0x69t
        0x3et
        0x75t
        0x25t
        0x78t
        0x6et
        0x76t
        0x28t
        0x7at
        0x30t
        0x73t
        0x63t
        0x6ft
        0x2at
        0x73t
        0x3dt
        0x69t
        0x74t
        0x66t
        0x24t
        0x78t
        0x30t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x75t
        0x20t
        0x34t
        0x78t
        0x72t
        0x71t
        0x7at
        0x28t
        0x30t
        0x60t
        0x6ft
        0x7bt
        0x77t
        0x2ft
        0x3bt
        0x6bt
        0x75t
        0x69t
        0x63t
        0x24t
        0x37t
        0x6dt
        0x6ft
        0x7dt
        0x78t
        0x29t
        0x25t
        0x77t
        0x73t
        0x7dt
        0x72t
        0x3et
        0x33t
        0x7ct
        0x72t
        0x67t
        0x77t
        0x22t
        0x27t
        0x7ct
        0x63t
        0x6bt
        0x7ft
        0x23t
        0x2dt
        0x75t
        0x79t
        0x6ct
        0x6ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x73t
        0x76t
        0x35t
        0x72t
        0x21t
        0x2dt
        0x7ct
        0x7et
        0x31t
        0x6at
        0x3ct
        0x27t
        0x71t
        0x79t
        0x3at
        0x61t
        0x26t
        0x35t
        0x65t
        0x72t
        0x36t
        0x67t
        0x3ct
        0x30t
        0x7ft
        0x62t
        0x26t
        0x7bt
        0x3ct
        0x21t
        0x68t
        0x67t
        0x29t
        0x7ct
        0x31t
        0x25t
        0x64t
        0x7et
        0x2at
        0x7dt
    .end array-data

    :array_4
    .array-data 1
        0x26t
        0x77t
        0x68t
        0x75t
        0x7bt
        0x2at
        0x29t
        0x7ft
        0x6ct
        0x6dt
        0x66t
        0x20t
        0x24t
        0x78t
        0x67t
        0x66t
        0x7ct
        0x37t
        0x37t
        0x7ft
        0x7dt
        0x62t
        0x7ct
        0x3ct
        0x32t
        0x7ft
        0x76t
        0x70t
        0x76t
        0x34t
        0x3at
        0x75t
        0x77t
        0x7at
        0x6dt
        0x26t
        0x2bt
        0x62t
    .end array-data
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/16 v7, 0xf

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [B

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    const-string v2, "4aaf25"

    const/16 v3, -0x2f40

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-lez p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int v1, v6, v1

    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5518f4"

    const-wide v4, 0x41dc210fa6800000L    # 1.88771497E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "bffc22"

    const-wide v4, 0x4149611c00000000L    # 3326520.0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    new-array v1, v9, [B

    fill-array-data v1, :array_2

    const-string v2, "aa8fc7"

    const-wide v4, 0x41c43531bf000000L    # 6.78060926E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    new-array v1, v7, [B

    fill-array-data v1, :array_3

    const-string v2, "ed9ec6"

    const-wide/32 v4, -0x6d569e68

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    new-array v1, v9, [B

    fill-array-data v1, :array_4

    const-string v2, "354429"

    const-wide v4, -0x3e2ea5e751000000L    # -1.164468924E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    new-array v1, v7, [B

    fill-array-data v1, :array_5

    const-string v2, "f401f1"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    new-array v1, v6, [B

    const/16 v2, 0x69

    aput-byte v2, v1, v8

    const-string v2, "41f4b8"

    const/16 v3, -0x395b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x19t
        0x15t
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch

    :array_1
    .array-data 1
        0x24t
        0x23t
        0x23t
        0x27t
        0x70t
        0x73t
        0x21t
        0x2dt
        0x39t
        0x30t
        0x62t
        0x7dt
        0x29t
        0x23t
        0x28t
    .end array-data

    :array_2
    .array-data 1
        0x27t
        0x24t
        0x7dt
        0x22t
        0x21t
        0x76t
        0x22t
        0x2at
        0x67t
        0x21t
        0x26t
        0x79t
        0x24t
        0x33t
        0x71t
        0x25t
    .end array-data

    :array_3
    .array-data 1
        0x23t
        0x21t
        0x7ct
        0x21t
        0x21t
        0x77t
        0x26t
        0x2ft
        0x66t
        0x33t
        0x2at
        0x65t
        0x30t
        0x25t
        0x75t
    .end array-data

    :array_4
    .array-data 1
        0x75t
        0x70t
        0x71t
        0x70t
        0x70t
        0x78t
        0x70t
        0x7et
        0x6bt
        0x75t
        0x67t
        0x7dt
        0x7at
        0x77t
        0x78t
        0x71t
    .end array-data

    :array_5
    .array-data 1
        0x20t
        0x71t
        0x75t
        0x75t
        0x24t
        0x70t
        0x25t
        0x7ft
        0x6ft
        0x79t
        0x27t
        0x61t
        0x32t
        0x7dt
        0x73t
    .end array-data
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "95d958"

    const-wide v2, -0x3e35b8e8b3800000L    # -8.81733273E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "34772d"

    const-wide v2, -0x3e278ca5ee400000L    # -1.640851527E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "c93af6"

    const-wide/32 v2, 0x3ac19f15

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "ec5d3a"

    const/16 v2, -0xb9d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "c45d99"

    const/16 v2, 0x3fde

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "679cdf"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x7ft
        0x79t
        0x25t
        0x7et
        0x6at
        0x6at
        0x7ct
        0x64t
        0x31t
        0x7ct
        0x66t
        0x6ct
        0x66t
        0x73t
        0x2dt
        0x75t
        0x61t
        0x7dt
        0x6bt
        0x6at
        0x2ft
        0x7ct
        0x6ct
        0x67t
        0x7ct
        0x63t
        0x21t
        0x77t
        0x61t
        0x6bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x78t
        0x76t
        0x70t
        0x6dt
        0x36t
        0x76t
        0x64t
        0x78t
        0x65t
        0x66t
        0x3bt
        0x65t
        0x7dt
        0x72t
        0x60t
        0x6dt
        0x2dt
        0x77t
        0x67t
    .end array-data

    :array_2
    .array-data 1
        0x25t
        0x75t
        0x72t
        0x26t
        0x39t
        0x64t
        0x26t
        0x68t
        0x66t
        0x24t
        0x35t
        0x62t
        0x3ct
        0x7ct
        0x7dt
        0x29t
        0x27t
        0x78t
        0x20t
        0x7ct
        0x77t
        0x3et
        0x31t
        0x73t
        0x21t
        0x66t
        0x72t
        0x22t
        0x25t
        0x73t
        0x30t
        0x6at
        0x7at
        0x23t
        0x2ft
        0x7at
        0x2at
        0x6dt
        0x6at
    .end array-data

    :array_3
    .array-data 1
        0x23t
        0x2ft
        0x74t
        0x23t
        0x6ct
        0x33t
        0x20t
        0x32t
        0x60t
        0x21t
        0x60t
        0x35t
        0x3at
        0x37t
        0x7at
        0x31t
        0x70t
        0x29t
        0x3at
        0x26t
        0x6dt
        0x34t
        0x7ft
        0x2et
        0x37t
        0x22t
        0x61t
        0x2dt
        0x7ct
        0x2ft
        0x3at
        0x2et
        0x7at
        0x20t
        0x76t
    .end array-data

    :array_4
    .array-data 1
        0x25t
        0x78t
        0x74t
        0x23t
        0x66t
        0x70t
        0x2dt
        0x77t
        0x79t
        0x31t
        0x7dt
        0x7ct
        0x3ct
        0x7at
        0x7at
        0x30t
        0x66t
        0x70t
        0x2et
        0x64t
        0x7at
        0x36t
        0x6dt
        0x78t
        0x2dt
        0x60t
        0x6at
        0x32t
        0x70t
        0x7ct
        0x34t
        0x67t
    .end array-data

    :array_5
    .array-data 1
        0x72t
        0x72t
        0x7ft
        0x22t
        0x31t
        0x2at
        0x62t
    .end array-data
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
