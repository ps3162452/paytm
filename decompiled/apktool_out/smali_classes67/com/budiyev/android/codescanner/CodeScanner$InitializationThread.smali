.class final Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitializationThread"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I

.field final this$0:Lcom/budiyev/android/codescanner/CodeScanner;


# direct methods
.method public constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;II)V
    .locals 4

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e96b1b"

    const-wide/32 v2, 0x4b3db4a6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mWidth:I

    iput p3, p0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mHeight:I

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x4at
        0x1bt
        0xbt
        0x5ft
        0xbt
        0x11t
    .end array-data
.end method

.method private initialize()V
    .locals 19

    new-instance v11, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v11}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2400(Lcom/budiyev/android/codescanner/CodeScanner;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_6

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_9

    invoke-static {v3, v11}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v11, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_8

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2, v3}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2402(Lcom/budiyev/android/codescanner/CodeScanner;I)I

    :goto_2
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2500(Lcom/budiyev/android/codescanner/CodeScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/budiyev/android/codescanner/Utils;->getDisplayOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;)I

    move-result v8

    invoke-static {v8}, Lcom/budiyev/android/codescanner/Utils;->isPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mHeight:I

    move v4, v3

    :goto_3
    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mWidth:I

    :goto_4
    invoke-static {v2, v4, v3}, Lcom/budiyev/android/codescanner/Utils;->findSuitableImageSize(Landroid/hardware/Camera$Parameters;II)Lcom/budiyev/android/codescanner/Point;

    move-result-object v13

    invoke-virtual {v13}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v6

    invoke-virtual {v13}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    if-eqz v5, :cond_c

    move v4, v7

    :goto_5
    if-eqz v5, :cond_d

    move v3, v6

    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mHeight:I

    invoke-static {v4, v3, v5, v9}, Lcom/budiyev/android/codescanner/Utils;->getPreviewSize(IIII)Lcom/budiyev/android/codescanner/Point;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v9, "d6fe44"

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-static {v5, v9, v12, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x12

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v9, "0f5111"

    const-wide v14, 0x4197712830000000L    # 9.8322956E7

    invoke-static {v5, v9, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_1
    const/16 v17, 0x1

    :goto_7
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2602(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    :cond_2
    new-instance v5, Lcom/budiyev/android/codescanner/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mHeight:I

    invoke-direct {v5, v3, v9}, Lcom/budiyev/android/codescanner/Point;-><init>(II)V

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2600(Lcom/budiyev/android/codescanner/CodeScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2700(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/AutoFocusMode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/budiyev/android/codescanner/Utils;->setAutoFocusMode(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/AutoFocusMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1900(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScannerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/budiyev/android/codescanner/CodeScannerView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static/range {v2 .. v8}, Lcom/budiyev/android/codescanner/Utils;->configureDefaultFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;III)V

    :cond_3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "bfc42e"

    const-wide v14, -0x3e2f722144400000L    # -1.110932207E9

    invoke-static {v6, v7, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v18, 0x1

    :goto_8
    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2802(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v3}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2900(Lcom/budiyev/android/codescanner/CodeScanner;)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2, v3}, Lcom/budiyev/android/codescanner/Utils;->setZoom(Landroid/hardware/Camera$Parameters;I)V

    :cond_5
    invoke-static {v2}, Lcom/budiyev/android/codescanner/Utils;->configureFpsRange(Landroid/hardware/Camera$Parameters;)V

    invoke-static {v2}, Lcom/budiyev/android/codescanner/Utils;->configureSceneMode(Landroid/hardware/Camera$Parameters;)V

    invoke-static {v2}, Lcom/budiyev/android/codescanner/Utils;->configureVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v10, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v10, v8}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$900(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v12, Lcom/budiyev/android/codescanner/Decoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$3000(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v6}, Lcom/budiyev/android/codescanner/CodeScanner;->access$3100(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScanner$ExceptionHandler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v7}, Lcom/budiyev/android/codescanner/CodeScanner;->access$3200(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v9}, Lcom/budiyev/android/codescanner/CodeScanner;->access$3300(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/DecodeCallback;

    move-result-object v9

    invoke-direct {v12, v2, v6, v7, v9}, Lcom/budiyev/android/codescanner/Decoder;-><init>(Lcom/budiyev/android/codescanner/Decoder$StateListener;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/List;Lcom/budiyev/android/codescanner/DecodeCallback;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    new-instance v9, Lcom/budiyev/android/codescanner/DecoderWrapper;

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v8

    invoke-direct/range {v9 .. v18}, Lcom/budiyev/android/codescanner/DecoderWrapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;IZZ)V

    invoke-static {v2, v9}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1802(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/DecoderWrapper;)Lcom/budiyev/android/codescanner/DecoderWrapper;

    invoke-virtual {v12}, Lcom/budiyev/android/codescanner/Decoder;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/budiyev/android/codescanner/CodeScanner;->access$3402(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1302(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2300(Lcom/budiyev/android/codescanner/CodeScanner;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/budiyev/android/codescanner/CodeScanner$FinishInitializationTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/budiyev/android/codescanner/CodeScanner$FinishInitializationTask;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/CodeScanner$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v10

    invoke-static {v2, v11}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mWidth:I

    move v4, v3

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->mHeight:I

    goto/16 :goto_4

    :cond_c
    move v4, v6

    goto/16 :goto_5

    :cond_d
    move v3, v7

    goto/16 :goto_6

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_8

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_10
    new-instance v2, Lcom/budiyev/android/codescanner/CodeScannerException;

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "df2c08"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/budiyev/android/codescanner/CodeScannerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    new-instance v2, Lcom/budiyev/android/codescanner/CodeScannerException;

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "8eb22b"

    const-wide/32 v6, 0x398ef35e

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/budiyev/android/codescanner/CodeScannerException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x5t
        0x43t
        0x12t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x9t
        0x5bt
        0x45t
        0x58t
        0x5ft
        0x45t
        0x9t
        0x40t
        0x42t
        0x1ct
        0x41t
        0x59t
        0x5t
        0x41t
        0x44t
        0x43t
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x9t
        0x11t
        0x57t
        0x5at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x31t
        0x8t
        0x53t
        0x1t
        0x5ct
        0x5dt
        0x44t
        0x12t
        0x5dt
        0x43t
        0x53t
        0x57t
        0xat
        0x0t
        0x5bt
        0x4t
        0x45t
        0x4at
        0x1t
        0x46t
        0x51t
        0x2t
        0x5dt
        0x5dt
        0x16t
        0x7t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x6dt
        0xbt
        0x3t
        0x50t
        0x5et
        0x7t
        0x18t
        0x11t
        0xdt
        0x12t
        0x53t
        0x1t
        0x5bt
        0x0t
        0x11t
        0x41t
        0x12t
        0x1t
        0x59t
        0x8t
        0x7t
        0x40t
        0x53t
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/CodeScanner$InitializationThread;->initialize()V

    return-void
.end method
