.class final Lcom/budiyev/android/codescanner/DecodeTask;
.super Ljava/lang/Object;


# instance fields
.field private final mImage:[B

.field private final mImageSize:Lcom/budiyev/android/codescanner/Point;

.field private final mOrientation:I

.field private final mPreviewSize:Lcom/budiyev/android/codescanner/Point;

.field private final mReverseHorizontal:Z

.field private final mViewFrameRect:Lcom/budiyev/android/codescanner/Rect;

.field private final mViewSize:Lcom/budiyev/android/codescanner/Point;


# direct methods
.method public constructor <init>([BLcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Rect;IZ)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/budiyev/android/codescanner/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mImage:[B

    iput-object p2, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mImageSize:Lcom/budiyev/android/codescanner/Point;

    iput-object p3, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mPreviewSize:Lcom/budiyev/android/codescanner/Point;

    iput-object p4, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mViewSize:Lcom/budiyev/android/codescanner/Point;

    iput-object p5, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mViewFrameRect:Lcom/budiyev/android/codescanner/Rect;

    iput p6, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mOrientation:I

    iput-boolean p7, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mReverseHorizontal:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/MultiFormatReader;)Lcom/google/zxing/Result;
    .locals 9
    .param p1    # Lcom/google/zxing/MultiFormatReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ReaderException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mImageSize:Lcom/budiyev/android/codescanner/Point;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mImageSize:Lcom/budiyev/android/codescanner/Point;

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v3

    iget v2, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mOrientation:I

    iget-object v1, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mImage:[B

    invoke-static {v1, v0, v3, v2}, Lcom/budiyev/android/codescanner/Utils;->rotateYuv([BIII)[B

    move-result-object v1

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_2

    :cond_0
    move v2, v3

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mViewFrameRect:Lcom/budiyev/android/codescanner/Rect;

    iget-object v4, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mPreviewSize:Lcom/budiyev/android/codescanner/Point;

    iget-object v5, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mViewSize:Lcom/budiyev/android/codescanner/Point;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/budiyev/android/codescanner/Utils;->getImageFrameRect(IILcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;)Lcom/budiyev/android/codescanner/Rect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/budiyev/android/codescanner/Rect;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/budiyev/android/codescanner/Rect;->getHeight()I

    move-result v7

    if-lt v6, v8, :cond_1

    if-ge v7, v8, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-virtual {v5}, Lcom/budiyev/android/codescanner/Rect;->getLeft()I

    move-result v4

    invoke-virtual {v5}, Lcom/budiyev/android/codescanner/Rect;->getTop()I

    move-result v5

    iget-boolean v8, p0, Lcom/budiyev/android/codescanner/DecodeTask;->mReverseHorizontal:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    invoke-static {p1, v0}, Lcom/budiyev/android/codescanner/Utils;->decodeLuminanceSource(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_1
.end method
