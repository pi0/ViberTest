.class Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private dstBottomScale:F

.field private dstHeight:I

.field private dstLeftScale:F

.field private dstRect:Landroid/graphics/Rect;

.field private dstRightScale:F

.field private dstTopScale:F

.field private dstWidth:I

.field private srcRect:Landroid/graphics/Rect;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    .line 67
    iput v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstHeight:I

    .line 68
    iput v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstWidth:I

    .line 69
    iput v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstTopScale:F

    .line 70
    iput v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstBottomScale:F

    .line 71
    iput v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstLeftScale:F

    .line 72
    iput v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRightScale:F

    .line 76
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 77
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-boolean v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->USE_LIVE_CAMERA_PREVIEW:Z

    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->getWrapper(Landroid/view/SurfaceHolder;)Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 83
    :cond_1
    iput-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->getWrapper(Landroid/view/SurfaceHolder;)Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->saveBitmapToJPEG(II)V

    return-void
.end method

.method private changeDestRect(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRightScale:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 93
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstBottomScale:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 94
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    sget-object v0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private saveBitmapToJPEG(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 225
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 226
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 229
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v2, "/sdcard/render_%d.jpg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 232
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 233
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public CreateBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 150
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    .line 151
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 152
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 153
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 154
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CreateBitmap: request for wXh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public CreateByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 170
    :cond_0
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    .line 171
    mul-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 172
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 174
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 175
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 176
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CreateByteBuffer: request for wXh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->log(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string/jumbo v1, "*WEBRTC-JAVASFRENDER*"

    const-string/jumbo v2, "Failed to CreateByteBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    iput-object v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    .line 182
    iput-object v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public DrawBitmap()V
    .locals 5

    .prologue
    .line 206
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 213
    const/high16 v2, -0x3d4c

    iget-object v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 214
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 215
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 216
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public DrawByteBuffer()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 201
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 202
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->DrawBitmap()V

    goto :goto_0
.end method

.method public SetCoordinates(FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iput p1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstLeftScale:F

    .line 191
    iput p2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstTopScale:F

    .line 192
    iput p3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRightScale:F

    .line 193
    iput p4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstBottomScale:F

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set coordinates: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->log(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p3, p4}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->changeDestRect(II)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surfaceChanged in_width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in_height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " srcRect.left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " srcRect.top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " srcRect.right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " srcRect.bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dstRect.left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dstRect.top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dstRect.right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dstRect.bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->log(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->changeDestRect(II)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surfaceCreated dst.left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dst.top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dst.right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dst.bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcRect.left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcRect.top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcRect.right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcRect.bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dstRect.left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dstRect.top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dstRect.right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dstRect.bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->log(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 133
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string/jumbo v0, "surfaceDestroyed"

    invoke-static {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->log(Ljava/lang/String;)V

    .line 137
    iput-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->bitmap:Landroid/graphics/Bitmap;

    .line 138
    iput-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 139
    return-void
.end method
