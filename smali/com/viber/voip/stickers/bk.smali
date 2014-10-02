.class public Lcom/viber/voip/stickers/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/stickers/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/bk;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(JLandroid/graphics/Bitmap;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 70
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, v4

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/stickers/bk;->a(JLandroid/graphics/Bitmap;IIII)V

    .line 71
    return-void
.end method

.method public a(JLandroid/graphics/Bitmap;IIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v8, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/stickers/bk;->a(JLandroid/graphics/Bitmap;IIIII)V

    .line 75
    return-void
.end method

.method public a(JLandroid/graphics/Bitmap;IIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-wide v0, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/viber/svg/jni/SvgObject;->svgRenderToArea(JLandroid/graphics/Canvas;IIIII)I

    goto :goto_0
.end method

.method public a(JLandroid/graphics/Picture;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 88
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/stickers/bk;->a(JLandroid/graphics/Picture;IIII)V

    .line 89
    return-void
.end method

.method public a(JLandroid/graphics/Picture;IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    if-eqz p3, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p3, p4, p5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 99
    invoke-virtual {p3, p4, p5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 100
    const/4 v7, -0x1

    move-wide v0, p1

    move v3, p6

    move v4, p7

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lcom/viber/svg/jni/SvgObject;->svgRenderToArea(JLandroid/graphics/Canvas;IIIII)I

    .line 101
    invoke-virtual {p3}, Landroid/graphics/Picture;->endRecording()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 27
    const/4 v2, 0x0

    .line 32
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 33
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 34
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 37
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {}, Lcom/viber/svg/jni/SvgObject;->svgCreate()J

    move-result-wide v2

    .line 41
    invoke-static {v2, v3, v5}, Lcom/viber/svg/jni/SvgObject;->svgParseBuffer(JLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    if-eqz v4, :cond_0

    .line 61
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-wide v0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 59
    :cond_1
    if-eqz v4, :cond_2

    .line 61
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-wide v0, v2

    .line 64
    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 48
    :catch_2
    move-exception v3

    .line 59
    :goto_2
    if-eqz v2, :cond_0

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 62
    :catch_3
    move-exception v2

    .line 63
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 53
    :catch_4
    move-exception v3

    move-object v4, v2

    .line 59
    :goto_3
    if-eqz v4, :cond_0

    .line 61
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 62
    :catch_5
    move-exception v2

    .line 63
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_3

    .line 61
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 64
    :cond_3
    :goto_5
    throw v0

    .line 62
    :catch_6
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 59
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 53
    :catch_7
    move-exception v2

    goto :goto_3

    .line 48
    :catch_8
    move-exception v2

    move-object v2, v4

    goto :goto_2
.end method
