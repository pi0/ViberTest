.class public final Lcom/viber/voip/qrcode/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/viber/voip/qrcode/d;

.field private d:Landroid/hardware/Camera;

.field private e:Lcom/viber/voip/qrcode/a;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private final m:Lcom/viber/voip/qrcode/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/qrcode/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/qrcode/e;->j:I

    .line 69
    iput-object p1, p0, Lcom/viber/voip/qrcode/e;->b:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/viber/voip/qrcode/d;

    invoke-direct {v0, p1}, Lcom/viber/voip/qrcode/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    .line 71
    new-instance v0, Lcom/viber/voip/qrcode/l;

    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-direct {v0, v1}, Lcom/viber/voip/qrcode/l;-><init>(Lcom/viber/voip/qrcode/d;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->m:Lcom/viber/voip/qrcode/l;

    .line 72
    return-void
.end method

.method private static a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    mul-int/lit8 v0, p0, 0x5

    div-int/lit8 v0, v0, 0x8

    .line 253
    if-ge v0, p1, :cond_0

    .line 259
    :goto_0
    return p1

    .line 256
    :cond_0
    if-le v0, p2, :cond_1

    move p1, p2

    .line 257
    goto :goto_0

    :cond_1
    move p1, v0

    .line 259
    goto :goto_0
.end method


# virtual methods
.method public a([BII)Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/e;->f()Landroid/graphics/Rect;

    move-result-object v1

    .line 347
    if-nez v1, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;

    move-result-object v0

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v8}, Lcom/viber/dexshared/ZXing$Factory;->newPlanarYUVLuminanceSource([BIIIIIIZ)Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/e;->h:Z

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/d;->b()Landroid/graphics/Point;

    move-result-object v0

    .line 316
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    .line 317
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 319
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    .line 320
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 322
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 323
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 324
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/viber/voip/qrcode/e;->f:Landroid/graphics/Rect;

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->g:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/viber/voip/qrcode/e;->k:I

    .line 329
    iput p2, p0, Lcom/viber/voip/qrcode/e;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/os/Handler;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    .line 217
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/qrcode/e;->i:Z

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->m:Lcom/viber/voip/qrcode/l;

    invoke-virtual {v1, p1, p2}, Lcom/viber/voip/qrcode/l;->a(Landroid/os/Handler;I)V

    .line 219
    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->m:Lcom/viber/voip/qrcode/l;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    .line 84
    if-nez v0, :cond_2

    .line 85
    iget v0, p0, Lcom/viber/voip/qrcode/e;->j:I

    if-ltz v0, :cond_0

    .line 86
    iget v0, p0, Lcom/viber/voip/qrcode/e;->j:I

    invoke-static {v0}, Lcom/viber/voip/qrcode/a/a;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 91
    :goto_0
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to open camera."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/viber/voip/qrcode/a/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    :cond_2
    move-object v1, v0

    .line 97
    iget v0, p0, Lcom/viber/voip/qrcode/e;->j:I

    if-ltz v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    iget v2, p0, Lcom/viber/voip/qrcode/e;->j:I

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/qrcode/d;->a(ILandroid/hardware/Camera;)V

    .line 105
    :goto_1
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 107
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/e;->h:Z

    if-nez v0, :cond_3

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/e;->h:Z

    .line 109
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/qrcode/d;->a(Landroid/hardware/Camera;)V

    .line 110
    iget v0, p0, Lcom/viber/voip/qrcode/e;->k:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/viber/voip/qrcode/e;->l:I

    if-lez v0, :cond_3

    .line 111
    iget v0, p0, Lcom/viber/voip/qrcode/e;->k:I

    iget v2, p0, Lcom/viber/voip/qrcode/e;->l:I

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/qrcode/e;->a(II)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/qrcode/e;->k:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/qrcode/e;->l:I

    .line 117
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 118
    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 120
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/viber/voip/qrcode/d;->a(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 102
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-static {}, Lcom/viber/voip/qrcode/a/a;->b()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/qrcode/d;->a(ILandroid/hardware/Camera;)V

    goto :goto_1

    .line 118
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v2

    .line 126
    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/qrcode/d;->a(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 132
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->f:Landroid/graphics/Rect;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->g:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    .line 164
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/qrcode/e;->i:Z

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/e;->i:Z

    .line 167
    new-instance v0, Lcom/viber/voip/qrcode/a;

    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/qrcode/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->e:Lcom/viber/voip/qrcode/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->e:Lcom/viber/voip/qrcode/a;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->e:Lcom/viber/voip/qrcode/a;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/a;->b()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/e;->e:Lcom/viber/voip/qrcode/a;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/qrcode/e;->i:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->m:Lcom/viber/voip/qrcode/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/qrcode/l;->a(Landroid/os/Handler;I)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_1
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->f:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->d:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 234
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-virtual {v1}, Lcom/viber/voip/qrcode/d;->b()Landroid/graphics/Point;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    .line 240
    iget v0, v1, Landroid/graphics/Point;->x:I

    const/16 v2, 0xf0

    const/16 v3, 0x4b0

    invoke-static {v0, v2, v3}, Lcom/viber/voip/qrcode/e;->a(III)I

    move-result v0

    .line 241
    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0xf0

    const/16 v4, 0x2a3

    invoke-static {v2, v3, v4}, Lcom/viber/voip/qrcode/e;->a(III)I

    move-result v2

    .line 243
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 244
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 245
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v2, v1

    invoke-direct {v4, v3, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/viber/voip/qrcode/e;->f:Landroid/graphics/Rect;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->f:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/qrcode/e;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/e;->e()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 270
    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 273
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 274
    iget-object v3, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-virtual {v3}, Lcom/viber/voip/qrcode/d;->a()Landroid/graphics/Point;

    move-result-object v3

    .line 275
    iget-object v4, p0, Lcom/viber/voip/qrcode/e;->c:Lcom/viber/voip/qrcode/d;

    invoke-virtual {v4}, Lcom/viber/voip/qrcode/d;->b()Landroid/graphics/Point;

    move-result-object v4

    .line 276
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 280
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v5

    iget v5, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v5

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 281
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v5

    iget v5, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v5

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 282
    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v5

    iget v5, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v5

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 283
    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 284
    iput-object v2, p0, Lcom/viber/voip/qrcode/e;->g:Landroid/graphics/Rect;

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/qrcode/e;->g:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
