.class public Lcom/viber/voip/messages/extras/map/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/extras/map/j;

.field private b:Lcom/viber/voip/messages/extras/map/i;

.field private c:Lcom/viber/dexshared/GMaps$Factory;

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/map/j;Lcom/viber/voip/messages/extras/map/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/d;->a:Lcom/viber/voip/messages/extras/map/j;

    .line 68
    iput-object p2, p0, Lcom/viber/voip/messages/extras/map/d;->b:Lcom/viber/voip/messages/extras/map/i;

    .line 69
    return-void
.end method

.method public static a(I)D
    .locals 4
    .parameter

    .prologue
    .line 479
    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 229
    const/16 v0, 0x33

    .line 230
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 233
    :cond_0
    return v0
.end method

.method public static a(D)I
    .locals 2
    .parameter

    .prologue
    .line 475
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 192
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/map/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 202
    .line 203
    int-to-float v0, p1

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    .line 204
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 206
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 207
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    const/4 v0, 0x3

    :try_start_1
    const-string/jumbo v2, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cropLocationImage source h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "result h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :goto_0
    if-eq v1, p0, :cond_0

    .line 216
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 219
    :cond_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    move-object v1, p0

    .line 211
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/dexshared/GMaps$Factory;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/map/d;->b()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    return-object v0
.end method

.method private static a(DDIII)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    const-string/jumbo v0, "http://maps.google.com/maps/api/staticmap?zoom=<zoom>&size=<width>x<height>&scale=<scale>&maptype=roadmap&sensor=true&center=<lat>,<lng>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "<lat>"

    aput-object v2, v1, v4

    const-string/jumbo v2, "<lng>"

    aput-object v2, v1, v5

    const-string/jumbo v2, "<zoom>"

    aput-object v2, v1, v6

    const-string/jumbo v2, "<width>"

    aput-object v2, v1, v7

    const-string/jumbo v2, "<height>"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/adapters/g;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 132
    invoke-interface {p0}, Lcom/viber/voip/messages/adapters/g;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v0

    .line 133
    invoke-interface {p0}, Lcom/viber/voip/messages/adapters/g;->g()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v2

    .line 134
    const/high16 v4, 0x42c8

    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v4

    invoke-static {}, Lcom/viber/voip/messages/extras/map/d;->a()I

    move-result v5

    add-int v6, v4, v5

    .line 135
    const/high16 v4, 0x4348

    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v5

    .line 136
    const/16 v4, 0x10

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/map/d;->a(DDIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 148
    const/high16 v0, 0x4348

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    const/high16 v1, 0x42c8

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-static {}, Lcom/viber/voip/messages/extras/map/d;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Lcom/viber/voip/messages/extras/map/d;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;II)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v0

    .line 154
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v2

    .line 160
    const/16 v4, 0x10

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/map/d;->a(DDIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    const-string/jumbo v0, "https://maps.googleapis.com/maps/api/geocode/json?address=<address>&sensor=true"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "<address>"

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/map/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b()Lcom/viber/dexshared/GMaps$Factory;
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/d;->c:Lcom/viber/dexshared/GMaps$Factory;

    if-nez v0, :cond_0

    .line 607
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/d;->c:Lcom/viber/dexshared/GMaps$Factory;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/d;->c:Lcom/viber/dexshared/GMaps$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/i;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/d;->b:Lcom/viber/voip/messages/extras/map/i;

    return-object v0
.end method

.method public static b(DD)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    const-string/jumbo v0, "https://maps.googleapis.com/maps/api/geocode/json?latlng=<lat>,<lng>&sensor=true"

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "<lat>"

    aput-object v2, v1, v4

    const-string/jumbo v2, "<lng>"

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 469
    const/4 v0, 0x3

    const-string/jumbo v1, "Places"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/map/d;)Lcom/viber/voip/messages/extras/map/j;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/d;->a:Lcom/viber/voip/messages/extras/map/j;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/map/d;)D
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/viber/voip/messages/extras/map/d;->d:D

    return-wide v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/extras/map/d;)D
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/viber/voip/messages/extras/map/d;->e:D

    return-wide v0
.end method


# virtual methods
.method public a(DD)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/extras/map/d;->a(DDLcom/viber/voip/messages/extras/map/i;)V

    .line 117
    return-void
.end method

.method public a(DDLcom/viber/voip/messages/extras/map/i;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/viber/voip/messages/extras/map/d;->d:D

    .line 122
    iput-wide p3, p0, Lcom/viber/voip/messages/extras/map/d;->e:D

    .line 124
    if-eqz p5, :cond_0

    .line 126
    iput-object p5, p0, Lcom/viber/voip/messages/extras/map/d;->b:Lcom/viber/voip/messages/extras/map/i;

    .line 128
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/extras/map/f;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/extras/map/f;-><init>(Lcom/viber/voip/messages/extras/map/d;DD)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public a(DDLcom/viber/voip/messages/extras/map/j;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/viber/voip/messages/extras/map/d;->d:D

    .line 99
    iput-wide p3, p0, Lcom/viber/voip/messages/extras/map/d;->e:D

    .line 101
    if-eqz p5, :cond_0

    .line 102
    iput-object p5, p0, Lcom/viber/voip/messages/extras/map/d;->a:Lcom/viber/voip/messages/extras/map/j;

    .line 104
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/extras/map/h;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/extras/map/h;-><init>(Lcom/viber/voip/messages/extras/map/d;DD)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/messages/extras/map/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    if-eqz p2, :cond_0

    .line 110
    iput-object p2, p0, Lcom/viber/voip/messages/extras/map/d;->a:Lcom/viber/voip/messages/extras/map/j;

    .line 112
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/map/h;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/extras/map/h;-><init>(Lcom/viber/voip/messages/extras/map/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method
