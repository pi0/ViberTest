.class public Lcom/viber/voip/stickers/bb;
.super Lcom/viber/voip/stickers/bk;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final c:Lcom/viber/voip/stickers/be;

.field private final d:Lcom/viber/voip/stickers/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/viber/voip/stickers/bb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/bb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/stickers/bk;-><init>()V

    .line 34
    new-instance v0, Lcom/viber/voip/stickers/be;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/stickers/be;-><init>(Lcom/viber/voip/stickers/bb;Lcom/viber/voip/stickers/bc;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    .line 35
    new-instance v0, Lcom/viber/voip/stickers/bd;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/stickers/bd;-><init>(Lcom/viber/voip/stickers/bb;I)V

    iput-object v0, p0, Lcom/viber/voip/stickers/bb;->d:Lcom/viber/voip/stickers/bd;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/bb;Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/bb;->d(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/f/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/bb;->b(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    invoke-static {v0, p1}, Lcom/viber/voip/stickers/be;->a(Lcom/viber/voip/stickers/be;Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method private a(JLjava/lang/String;Landroid/graphics/Picture;ZLcom/viber/voip/stickers/ba;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    if-ne v0, p6, :cond_2

    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->d:Lcom/viber/voip/stickers/bd;

    :goto_0
    monitor-enter v0

    .line 126
    :try_start_0
    invoke-direct {p0, p3, p6}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;Lcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/f/a;

    move-result-object v1

    .line 127
    if-eqz p5, :cond_3

    .line 128
    iput-object p4, v1, Lcom/viber/voip/stickers/f/a;->b:Landroid/graphics/Picture;

    .line 135
    :goto_1
    if-eqz p7, :cond_0

    .line 136
    iget-wide v2, v1, Lcom/viber/voip/stickers/f/a;->a:J

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/stickers/bb;->b(J)V

    .line 137
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/viber/voip/stickers/f/a;->a:J

    .line 139
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    invoke-static {v0}, Lcom/viber/voip/stickers/be;->b(Lcom/viber/voip/stickers/be;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_3
    :try_start_1
    iput-object p4, v1, Lcom/viber/voip/stickers/f/a;->c:Landroid/graphics/Picture;

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final a(Landroid/widget/ImageView;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 240
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    if-eqz p1, :cond_0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 245
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private d(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;
    .locals 3
    .parameter

    .prologue
    .line 188
    :try_start_0
    new-instance v0, Lcom/viber/voip/stickers/f/a;

    invoke-direct {v0}, Lcom/viber/voip/stickers/f/a;-><init>()V

    .line 189
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/bb;->c(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/viber/voip/stickers/f/a;->a:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/f/a;Ljava/lang/String;Ljava/lang/String;IIZLcom/viber/voip/stickers/ba;Z)Landroid/graphics/Bitmap;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    sget-object v2, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    move-object/from16 v0, p8

    if-eq v0, v2, :cond_1

    .line 110
    iget-wide v3, p2, Lcom/viber/voip/stickers/f/a;->a:J

    new-instance v5, Landroid/graphics/Picture;

    invoke-direct {v5}, Landroid/graphics/Picture;-><init>()V

    const/4 v11, 0x1

    move-object v2, p0

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p3

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Lcom/viber/voip/stickers/bb;->a(JLandroid/graphics/Picture;IILjava/lang/String;ZLcom/viber/voip/stickers/ba;ZZ)V

    .line 111
    const/4 v5, 0x0

    .line 118
    :cond_0
    :goto_0
    return-object v5

    .line 113
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 114
    iget-wide v3, p2, Lcom/viber/voip/stickers/f/a;->a:J

    move-object v2, p0

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/stickers/bb;->a(JLandroid/graphics/Bitmap;II)V

    .line 115
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x64

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v4, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Z)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    .line 118
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public a(IILjava/lang/String;ZLcom/viber/voip/stickers/ba;)Landroid/graphics/Picture;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/bb;->a(IILjava/lang/String;ZLcom/viber/voip/stickers/ba;Z)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/String;ZLcom/viber/voip/stickers/ba;Z)Landroid/graphics/Picture;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    sget-object v2, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    move-object/from16 v0, p5

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/viber/voip/stickers/bb;->d:Lcom/viber/voip/stickers/bd;

    move-object v12, v2

    :goto_0
    monitor-enter v12

    .line 149
    if-eqz p6, :cond_4

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;Lcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/f/a;

    move-result-object v2

    move-object v13, v2

    .line 150
    :goto_1
    if-eqz p4, :cond_0

    iget-object v2, v13, Lcom/viber/voip/stickers/f/a;->b:Landroid/graphics/Picture;

    if-eqz v2, :cond_1

    :cond_0
    if-nez p4, :cond_5

    iget-object v2, v13, Lcom/viber/voip/stickers/f/a;->c:Landroid/graphics/Picture;

    if-nez v2, :cond_5

    .line 151
    :cond_1
    new-instance v5, Landroid/graphics/Picture;

    invoke-direct {v5}, Landroid/graphics/Picture;-><init>()V

    .line 152
    iget-wide v2, v13, Lcom/viber/voip/stickers/f/a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 154
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/bb;->c(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/viber/voip/stickers/f/a;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :cond_2
    :goto_2
    :try_start_2
    iget-wide v3, v13, Lcom/viber/voip/stickers/f/a;->a:J

    move-object v2, p0

    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Lcom/viber/voip/stickers/bb;->a(JLandroid/graphics/Picture;IILjava/lang/String;ZLcom/viber/voip/stickers/ba;Z)V

    .line 160
    if-nez p6, :cond_5

    .line 161
    iget-wide v2, v13, Lcom/viber/voip/stickers/f/a;->a:J

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/stickers/bb;->b(J)V

    .line 162
    const-wide/16 v2, -0x1

    iput-wide v2, v13, Lcom/viber/voip/stickers/f/a;->a:J

    .line 163
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :goto_3
    return-object v5

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    invoke-static {v2}, Lcom/viber/voip/stickers/be;->b(Lcom/viber/voip/stickers/be;)Ljava/util/Map;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    .line 149
    :cond_4
    :try_start_3
    new-instance v2, Lcom/viber/voip/stickers/f/a;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/stickers/f/a;-><init>(J)V

    move-object v13, v2

    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 166
    :cond_5
    if-eqz p4, :cond_6

    :try_start_4
    iget-object v5, v13, Lcom/viber/voip/stickers/f/a;->b:Landroid/graphics/Picture;

    :goto_4
    monitor-exit v12

    goto :goto_3

    :cond_6
    iget-object v5, v13, Lcom/viber/voip/stickers/f/a;->c:Landroid/graphics/Picture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    invoke-static {v0, p1}, Lcom/viber/voip/stickers/be;->a(Lcom/viber/voip/stickers/be;Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    invoke-static {v0}, Lcom/viber/voip/stickers/be;->a(Lcom/viber/voip/stickers/be;)V

    .line 48
    return-void
.end method

.method public a(JLandroid/graphics/Picture;IILjava/lang/String;ZLcom/viber/voip/stickers/ba;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v10, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/stickers/bb;->a(JLandroid/graphics/Picture;IILjava/lang/String;ZLcom/viber/voip/stickers/ba;ZZ)V

    .line 94
    return-void
.end method

.method public a(JLandroid/graphics/Picture;IILjava/lang/String;ZLcom/viber/voip/stickers/ba;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/stickers/bk;->a(JLandroid/graphics/Picture;II)V

    .line 98
    if-eqz p9, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p6

    move-object v4, p3

    move v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p10

    .line 99
    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/stickers/bb;->a(JLjava/lang/String;Landroid/graphics/Picture;ZLcom/viber/voip/stickers/ba;Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->c:Lcom/viber/voip/stickers/be;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/stickers/be;->a(Lcom/viber/voip/stickers/be;Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V

    .line 40
    return-void
.end method

.method public a(J)[I
    .locals 4
    .parameter

    .prologue
    .line 77
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lcom/viber/svg/jni/SvgObject;->svgGetWidth(J)I

    move-result v1

    .line 79
    invoke-static {p1, p2}, Lcom/viber/svg/jni/SvgObject;->svgGetHeight(J)I

    move-result v2

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/stickers/f/a;)[I
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-wide v0, p1, Lcom/viber/voip/stickers/f/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/stickers/bb;->a(J)[I

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;
    .locals 3
    .parameter

    .prologue
    .line 57
    iget-object v1, p0, Lcom/viber/voip/stickers/bb;->d:Lcom/viber/voip/stickers/bd;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/bb;->d:Lcom/viber/voip/stickers/bd;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/f/a;

    .line 59
    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/bb;->d(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/viber/voip/stickers/bb;->d:Lcom/viber/voip/stickers/bd;

    invoke-virtual {v2, p1, v0}, Lcom/viber/voip/stickers/bd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 171
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p1, p2}, Lcom/viber/svg/jni/SvgObject;->svgDestroy(J)V

    .line 174
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/f/a;)V
    .locals 4
    .parameter

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/viber/voip/stickers/f/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 178
    iget-wide v0, p1, Lcom/viber/voip/stickers/f/a;->a:J

    invoke-static {v0, v1}, Lcom/viber/svg/jni/SvgObject;->svgDestroy(J)V

    .line 180
    :cond_0
    return-void
.end method
