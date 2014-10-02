.class abstract Lcom/viber/voip/e/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:I

.field private static final e:I


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:I

.field private f:Lcom/viber/voip/e/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/e/a/a/b;->d:I

    .line 32
    sget v0, Lcom/viber/voip/e/a/a/b;->d:I

    sput v0, Lcom/viber/voip/e/a/a/b;->e:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/viber/voip/e/a/a/b;->b:I

    .line 41
    iput v0, p0, Lcom/viber/voip/e/a/a/b;->c:I

    .line 44
    iput-object p1, p0, Lcom/viber/voip/e/a/a/b;->a:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/viber/voip/e/a/a/b;->a()V

    .line 47
    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/a/a/b;->b:I

    .line 53
    iget v0, p0, Lcom/viber/voip/e/a/a/b;->b:I

    sget v1, Lcom/viber/voip/e/a/a/b;->e:I

    if-le v0, v1, :cond_0

    .line 54
    sget v0, Lcom/viber/voip/e/a/a/b;->e:I

    iput v0, p0, Lcom/viber/voip/e/a/a/b;->b:I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/a/a/b;->c:I

    .line 57
    iget v0, p0, Lcom/viber/voip/e/a/a/b;->c:I

    sget v1, Lcom/viber/voip/e/a/a/b;->d:I

    if-le v0, v1, :cond_1

    .line 58
    sget v0, Lcom/viber/voip/e/a/a/b;->d:I

    iput v0, p0, Lcom/viber/voip/e/a/a/b;->c:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LargeIconSize width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/e/a/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/e/a/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/String;)V

    .line 66
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v0, "LargeIconSize Resources.NotFoundException: using default icon size"

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/String;)V

    .line 62
    sget v0, Lcom/viber/voip/e/a/a/b;->d:I

    iput v0, p0, Lcom/viber/voip/e/a/a/b;->c:I

    .line 63
    sget v0, Lcom/viber/voip/e/a/a/b;->e:I

    iput v0, p0, Lcom/viber/voip/e/a/a/b;->b:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x3

    const-string/jumbo v1, "BaseNotificationFactory"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget v0, p0, Lcom/viber/voip/e/a/a/b;->c:I

    iget v2, p0, Lcom/viber/voip/e/a/a/b;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 175
    new-instance v3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 176
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 177
    int-to-float v0, v2

    int-to-float v5, v2

    invoke-static {v0, v5, v4}, Lcom/viber/voip/messages/extras/image/h;->a(FFLandroid/graphics/Path;)V

    .line 178
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 182
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p1, v1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 185
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 156
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 159
    :cond_0
    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/e/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBuilder is null - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBuilder.hasActions() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/e/a/a/c;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/String;)V

    .line 76
    :cond_1
    new-instance v0, Lcom/viber/voip/e/a/a/c;

    iget-object v1, p0, Lcom/viber/voip/e/a/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/e/a/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/e/a/a/b;->f:Lcom/viber/voip/e/a/a/c;

    invoke-virtual {v0, p2}, Lcom/viber/voip/e/a/a/c;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, -0x82ae62

    const/16 v2, 0x7d0

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IJLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IJLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/viber/voip/e/a/a/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    return-object v1
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 12
    .parameter
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
    .line 125
    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 126
    move-object/from16 v0, p10

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 127
    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 129
    invoke-virtual/range {v1 .. v10}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    return-object v1
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 12
    .parameter
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
    .line 135
    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 136
    move-object/from16 v0, p10

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 137
    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 139
    invoke-virtual/range {v1 .. v10}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    return-object v1
.end method

.method protected a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;[Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 12
    .parameter
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
    .line 145
    new-instance v11, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 146
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p10

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 147
    aget-object v2, p10, v1

    invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 151
    invoke-virtual/range {v1 .. v10}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLandroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    return-object v1
.end method

.method protected a(Ljava/lang/CharSequence;[Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 164
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 165
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 169
    :cond_1
    return-object v1
.end method

.method protected b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/e/a/a/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method
