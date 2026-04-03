.class public Landroidx/core/app/Person;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/Person$Builder;
    }
.end annotation


# static fields
.field private static final ICON_KEY:Ljava/lang/String;

.field private static final IS_BOT_KEY:Ljava/lang/String;

.field private static final IS_IMPORTANT_KEY:Ljava/lang/String;

.field private static final KEY_KEY:Ljava/lang/String;

.field private static final NAME_KEY:Ljava/lang/String;

.field private static final URI_KEY:Ljava/lang/String;


# instance fields
.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "2063b4"

    const-wide v2, -0x3e4716d743000000L    # -4.17933501E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/Person;->ICON_KEY:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "215a46"

    const v2, -0x31b6e5c9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/Person;->IS_BOT_KEY:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "465f10"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/Person;->IS_IMPORTANT_KEY:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "59b6c3"

    const v2, -0x3157f868

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/Person;->KEY_KEY:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "9eed48"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/Person;->NAME_KEY:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v1, "1e68fa"

    const/16 v2, 0x600f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/Person;->URI_KEY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x53t
        0x59t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x42t
        0x77t
        0xet
        0x40t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5dt
        0x45t
        0x7ct
        0xbt
        0x41t
        0x5ft
        0x46t
        0x42t
        0x54t
        0x8t
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x5et
        0x5ct
        0x1bt
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0x4t
        0x8t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x44t
        0x17t
        0x5ft
    .end array-data
.end method

.method constructor <init>(Landroidx/core/app/Person$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/core/app/Person$Builder;->mIsBot:Z

    iput-boolean v0, p0, Landroidx/core/app/Person;->mIsBot:Z

    iget-boolean v0, p1, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    iput-boolean v0, p0, Landroidx/core/app/Person;->mIsImportant:Z

    return-void
.end method

.method public static fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;
    .locals 2

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;
    .locals 3

    sget-object v0, Landroidx/core/app/Person;->ICON_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroidx/core/app/Person$Builder;

    invoke-direct {v1}, Landroidx/core/app/Person$Builder;-><init>()V

    sget-object v2, Landroidx/core/app/Person;->NAME_KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->URI_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->KEY_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->IS_BOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->IS_IMPORTANT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroidx/core/app/Person;
    .locals 2

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    sget-object v1, Landroidx/core/app/Person;->NAME_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->URI_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->KEY_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->IS_BOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/app/Person;->IS_IMPORTANT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isBot()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/Person;->mIsBot:Z

    return v0
.end method

.method public isImportant()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/Person;->mIsImportant:Z

    return v0
.end method

.method public resolveToLegacyUri()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a27f97"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xft
        0x53t
        0x5at
        0x3t
        0x3t
    .end array-data
.end method

.method public toAndroidPerson()Landroid/app/Person;
    .locals 2

    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->isImportant()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBuilder()Landroidx/core/app/Person$Builder;
    .locals 1

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0, p0}, Landroidx/core/app/Person$Builder;-><init>(Landroidx/core/app/Person;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Landroidx/core/app/Person;->NAME_KEY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    sget-object v2, Landroidx/core/app/Person;->ICON_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Landroidx/core/app/Person;->URI_KEY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/Person;->KEY_KEY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/Person;->IS_BOT_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsBot:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroidx/core/app/Person;->IS_IMPORTANT_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsImportant:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Landroidx/core/app/Person;->NAME_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/Person;->URI_KEY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/Person;->KEY_KEY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroidx/core/app/Person;->IS_BOT_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsBot:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroidx/core/app/Person;->IS_IMPORTANT_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsImportant:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
