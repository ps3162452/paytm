.class Landroidx/appcompat/widget/SuggestionsAdapter;
.super Landroidx/cursoradapter/widget/ResourceCursorAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchView:Landroidx/appcompat/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a8e5da"

    const-wide/32 v2, -0x61a51e6e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x32t
        0x4dt
        0x2t
        0x52t
        0x1t
        0x12t
        0x15t
        0x51t
        0xat
        0x5bt
        0x17t
        0x20t
        0x5t
        0x59t
        0x15t
        0x41t
        0x1t
        0x13t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/appcompat/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    iput v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    iput-object p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iput-object p3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    iput-object p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    iput-object p4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->textColorSearchUrl:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    :cond_0
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v6
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v4, "e3cc7c"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "13b8ff"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2ct
        0x5dt
        0x15t
        0x2t
        0x5bt
        0xat
        0x1t
        0x13t
        0xat
        0x0t
        0x58t
        0xdt
        0x45t
        0x41t
        0x6t
        0x10t
        0x58t
        0x16t
        0x17t
        0x50t
        0x6t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x11t
        0x55t
        0xdt
        0x4at
        0x46t
    .end array-data
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultIcon1()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "55e811"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "aae811"

    const-wide v6, 0x41bc1ab9ea000000L    # 4.71513578E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v9, [B

    fill-array-data v3, :array_2

    const-string v4, "0d7ad4"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "2621d0"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :try_start_4
    invoke-static {v2, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1e

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "c25b2a"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_1
    :try_start_8
    throw v0

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1e

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v5, "9a7533"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "3fa041"

    const-wide v6, -0x3e226b0c4ac00000L    # -1.985203925E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    :array_0
    .array-data 1
        0x54t
        0x5bt
        0x1t
        0x4at
        0x5et
        0x58t
        0x51t
        0x1bt
        0x17t
        0x5dt
        0x42t
        0x5et
        0x40t
        0x47t
        0x6t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x33t
        0x4t
        0x16t
        0x57t
        0x44t
        0x43t
        0x2t
        0x4t
        0x45t
        0x5ct
        0x5et
        0x54t
        0x12t
        0x41t
        0xbt
        0x57t
        0x45t
        0x11t
        0x4t
        0x19t
        0xct
        0x4bt
        0x45t
        0xbt
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x79t
        0x7t
        0x58t
        0xft
        0x44t
        0x5at
        0x5ft
        0x10t
        0x17t
        0x7t
        0xbt
        0x41t
        0x5et
        0x0t
        0xdt
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x1et
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x26t
        0x40t
        0x47t
        0xdt
        0x40t
        0x41t
        0x0t
        0x5et
        0x5at
        0x11t
        0x5bt
        0xft
        0x4t
        0x12t
        0x5ct
        0x1t
        0x5dt
        0xft
        0x43t
        0x41t
        0x41t
        0x10t
        0x57t
        0x0t
        0xet
        0x12t
        0x53t
        0xdt
        0x40t
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7ct
        0x13t
        0x45t
        0x5at
        0x41t
        0x13t
        0x5at
        0xdt
        0x58t
        0x46t
        0x5at
        0x5dt
        0x5et
        0x41t
        0x5et
        0x56t
        0x5ct
        0x5dt
        0x19t
        0x12t
        0x43t
        0x47t
        0x56t
        0x52t
        0x54t
        0x41t
        0x51t
        0x5at
        0x41t
        0x13t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x75t
        0x7t
        0x8t
        0x5ct
        0x51t
        0x55t
        0x13t
        0x12t
        0xet
        0x10t
        0x5bt
        0x41t
        0x56t
        0x8t
        0x41t
    .end array-data
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v7, [B

    const/4 v2, 0x7

    aput-byte v2, v0, v6

    const-string v2, "7feca8"

    invoke-static {v0, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "1181b6"

    const v5, 0x4dd7eee3    # 4.5284464E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput-byte v5, v3, v4

    const-string v4, "446656"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "d7385a"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x50t
        0x5ft
        0x5ct
        0x43t
        0xdt
        0x5ft
        0x55t
        0x1ft
        0x4at
        0x54t
        0x11t
        0x59t
        0x44t
        0x43t
        0x5bt
        0x54t
        0x58t
        0x19t
        0x1et
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0x54t
        0x5ct
        0x56t
        0x15t
        0x13t
        0x1t
        0x44t
        0x5ct
        0x4dt
        0x47t
        0x2t
        0x1t
        0x17t
        0x5dt
        0x57t
        0x41t
        0x41t
        0x2t
        0x58t
        0x46t
        0x56t
        0x51t
        0x5bt
        0x44t
    .end array-data
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDefaultIcon1()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x51

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "f18e47"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x13t
        0x5ft
        0x5dt
        0x1dt
        0x44t
        0x52t
        0x5t
        0x45t
        0x5dt
        0x1t
        0x14t
        0x52t
        0x14t
        0x43t
        0x57t
        0x17t
        0x14t
        0x45t
        0x3t
        0x45t
        0x4at
        0xct
        0x51t
        0x41t
        0xft
        0x5ft
        0x5ft
        0x45t
        0x42t
        0x56t
        0xat
        0x58t
        0x5ct
        0x45t
        0x57t
        0x58t
        0xat
        0x44t
        0x55t
        0xbt
        0x14t
        0x51t
        0x14t
        0x5et
        0x55t
        0x45t
        0x57t
        0x42t
        0x14t
        0x42t
        0x57t
        0x17t
        0x18t
        0x17t
        0x2t
        0x58t
        0x5ct
        0x45t
        0x40t
        0x5ft
        0x3t
        0x11t
        0x4at
        0x0t
        0x59t
        0x58t
        0x12t
        0x54t
        0x18t
        0x15t
        0x46t
        0x58t
        0x5t
        0x54t
        0x4bt
        0x16t
        0x14t
        0x53t
        0xft
        0x54t
        0x7t
    .end array-data
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3b54f8"

    const v3, -0x310c57fb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x5at
        0xct
        0x6at
        0x44t
        0x14t
        0x57t
        0x54t
        0x10t
        0x50t
        0x47t
        0x15t
    .end array-data
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    iget v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_0
    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    :goto_2
    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v3, v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3, v4, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_4
    iget v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq v3, v7, :cond_5

    if-ne v3, v6, :cond_8

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    :cond_5
    iget-object v1, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v2, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    :cond_6
    iget v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    :cond_8
    iget-object v0, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ba0886"

    const/16 v3, -0x245b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "e76931"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "bb5db5"

    const-wide/32 v2, -0x4c4b16d0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "62479e"

    const v2, 0x4e9bf680

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "5d383c"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "e62884"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "a859aa"

    const/16 v2, 0x4b0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "b93a45"

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x36t
        0x13t
        0x59t
        0x5dt
        0x5ct
        0x16t
        0x16t
        0xet
        0x10t
        0x5bt
        0x50t
        0x57t
        0xct
        0x6t
        0x55t
        0x18t
        0x5bt
        0x43t
        0x10t
        0x12t
        0x5ft
        0x4at
        0x18t
        0x57t
        0x4t
        0x15t
        0x55t
        0x4at
        0x18t
        0x57t
        0x6t
        0x0t
        0x40t
        0x4ct
        0x5dt
        0x44t
        0x42t
        0x16t
        0x51t
        0x4bt
        0x18t
        0x55t
        0xet
        0xet
        0x43t
        0x5dt
        0x5ct
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x42t
        0x51t
        0x5et
        0x56t
        0x42t
        0x11t
        0x68t
        0x42t
        0x5ct
        0x4bt
        0x45t
        0x3at
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x17t
        0x52t
        0x3t
        0x7t
        0x46t
        0x16t
        0x3dt
        0x41t
        0x1t
        0x1at
        0x41t
        0x3dt
        0x50t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x45t
        0x47t
        0x53t
        0x50t
        0x5ct
        0x16t
        0x42t
        0x6dt
        0x40t
        0x52t
        0x41t
        0x11t
        0x69t
        0x0t
        0x6bt
        0x42t
        0x4bt
        0x9t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x46t
        0x11t
        0x54t
        0x5ft
        0x56t
        0x10t
        0x41t
        0x3bt
        0x5at
        0x5bt
        0x5ct
        0xdt
        0x6at
        0x55t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x16t
        0x43t
        0x55t
        0x5ft
        0x5dt
        0x47t
        0x11t
        0x69t
        0x5bt
        0x5bt
        0x57t
        0x5at
        0x3at
        0x4t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x12t
        0x4dt
        0x52t
        0x5et
        0x4t
        0x12t
        0x15t
        0x67t
        0x53t
        0x55t
        0x0t
        0x6t
        0x12t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x7t
        0x4bt
        0x41t
        0xet
        0x46t
        0x15t
        0x1t
        0x51t
        0x52t
        0xft
        0x53t
        0x5ct
        0xct
        0x5et
        0x13t
        0x2t
        0x41t
        0x47t
        0x11t
        0x56t
        0x41t
        0x41t
        0x55t
        0x5bt
        0x6t
        0x19t
        0x50t
        0x0t
        0x57t
        0x5dt
        0xbt
        0x57t
        0x54t
        0x41t
        0x57t
        0x5at
        0xet
        0x4ct
        0x5et
        0xft
        0x47t
    .end array-data
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "427a56"

    const/16 v3, 0x694c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "104f2f"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "675895"

    const-wide v4, 0x41ca2d3dc9800000L    # 8.78345107E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x47t
        0x47t
        0x50t
        0x6t
        0x50t
        0x45t
        0x40t
        0x6dt
        0x5et
        0xft
        0x41t
        0x53t
        0x5at
        0x46t
        0x68t
        0x10t
        0x40t
        0x53t
        0x46t
        0x4bt
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x45t
        0x53t
        0x1t
        0x57t
        0x15t
        0x45t
        0x6ft
        0x5dt
        0x8t
        0x46t
        0x3t
        0x5ft
        0x44t
        0x6bt
        0x2t
        0x53t
        0x12t
        0x50t
    .end array-data

    :array_2
    .array-data 1
        0x45t
        0x42t
        0x52t
        0x5ft
        0x5ct
        0x46t
        0x42t
        0x68t
        0x41t
        0x5dt
        0x41t
        0x41t
        0x69t
        0x6t
    .end array-data
.end method

.method getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4aee85"

    const/16 v3, -0x4ea9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ea91b4"

    const-wide v4, -0x3e38ffb650800000L    # -7.71789663E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ee3aea"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "454f66"

    const v3, -0x316b9789

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "f802c1"

    const-wide v4, 0x41d47b2477000000L    # 1.374458332E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "8189bb"

    const v3, -0x3105cc2a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x67t
        0x8t
        0xbt
        0x2t
        0x54t
        0x50t
        0x14t
        0x11t
        0x4t
        0x11t
        0x50t
        0x15t
        0x47t
        0x4t
        0x2t
        0x8t
        0x5dt
        0x5bt
        0x40t
        0x41t
        0xct
        0x16t
        0x18t
        0x5bt
        0x5bt
        0x15t
        0x45t
        0x4t
        0x18t
        0x47t
        0x51t
        0x12t
        0xat
        0x10t
        0x4at
        0x56t
        0x51t
        0x41t
        0x2ct
        0x21t
        0x2t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2bt
        0xet
        0x19t
        0x43t
        0x7t
        0x47t
        0xat
        0x14t
        0x4bt
        0x52t
        0x7t
        0x14t
        0x3t
        0xet
        0x4ct
        0x5ft
        0x6t
        0x14t
        0x3t
        0xet
        0x4bt
        0xbt
        0x42t
    .end array-data

    :array_2
    .array-data 1
        0x28t
        0xat
        0x41t
        0x4t
        0x45t
        0x15t
        0xdt
        0x4t
        0x5dt
        0x41t
        0x11t
        0x16t
        0xat
        0x45t
        0x43t
        0x0t
        0x11t
        0x9t
        0x45t
        0x16t
        0x56t
        0x6t
        0x8t
        0x4t
        0xbt
        0x11t
        0x40t
        0x5bt
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7at
        0x5at
        0x14t
        0x16t
        0x57t
        0x42t
        0x5ct
        0xft
        0x14t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x28t
        0x57t
        0x10t
        0x42t
        0x2t
        0x52t
        0xdt
        0x59t
        0x57t
        0x57t
        0x43t
        0x57t
        0x9t
        0x4dt
        0x5et
        0x56t
        0x43t
        0x57t
        0x9t
        0x4at
        0x10t
        0x53t
        0x16t
        0x45t
        0xet
        0x57t
        0x42t
        0x5bt
        0x17t
        0x48t
        0x5ct
        0x18t
    .end array-data

    :array_5
    .array-data 1
        0x76t
        0x5et
        0x18t
        0x58t
        0x17t
        0x16t
        0x50t
        0x5et
        0x4at
        0x50t
        0x16t
        0x1bt
        0x2t
        0x11t
    .end array-data
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    sget-object v0, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "9aa838"

    const v4, 0x4e8281bd

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    iget-object v0, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x6at
        0x4t
        0x0t
        0x4at
        0x50t
        0x50t
        0x19t
        0x12t
        0x14t
        0x5ft
        0x54t
        0x5dt
        0x4at
        0x15t
        0x8t
        0x57t
        0x5dt
        0x4bt
        0x19t
        0x2t
        0x14t
        0x4at
        0x40t
        0x57t
        0x4bt
        0x41t
        0x15t
        0x50t
        0x41t
        0x5dt
        0x4et
        0x41t
        0x4t
        0x40t
        0x50t
        0x5dt
        0x49t
        0x15t
        0x8t
        0x57t
        0x5dt
        0x16t
    .end array-data
.end method

.method public getQueryRefinement()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "5cf6b2"

    const/16 v5, 0x87a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "869e95"

    invoke-static {v1, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    :goto_1
    if-lez p3, :cond_3

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v5, "9bdd6d"

    const-wide v6, 0x41d7ce3729400000L    # 1.597562021E9

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v4, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x56t
        0xct
        0x8t
        0x42t
        0x7t
        0x5ct
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x4bt
        0x53t
        0x58t
        0x17t
        0x5at
        0x5dt
        0x67t
        0x45t
        0x4ct
        0x2t
        0x5et
        0x50t
        0x4bt
        0x42t
        0x66t
        0x14t
        0x4ct
        0x50t
        0x4at
        0x4ft
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0xbt
        0x9t
        0xdt
        0x42t
    .end array-data
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    sget-object v0, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "5bffdc"

    const-wide/32 v4, 0x59fc5134

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    iget-object v0, v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x66t
        0x7t
        0x7t
        0x14t
        0x7t
        0xbt
        0x15t
        0x11t
        0x13t
        0x1t
        0x3t
        0x6t
        0x46t
        0x16t
        0xft
        0x9t
        0xat
        0x10t
        0x15t
        0x1t
        0x13t
        0x14t
        0x17t
        0xct
        0x47t
        0x42t
        0x12t
        0xet
        0x16t
        0x6t
        0x42t
        0x42t
        0x3t
        0x1et
        0x7t
        0x6t
        0x45t
        0x16t
        0xft
        0x9t
        0xat
        0x4dt
    .end array-data
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Landroidx/appcompat/R$id;->edit_query:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    invoke-super {p0}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v3, 0x32

    invoke-virtual {p0, v2, v0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/appcompat/widget/SuggestionsAdapter;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x2c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "9064ed"

    const v5, 0x4d1bf968    # 1.6355085E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x6at
        0x55t
        0x57t
        0x46t
        0x6t
        0xct
        0x19t
        0x43t
        0x43t
        0x53t
        0x2t
        0x1t
        0x4at
        0x44t
        0x5ft
        0x5bt
        0xbt
        0x17t
        0x19t
        0x41t
        0x43t
        0x51t
        0x17t
        0x1dt
        0x19t
        0x44t
        0x5et
        0x46t
        0x0t
        0x13t
        0x19t
        0x51t
        0x58t
        0x14t
        0x0t
        0x1ct
        0x5at
        0x55t
        0x46t
        0x40t
        0xct
        0xbt
        0x57t
        0x1et
    .end array-data
.end method

.method public setQueryRefinement(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    return-void
.end method
