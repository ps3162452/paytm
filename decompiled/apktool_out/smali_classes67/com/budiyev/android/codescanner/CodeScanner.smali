.class public final Lcom/budiyev/android/codescanner/CodeScanner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;,
        Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;,
        Lcom/budiyev/android/codescanner/CodeScanner$FinishInitializationTask;,
        Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;,
        Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;,
        Lcom/budiyev/android/codescanner/CodeScanner$SafeAutoFocusCallback;,
        Lcom/budiyev/android/codescanner/CodeScanner$SafeAutoFocusTask;,
        Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;,
        Lcom/budiyev/android/codescanner/CodeScanner$StopPreviewTask;,
        Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;,
        Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;
    }
.end annotation


# static fields
.field public static final ALL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_BACK:I = -0x1

.field public static final CAMERA_FRONT:I = -0x2

.field private static final DEFAULT_AUTO_FOCUS_ENABLED:Z = true

.field private static final DEFAULT_AUTO_FOCUS_MODE:Lcom/budiyev/android/codescanner/AutoFocusMode;

.field private static final DEFAULT_FLASH_ENABLED:Z = false

.field private static final DEFAULT_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SAFE_AUTO_FOCUS_INTERVAL:J = 0x7d0L

.field private static final DEFAULT_SCAN_MODE:Lcom/budiyev/android/codescanner/ScanMode;

.field private static final DEFAULT_TOUCH_FOCUS_ENABLED:Z = true

.field public static final ONE_DIMENSIONAL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAFE_AUTO_FOCUS_ATTEMPTS_THRESHOLD:I = 0x2

.field public static final TWO_DIMENSIONAL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mAutoFocusEnabled:Z

.field private volatile mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

.field private volatile mCameraId:I

.field private final mContext:Landroid/content/Context;

.field private volatile mDecodeCallback:Lcom/budiyev/android/codescanner/DecodeCallback;

.field private final mDecoderStateListener:Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;

.field private volatile mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

.field private volatile mErrorCallback:Lcom/budiyev/android/codescanner/ErrorCallback;

.field private final mExceptionHandler:Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;

.field private volatile mFlashEnabled:Z

.field private volatile mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialization:Z

.field private mInitializationRequested:Z

.field private final mInitializeLock:Ljava/lang/Object;

.field private volatile mInitialized:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPreviewActive:Z

.field private final mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mSafeAutoFocusAttemptsCount:I

.field private final mSafeAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private volatile mSafeAutoFocusInterval:J

.field private final mSafeAutoFocusTask:Ljava/lang/Runnable;

.field private mSafeAutoFocusTaskScheduled:Z

.field private mSafeAutoFocusing:Z

.field private volatile mScanMode:Lcom/budiyev/android/codescanner/ScanMode;

.field private final mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

.field private final mStopPreviewTask:Ljava/lang/Runnable;

.field private volatile mStoppingPreview:Z

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mTouchFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mTouchFocusEnabled:Z

