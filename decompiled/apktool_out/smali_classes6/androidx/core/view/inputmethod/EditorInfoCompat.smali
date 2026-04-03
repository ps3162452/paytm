.class public final Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static final CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String;

.field private static final CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

.field private static final CONTENT_SELECTION_END_KEY:Ljava/lang/String;

.field private static final CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String;

.field private static final CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field static final MAX_INITIAL_SELECTION_LENGTH:I = 0x400

.field static final MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x48

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "819853"

    const-wide v2, -0x3e2f93c902400000L    # -1.102109687E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String;

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "ec1b3c"

    const-wide/32 v2, 0x355da702

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "392056"

    const-wide/32 v2, -0x10259976

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_END_KEY:Ljava/lang/String;

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "e96e9d"

    const-wide/32 v2, 0xb9b8b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v1, "0549ea"

    const v2, -0x31d6a729

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x59t
        0x5ft
        0x5dt
        0x4at
        0x5at
        0x5at
        0x5ct
        0x1ft
        0x4at
        0x4dt
        0x45t
        0x43t
        0x57t
        0x43t
        0x4dt
        0x16t
        0x43t
        0x2t
        0xbt
        0x1ft
        0x4ft
        0x51t
        0x50t
        0x44t
        0x16t
        0x58t
        0x57t
        0x48t
        0x40t
        0x47t
        0x55t
        0x54t
        0x4dt
        0x50t
        0x5at
        0x57t
        0x16t
        0x74t
        0x5dt
        0x51t
        0x41t
        0x5ct
        0x4at
        0x78t
        0x57t
        0x5et
        0x5at
        0x70t
        0x57t
        0x5ct
        0x49t
        0x59t
        0x41t
        0x1dt
        0x7bt
        0x7et
        0x77t
        0x6ct
        0x70t
        0x7dt
        0x6ct
        0x6et
        0x74t
        0x71t
        0x78t
        0x76t
        0x67t
        0x65t
        0x60t
        0x68t
        0x70t
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0xdt
        0x55t
        0x10t
        0x5ct
        0xat
        0x1t
        0x1bt
        0x1ft
        0x1t
        0x5ct
        0x11t
        0x0t
        0x4dt
        0x47t
        0xbt
        0x56t
        0x14t
        0x4bt
        0xat
        0x5ft
        0x12t
        0x46t
        0x17t
        0x8t
        0x6t
        0x45t
        0xat
        0x5ct
        0x7t
        0x4bt
        0x26t
        0x55t
        0xbt
        0x47t
        0xct
        0x17t
        0x2at
        0x5ft
        0x4t
        0x5ct
        0x20t
        0xat
        0xet
        0x41t
        0x3t
        0x47t
        0x4dt
        0x26t
        0x2ct
        0x7ft
        0x36t
        0x76t
        0x2dt
        0x31t
        0x3ct
        0x7ct
        0x2bt
        0x7et
        0x26t
        0x3at
        0x37t
        0x68t
        0x32t
        0x76t
        0x30t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x52t
        0x57t
        0x56t
        0x42t
        0x5at
        0x5ft
        0x57t
        0x41t
        0x1ct
        0x53t
        0x5at
        0x44t
        0x56t
        0x17t
        0x44t
        0x59t
        0x50t
        0x41t
        0x1dt
        0x50t
        0x5ct
        0x40t
        0x40t
        0x42t
        0x5et
        0x5ct
        0x46t
        0x58t
        0x5at
        0x52t
        0x1dt
        0x7ct
        0x56t
        0x59t
        0x41t
        0x59t
        0x41t
        0x70t
        0x5ct
        0x56t
        0x5at
        0x75t
        0x5ct
        0x54t
        0x42t
        0x51t
        0x41t
        0x18t
        0x70t
        0x76t
        0x7ct
        0x64t
        0x70t
        0x78t
        0x67t
        0x66t
        0x61t
        0x75t
        0x79t
        0x73t
        0x70t
        0x6dt
        0x7bt
        0x7ft
        0x7bt
        0x69t
        0x76t
        0x77t
        0x76t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4t
        0x57t
        0x52t
        0x17t
        0x56t
        0xdt
        0x1t
        0x41t
        0x18t
        0x6t
        0x56t
        0x16t
        0x0t
        0x17t
        0x40t
        0xct
        0x5ct
        0x13t
        0x4bt
        0x50t
        0x58t
        0x15t
        0x4ct
        0x10t
        0x8t
        0x5ct
        0x42t
        0xdt
        0x56t
        0x0t
        0x4bt
        0x7ct
        0x52t
        0xct
        0x4dt
        0xbt
        0x17t
        0x70t
        0x58t
        0x3t
        0x56t
        0x27t
        0xat
        0x54t
        0x46t
        0x4t
        0x4dt
        0x4at
        0x26t
        0x76t
        0x78t
        0x31t
        0x7ct
        0x2at
        0x31t
        0x66t
        0x65t
        0x20t
        0x75t
        0x21t
        0x26t
        0x6dt
        0x7ft
        0x2at
        0x77t
        0x3bt
        0x2dt
        0x7ct
        0x77t
        0x21t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x51t
        0x5bt
        0x50t
        0x4bt
        0xat
        0x8t
        0x54t
        0x4dt
        0x1at
        0x5at
        0xat
        0x13t
        0x55t
        0x1bt
        0x42t
        0x50t
        0x0t
        0x16t
        0x1et
        0x5ct
        0x5at
        0x49t
        0x10t
        0x15t
        0x5dt
        0x50t
        0x40t
        0x51t
        0xat
        0x5t
        0x1et
        0x70t
        0x50t
        0x50t
        0x11t
        0xet
        0x42t
        0x7ct
        0x5at
        0x5ft
        0xat
        0x22t
        0x5ft
        0x58t
        0x44t
        0x58t
        0x11t
        0x4ft
        0x73t
        0x7at
        0x7at
        0x6dt
        0x20t
        0x2ft
        0x64t
        0x6at
        0x67t
        0x6ct
        0x37t
        0x33t
        0x7ft
        0x60t
        0x7at
        0x7dt
        0x2ct
        0x2ft
        0x77t
        0x6at
        0x60t
        0x7ct
        0x3dt
        0x35t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_3

    sget-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v4, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v5, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_END_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ltz v5, :cond_0

    iget v5, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ltz v5, :cond_0

    sub-int v5, v4, v3

    sub-int v1, v2, v1

    if-ne v5, v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1, v3, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_END_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    add-int/2addr v2, v0

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    sub-int v2, v0, v2

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    sub-int v2, v0, v2

    invoke-static {v1, v2, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getProtocol(Landroid/view/inputmethod/EditorInfo;)I
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v3, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isPasswordInputType(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    sub-int/2addr v0, p2

    :goto_1
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v1, v2, :cond_3

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    sub-int/2addr v1, p2

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz p2, :cond_1

    if-ltz v0, :cond_1

    if-le v1, v2, :cond_4

    :cond_1
    invoke-static {p0, v5, v4, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    sub-int/2addr v1, p2

    goto :goto_2

    :cond_4
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v3}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isPasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0, v5, v4, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x800

    if-gt v2, v3, :cond_6

    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_6
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public static setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private static setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroidx/core/view/inputmethod/EditorInfoCompat;->CONTENT_SELECTION_END_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    sub-int v2, p3, p2

    const/16 v0, 0x400

    if-le v2, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    rsub-int v4, v0, 0x800

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-int/2addr v3, p3

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v3, v4, v5

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v3, p2, v4

    sub-int v6, p2, v4

    invoke-static {p1, v6, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int v6, p3, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v6, v10}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    add-int v6, v3, v4

    invoke-interface {p1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    add-int v1, p3, v5

    invoke-interface {p1, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v4, 0x0

    add-int/2addr v0, v2

    invoke-static {p0, v1, v2, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    add-int v1, v4, v0

    add-int/2addr v1, v5

    add-int/2addr v1, v3

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method