.field private mTouchFocusing:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private volatile mZoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/zxing/BarcodeFormat;->values()[Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->ALL_FORMATS:Ljava/util/List;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/budiyev/android/codescanner/CodeScanner;->ONE_DIMENSIONAL_FORMATS:Ljava/util/List;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/budiyev/android/codescanner/CodeScanner;->TWO_DIMENSIONAL_FORMATS:Ljava/util/List;

    sput-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->DEFAULT_FORMATS:Ljava/util/List;

    sget-object v0, Lcom/budiyev/android/codescanner/ScanMode;->SINGLE:Lcom/budiyev/android/codescanner/ScanMode;

    sput-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->DEFAULT_SCAN_MODE:Lcom/budiyev/android/codescanner/ScanMode;

    sget-object v0, Lcom/budiyev/android/codescanner/AutoFocusMode;->SAFE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    sput-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->DEFAULT_AUTO_FOCUS_MODE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/budiyev/android/codescanner/CodeScannerView;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/budiyev/android/codescanner/CodeScannerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    sget-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->DEFAULT_FORMATS:Ljava/util/List;

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFormats:Ljava/util/List;

    sget-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->DEFAULT_SCAN_MODE:Lcom/budiyev/android/codescanner/ScanMode;

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScanMode:Lcom/budiyev/android/codescanner/ScanMode;

    sget-object v0, Lcom/budiyev/android/codescanner/CodeScanner;->DEFAULT_AUTO_FOCUS_MODE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

    iput-object v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecodeCallback:Lcom/budiyev/android/codescanner/DecodeCallback;

    iput-object v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mErrorCallback:Lcom/budiyev/android/codescanner/ErrorCallback;

    iput-object v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialization:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStoppingPreview:Z

    iput-boolean v4, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusInterval:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    iput v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mZoom:I

    iput-boolean v4, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusEnabled:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusing:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusTaskScheduled:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializationRequested:Z

    iput v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    iput v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mViewWidth:I

    iput v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mViewHeight:I

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {p2}, Lcom/budiyev/android/codescanner/CodeScannerView;->getPreviewView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$SafeAutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$SafeAutoFocusCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$SafeAutoFocusTask;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$SafeAutoFocusTask;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$StopPreviewTask;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$StopPreviewTask;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStopPreviewTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderStateListener:Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mExceptionHandler:Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;

    invoke-virtual {p2, p0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setCodeScanner(Lcom/budiyev/android/codescanner/CodeScanner;)V

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;

    invoke-direct {v0, p0, v3}, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    invoke-virtual {p2, v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->setSizeListener(Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/budiyev/android/codescanner/CodeScannerView;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/budiyev/android/codescanner/CodeScannerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/budiyev/android/codescanner/CodeScanner;-><init>(Landroid/content/Context;Lcom/budiyev/android/codescanner/CodeScannerView;)V

    iput p3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    return-void
.end method

.method static synthetic access$1000(Lcom/budiyev/android/codescanner/CodeScanner;)I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mViewWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/budiyev/android/codescanner/CodeScanner;)I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/budiyev/android/codescanner/CodeScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/budiyev/android/codescanner/CodeScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/budiyev/android/codescanner/CodeScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializationRequested:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/budiyev/android/codescanner/CodeScanner;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/budiyev/android/codescanner/CodeScanner;->initialize(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/budiyev/android/codescanner/CodeScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStoppingPreview:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStoppingPreview:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/ScanMode;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScanMode:Lcom/budiyev/android/codescanner/ScanMode;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/DecoderWrapper;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/DecoderWrapper;)Lcom/budiyev/android/codescanner/DecoderWrapper;
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScannerView;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->startPreviewInternalSafe()V

    return-void
.end method

.method static synthetic access$2100(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->stopPreviewInternalSafe()V

    return-void
.end method

.method static synthetic access$2200(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStopPreviewTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/budiyev/android/codescanner/CodeScanner;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/budiyev/android/codescanner/CodeScanner;)I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    return v0
.end method

.method static synthetic access$2402(Lcom/budiyev/android/codescanner/CodeScanner;I)I
    .locals 0

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    return p1
.end method

.method static synthetic access$2500(Lcom/budiyev/android/codescanner/CodeScanner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/budiyev/android/codescanner/CodeScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/AutoFocusMode;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/budiyev/android/codescanner/CodeScanner;)I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mZoom:I

    return v0
.end method

.method static synthetic access$3000(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderStateListener:Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mExceptionHandler:Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/DecodeCallback;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecodeCallback:Lcom/budiyev/android/codescanner/DecodeCallback;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialization:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->releaseResourcesInternal()V

    return-void
.end method

.method static synthetic access$3700(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/ErrorCallback;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mErrorCallback:Lcom/budiyev/android/codescanner/ErrorCallback;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusing:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusTaskScheduled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->safeAutoFocusCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/CodeScannerView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->initialize(II)V

    return-void
.end method

.method private initialize(II)V
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mViewWidth:I

    iput p2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mViewHeight:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialization:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializationRequested:Z

    new-instance v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;II)V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mExceptionHandler:Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->start()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializationRequested:Z

    goto :goto_0
.end method

.method private releaseResourcesInternal()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialization:Z

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStoppingPreview:Z

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->release()V

    :cond_0
    return-void
.end method

.method private safeAutoFocusCamera()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    :goto_1
    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->scheduleSafeAutoFocusTask()V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    goto :goto_1
.end method

.method private scheduleSafeAutoFocusTask()V
    .locals 4

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusTaskScheduled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusTaskScheduled:Z

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setAutoFocusEnabledInternal(Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusing:Z

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

    if-eqz p1, :cond_2

    invoke-static {v2, v3}, Lcom/budiyev/android/codescanner/Utils;->setAutoFocusMode(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/AutoFocusMode;)V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v4}, Lcom/budiyev/android/codescanner/CodeScannerView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v2, v0, v4}, Lcom/budiyev/android/codescanner/Utils;->configureDefaultFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/DecoderWrapper;Lcom/budiyev/android/codescanner/Rect;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    sget-object v0, Lcom/budiyev/android/codescanner/AutoFocusMode;->SAFE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    if-ne v3, v0, :cond_1

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->scheduleSafeAutoFocusTask()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v2}, Lcom/budiyev/android/codescanner/Utils;->disableAutoFocus(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setFlashEnabledInternal(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "25b944"

    const-wide/32 v4, -0x64fbaa66

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/budiyev/android/codescanner/Utils;->setFlashMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6f454e"

    const-wide v4, 0x41c8a4bed5000000L    # 8.26899882E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/budiyev/android/codescanner/Utils;->setFlashMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :array_0
    .array-data 1
        0x46t
        0x5at
        0x10t
        0x5at
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x59t
        0x0t
        0x52t
    .end array-data
.end method

.method private startPreviewInternal(Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isFlashSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/budiyev/android/codescanner/CodeScanner;->setFlashEnabledInternal(Z)V

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStoppingPreview:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isAutoFocusSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v2}, Lcom/budiyev/android/codescanner/CodeScannerView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/budiyev/android/codescanner/Utils;->configureDefaultFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/DecoderWrapper;Lcom/budiyev/android/codescanner/Rect;)V

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

    sget-object v1, Lcom/budiyev/android/codescanner/AutoFocusMode;->SAFE:Lcom/budiyev/android/codescanner/AutoFocusMode;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->scheduleSafeAutoFocusTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startPreviewInternalSafe()V
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->startPreviewInternal(Z)V

    :cond_0
    return-void
.end method

.method private stopPreviewInternal(Z)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "e996d8"

    const-wide/32 v4, 0x71b6a15d

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/budiyev/android/codescanner/Utils;->setFlashMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mStoppingPreview:Z

    iput-boolean v6, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    iput-boolean v6, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusing:Z

    iput v6, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusAttemptsCount:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xat
        0x5ft
        0x5ft
    .end array-data
.end method

.method private stopPreviewInternalSafe()V
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->stopPreviewInternal(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoFocusMode()Lcom/budiyev/android/codescanner/AutoFocusMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

    return-object v0
.end method

.method public getCamera()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    return v0
.end method

.method public getDecodeCallback()Lcom/budiyev/android/codescanner/DecodeCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecodeCallback:Lcom/budiyev/android/codescanner/DecodeCallback;

    return-object v0
.end method

.method public getErrorCallback()Lcom/budiyev/android/codescanner/ErrorCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mErrorCallback:Lcom/budiyev/android/codescanner/ErrorCallback;

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method public getScanMode()Lcom/budiyev/android/codescanner/ScanMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScanMode:Lcom/budiyev/android/codescanner/ScanMode;

    return-object v0
.end method

.method public getZoom()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mZoom:I

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    return v0
.end method

.method isAutoFocusSupportedOrUnknown()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    return v0
.end method

.method isFlashSupportedOrUnknown()Z
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    return v0
.end method

.method public isTouchFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusEnabled:Z

    return v0
.end method

.method performTouchFocus(Lcom/budiyev/android/codescanner/Rect;)V
    .locals 8

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->setAutoFocusEnabled(Z)V

    iget-object v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getImageSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v1

    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getDisplayOrientation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_1

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    :cond_1
    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getPreviewSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v5

    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getViewSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v6

    invoke-static {v0, v1, p1, v5, v6}, Lcom/budiyev/android/codescanner/Utils;->getImageFrameRect(IILcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;)Lcom/budiyev/android/codescanner/Rect;

    move-result-object v5

    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v6, v5, v0, v1, v4}, Lcom/budiyev/android/codescanner/Utils;->configureFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/Rect;III)V

    invoke-static {v6}, Lcom/budiyev/android/codescanner/Utils;->configureFocusModeForTouch(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v3, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->stopPreview()V

    :cond_0
    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->releaseResourcesInternal()V

    :cond_1
    return-void
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v2, p1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setAutoFocusEnabled(Z)V

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    iget-boolean v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner;->setAutoFocusEnabledInternal(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoFocusInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSafeAutoFocusInterval:J

    return-void
.end method

.method public setAutoFocusMode(Lcom/budiyev/android/codescanner/AutoFocusMode;)V
    .locals 3
    .param p1    # Lcom/budiyev/android/codescanner/AutoFocusMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/budiyev/android/codescanner/AutoFocusMode;

    move-object v1, v0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusMode:Lcom/budiyev/android/codescanner/AutoFocusMode;

    iget-boolean v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mAutoFocusEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->setAutoFocusEnabledInternal(Z)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCamera(I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mCameraId:I

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->releaseResources()V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->initialize()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDecodeCallback(Lcom/budiyev/android/codescanner/DecodeCallback;)V
    .locals 2
    .param p1    # Lcom/budiyev/android/codescanner/DecodeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecodeCallback:Lcom/budiyev/android/codescanner/DecodeCallback;

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getDecoder()Lcom/budiyev/android/codescanner/Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/budiyev/android/codescanner/Decoder;->setCallback(Lcom/budiyev/android/codescanner/DecodeCallback;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setErrorCallback(Lcom/budiyev/android/codescanner/ErrorCallback;)V
    .locals 0
    .param p1    # Lcom/budiyev/android/codescanner/ErrorCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mErrorCallback:Lcom/budiyev/android/codescanner/ErrorCallback;

    return-void
.end method

.method public setFlashEnabled(Z)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFlashEnabled:Z

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScannerView:Lcom/budiyev/android/codescanner/CodeScannerView;

    invoke-virtual {v2, p1}, Lcom/budiyev/android/codescanner/CodeScannerView;->setFlashEnabled(Z)V

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    iget-boolean v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/budiyev/android/codescanner/DecoderWrapper;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner;->setFlashEnabledInternal(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mFormats:Ljava/util/List;

    iget-boolean v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getDecoder()Lcom/budiyev/android/codescanner/Decoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/budiyev/android/codescanner/Decoder;->setFormats(Ljava/util/List;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScanMode(Lcom/budiyev/android/codescanner/ScanMode;)V
    .locals 1
    .param p1    # Lcom/budiyev/android/codescanner/ScanMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/budiyev/android/codescanner/ScanMode;

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mScanMode:Lcom/budiyev/android/codescanner/ScanMode;

    return-void
.end method

.method public setTouchFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mTouchFocusEnabled:Z

    return-void
.end method

.method public setZoom(I)V
    .locals 6

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mZoom:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mZoom:I

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mDecoderWrapper:Lcom/budiyev/android/codescanner/DecoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/budiyev/android/codescanner/Utils;->setZoom(Landroid/hardware/Camera$Parameters;I)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mZoom:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "975baa"

    const-wide/32 v4, 0xd1ceca4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x58t
        0x5at
        0xft
        0x41t
        0x17t
        0x58t
        0x5bt
        0x40t
        0x7t
        0x41t
        0xct
        0x4ct
        0x44t
        0x41t
        0x42t
        0x3t
        0x4t
        0x19t
        0x50t
        0x47t
        0x7t
        0x0t
        0x15t
        0x5ct
        0x45t
        0x15t
        0x16t
        0x9t
        0x0t
        0x57t
        0x17t
        0x5at
        0x10t
        0x41t
        0x4t
        0x48t
        0x42t
        0x54t
        0xet
        0x41t
        0x15t
        0x56t
        0x17t
        0x4ft
        0x7t
        0x13t
        0xet
    .end array-data
.end method

.method public startPreview()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialization:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner;->initialize()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->startPreviewInternal(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopPreview()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mPreviewActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->stopPreviewInternal(Z)V

    :cond_0
    return-void
.end method
