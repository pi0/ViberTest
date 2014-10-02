.class public Lcom/viber/voip/messages/extras/image/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static b:F

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/viber/voip/messages/extras/image/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/messages/extras/image/h;->a:Z

    .line 85
    const v0, 0x411ccccd

    sput v0, Lcom/viber/voip/messages/extras/image/h;->b:F

    .line 1018
    const-class v0, Lcom/viber/voip/messages/extras/image/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/extras/image/h;->c:Ljava/lang/String;

    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-boolean v0, Lcom/viber/voip/messages/extras/image/h;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 814
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0202c8

    const v0, 0x7f0202c5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1133
    if-ne p0, v4, :cond_3

    .line 1134
    if-nez p1, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return v0

    .line 1136
    :cond_1
    if-ne p1, v2, :cond_2

    .line 1137
    const v0, 0x7f0202c9

    goto :goto_0

    .line 1138
    :cond_2
    if-ne p1, v3, :cond_0

    move v0, v1

    .line 1139
    goto :goto_0

    .line 1142
    :cond_3
    if-nez p1, :cond_4

    .line 1143
    const v0, 0x7f0202c7

    goto :goto_0

    .line 1144
    :cond_4
    if-ne p1, v2, :cond_5

    .line 1145
    const v0, 0x7f0202c9

    goto :goto_0

    .line 1146
    :cond_5
    if-ne p1, v3, :cond_6

    .line 1147
    const v0, 0x7f0202c6

    goto :goto_0

    .line 1148
    :cond_6
    if-ne p1, v4, :cond_0

    move v0, v1

    .line 1149
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/messages/extras/image/j;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1366
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1370
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1371
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1372
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1387
    :goto_0
    sget-object v2, Lcom/viber/voip/messages/extras/image/j;->a:Lcom/viber/voip/messages/extras/image/j;

    if-ne p1, v2, :cond_1

    :goto_1
    return v0

    .line 1375
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string/jumbo v1, "getRawHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1376
    const-class v1, Landroid/view/Display;

    const-string/jumbo v3, "getRawWidth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1377
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1378
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1381
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1382
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1383
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1387
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v1, 0x0

    .line 274
    const-string/jumbo v0, "file://"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 276
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 290
    :goto_1
    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 283
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 285
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 287
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static varargs a(ILandroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1048
    array-length v0, p5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    array-length v0, p5

    if-ne v0, v2, :cond_1

    .line 1049
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-static {p1, v0, p2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    .line 1050
    :cond_1
    array-length v0, p5

    if-le v0, v2, :cond_2

    .line 1051
    invoke-static {p1, p0, p3, p4, p5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1053
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1156
    array-length v1, p4

    .line 1157
    new-array v2, v1, [Landroid/graphics/Bitmap;

    .line 1158
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1159
    aget-object v3, p4, v0

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1160
    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(II)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1166
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1169
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 1170
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    invoke-static {v5, p2, p3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1171
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    div-int/lit8 v6, p2, 0x4

    const/4 v7, 0x0

    div-int/lit8 v8, p2, 0x2

    invoke-static {v5, v6, v7, v8, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1176
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, p3, 0x2

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1177
    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v2, v5

    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, p3, 0x2

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1179
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 1180
    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1181
    const/4 v1, 0x1

    aget-object v1, v2, v1

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1182
    const/4 v1, 0x2

    aget-object v1, v2, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1189
    :goto_2
    return-object v0

    .line 1173
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, p3, 0x2

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1174
    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-object v5, v2, v5

    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, p3, 0x2

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1

    .line 1184
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1185
    const/4 v1, 0x1

    aget-object v1, v2, v1

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1186
    const/4 v1, 0x2

    aget-object v1, v2, v1

    const/4 v4, 0x0

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1187
    const/4 v1, 0x3

    aget-object v1, v2, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 447
    :cond_0
    const/4 v0, -0x2

    if-ne p4, v0, :cond_7

    const/4 v0, 0x1

    move v4, v0

    .line 449
    :goto_0
    if-eqz v4, :cond_1

    .line 450
    const/16 p4, 0x190

    .line 453
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 456
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 459
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 460
    const/4 v0, 0x1

    .line 464
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-static {v6}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;)I

    move-result v6

    .line 468
    const/16 v7, 0x5a

    if-eq v6, v7, :cond_2

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    :cond_2
    move v9, p3

    move p3, p4

    move p4, v9

    .line 474
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resizeImage original: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "; target: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 477
    :goto_1
    sget-object v5, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    if-ne p2, v5, :cond_8

    .line 479
    div-int/lit8 v5, v2, 0x2

    if-lt v5, p3, :cond_4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_4

    div-int/lit8 v5, v1, 0x2

    if-lt v5, p4, :cond_4

    const/4 v5, -0x1

    if-ne p4, v5, :cond_a

    .line 493
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resizeImage scale:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 496
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 497
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 501
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 505
    if-eqz p2, :cond_5

    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    if-eq p2, v0, :cond_b

    :cond_5
    const/4 v0, 0x1

    .line 506
    :goto_2
    if-eqz v0, :cond_13

    .line 507
    const/4 v1, 0x0

    .line 509
    :try_start_0
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string/jumbo v7, "inNativeAlloc"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move v0, v1

    .line 521
    :goto_3
    if-eqz v0, :cond_12

    .line 522
    const/4 v1, 0x0

    .line 524
    :try_start_1
    const-string/jumbo v0, "r"

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 525
    if-nez v1, :cond_c

    const/4 v0, 0x0

    .line 529
    if-eqz v1, :cond_6

    .line 530
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 597
    :cond_6
    :goto_4
    return-object v0

    .line 447
    :cond_7
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_0

    .line 484
    :cond_8
    div-int/lit8 v5, v2, 0x2

    if-lt v5, p3, :cond_9

    const/4 v5, -0x1

    if-ne p3, v5, :cond_a

    :cond_9
    div-int/lit8 v5, v1, 0x2

    if-lt v5, p4, :cond_4

    const/4 v5, -0x1

    if-eq p4, v5, :cond_4

    .line 488
    :cond_a
    div-int/lit8 v2, v2, 0x2

    .line 489
    div-int/lit8 v1, v1, 0x2

    .line 490
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 505
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 510
    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    .line 519
    goto :goto_3

    .line 512
    :catch_1
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move v0, v1

    .line 519
    goto :goto_3

    .line 514
    :catch_2
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    .line 519
    goto :goto_3

    .line 516
    :catch_3
    move-exception v0

    .line 517
    const/4 v0, 0x1

    .line 518
    const-string/jumbo v1, "NoSuchField: inNativeAlloc"

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 526
    :cond_c
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 527
    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 529
    if-eqz v1, :cond_d

    .line 530
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_d
    :goto_5
    move-object v3, v0

    .line 545
    :goto_6
    if-eqz v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resizeImage: width_tmp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " staticBitmap.w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " staticBitmap.h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    .line 548
    :cond_e
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p4, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p3, :cond_f

    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    if-ne p2, v0, :cond_18

    .line 550
    :cond_f
    const/4 v1, 0x2

    .line 552
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 554
    if-eqz v4, :cond_15

    .line 555
    int-to-float v0, p4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 556
    int-to-float v1, p3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 557
    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 558
    const/4 v0, 0x4

    move v1, v0

    move v0, p4

    :goto_7
    move v2, v1

    move v1, v0

    .line 572
    :goto_8
    if-eqz p5, :cond_18

    .line 573
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    if-ne p2, v0, :cond_17

    const/4 v0, 0x1

    :goto_9
    invoke-static {v3, v1, v2, v0, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    if-ne p2, v1, :cond_10

    .line 575
    const/4 v1, 0x1

    invoke-static {v0, p3, p4, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 579
    :cond_10
    if-eq v3, v0, :cond_6

    .line 580
    invoke-static {v3}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 529
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_11

    .line 530
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_11
    throw v0

    .line 535
    :cond_12
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 536
    const/4 v0, 0x0

    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 537
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .line 540
    :cond_13
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 541
    const/4 v0, 0x0

    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v3, v0

    goto/16 :goto_6

    .line 561
    :cond_14
    const/4 v0, 0x3

    move v1, v0

    move v0, p3

    .line 562
    goto :goto_7

    .line 564
    :cond_15
    const/4 v2, -0x1

    if-ne p4, v2, :cond_16

    .line 565
    const/4 v1, 0x3

    move v2, v1

    move v1, p3

    .line 566
    goto :goto_8

    .line 567
    :cond_16
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1a

    .line 568
    const/4 v1, 0x4

    move v2, v1

    move v1, p4

    .line 569
    goto :goto_8

    .line 573
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 590
    :cond_18
    if-eqz v3, :cond_19

    .line 591
    invoke-static {v3, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_4

    .line 597
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1a
    move v2, v1

    move v1, v0

    goto :goto_8
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    .line 124
    if-eqz p0, :cond_4

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 128
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 129
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    if-eq v0, p0, :cond_1

    .line 141
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_1
    return-object v0

    .line 130
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 132
    if-lez v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    .line 133
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Occur exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 231
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object p0

    .line 234
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 236
    const/4 v7, 0x0

    .line 238
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    if-eq v0, p0, :cond_2

    .line 240
    :try_start_1
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 251
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 243
    :goto_2
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    const/4 v1, 0x0

    .line 148
    if-eqz p0, :cond_3

    .line 149
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 150
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 151
    :cond_0
    invoke-static {p0, v1, v0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 153
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move v1, v0

    .line 149
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 192
    if-nez p0, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 202
    invoke-static {v0, v2, p2}, Lcom/viber/voip/messages/extras/image/h;->a(III)Z

    move-result v3

    .line 204
    if-eqz v3, :cond_4

    .line 205
    int-to-float v0, p1

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 210
    :goto_1
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    if-eqz p3, :cond_5

    .line 212
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 214
    if-eqz p4, :cond_3

    int-to-float v0, p4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 216
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    if-eq p0, v0, :cond_0

    .line 219
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 207
    :cond_4
    int-to-float v2, p1

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_1

    .line 224
    :cond_5
    invoke-static {p0, p4}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;ILandroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1738
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1739
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1741
    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v0

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1742
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1744
    if-nez p2, :cond_0

    .line 1745
    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->b(II)Landroid/graphics/Path;

    move-result-object p2

    .line 1747
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1748
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1749
    invoke-virtual {v3, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1752
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1754
    invoke-virtual {v3, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1755
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1756
    if-lez p1, :cond_1

    .line 1759
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1723
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 864
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 865
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 869
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1831
    const/4 v0, 0x0

    .line 1833
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/ZXing$Factory;->newQRCodeWriter()Lcom/viber/dexshared/ZXing$QRCodeWriter;

    move-result-object v1

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->QR_CODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    invoke-interface {v1, p0, v2, p1, p1}, Lcom/viber/dexshared/ZXing$QRCodeWriter;->encode(Ljava/lang/String;Lcom/viber/dexshared/ZXing$BarcodeFormat;II)Lcom/viber/dexshared/ZXing$BitMatrix;

    move-result-object v8

    .line 1834
    invoke-interface {v8}, Lcom/viber/dexshared/ZXing$BitMatrix;->getWidth()I

    move-result v3

    .line 1835
    invoke-interface {v8}, Lcom/viber/dexshared/ZXing$BitMatrix;->getHeight()I

    move-result v7

    .line 1836
    mul-int v1, v3, v7

    new-array v1, v1, [I

    move v6, v4

    .line 1837
    :goto_0
    if-ge v6, v7, :cond_2

    .line 1838
    mul-int v9, v6, v3

    move v5, v4

    .line 1839
    :goto_1
    if-ge v5, v3, :cond_1

    .line 1840
    add-int v10, v9, v5

    invoke-interface {v8, v5, v6}, Lcom/viber/dexshared/ZXing$BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x100

    :goto_2
    aput v2, v1, v10

    .line 1839
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_0
    move v2, v4

    .line 1840
    goto :goto_2

    .line 1837
    :cond_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    .line 1844
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1845
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/viber/dexshared/ZXing$WriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    :goto_3
    return-object v0

    .line 1848
    :catch_0
    move-exception v1

    goto :goto_3

    .line 1846
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {p0, v0, p2, p3}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1059
    if-eqz v1, :cond_0

    .line 1060
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1065
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-static {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 1451
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1280
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/net/Uri;)Z

    move-result v3

    .line 1281
    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.gallery3d.provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1282
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.gallery3d.provider"

    const-string/jumbo v4, "content://com.google.android.gallery3d.provider"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object v0, p1

    .line 1284
    :goto_0
    if-eqz v0, :cond_3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "content://com.android.gallery3d.filtershow.provider.SharedImageProvider/image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "content://gmail-ls/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1291
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v4

    .line 1292
    :try_start_1
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    .line 1293
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1294
    const-string/jumbo v3, "image"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1295
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->e:Lcom/viber/voip/messages/extras/image/l;

    .line 1300
    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1301
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1304
    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    .line 1305
    :goto_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 1306
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1310
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    .line 1311
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1313
    if-eqz v3, :cond_2

    .line 1315
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1320
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 1322
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1329
    :cond_3
    :goto_5
    return-object v0

    .line 1296
    :cond_4
    :try_start_6
    const-string/jumbo v3, "video"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1297
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->f:Lcom/viber/voip/messages/extras/image/l;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_1

    .line 1309
    :cond_5
    :try_start_7
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    .line 1313
    if-eqz v4, :cond_6

    .line 1315
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1320
    :cond_6
    :goto_6
    if-eqz v3, :cond_3

    .line 1322
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_5

    .line 1323
    :catch_1
    move-exception v1

    .line 1324
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1316
    :catch_2
    move-exception v1

    .line 1317
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1316
    :catch_3
    move-exception v1

    .line 1317
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1323
    :catch_4
    move-exception v1

    .line 1324
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1313
    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_7
    if-eqz v4, :cond_7

    .line 1315
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1320
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 1322
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1325
    :cond_8
    :goto_9
    throw v0

    .line 1316
    :catch_5
    move-exception v1

    .line 1317
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1323
    :catch_6
    move-exception v1

    .line 1324
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1313
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 1310
    :catch_7
    move-exception v1

    move-object v3, v2

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :cond_9
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 295
    if-nez p1, :cond_0

    move-object v0, v7

    .line 302
    :goto_0
    return-object v0

    .line 297
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/16 v3, 0x500

    const/16 v4, 0x500

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 299
    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 302
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/viber/voip/messages/extras/image/l;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 909
    const/16 v0, 0x50

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;I)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 922
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Z)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 931
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, v1

    .line 953
    :cond_1
    :goto_0
    return-object v0

    .line 937
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 938
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 941
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :try_start_1
    invoke-virtual {p0, p3, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 943
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 945
    if-eqz v2, :cond_4

    .line 946
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 947
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 949
    :cond_4
    if-eqz p4, :cond_1

    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 953
    goto :goto_0

    .line 945
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 946
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 947
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 949
    :cond_5
    if-eqz p4, :cond_6

    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    :cond_6
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 945
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;IZ)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 926
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 652
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    .line 654
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1265
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1266
    if-nez v1, :cond_0

    .line 1276
    :goto_0
    return-object v0

    .line 1271
    :cond_0
    :try_start_0
    invoke-static {p0, v1}, Lcom/viber/voip/util/bu;->a(Ljava/io/File;Ljava/io/File;)V

    .line 1272
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v1

    .line 1274
    sget-object v2, Lcom/viber/voip/messages/extras/image/h;->c:Ljava/lang/String;

    const-string/jumbo v3, "Unable to copy source image to temp file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1438
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1439
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1440
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Lcom/viber/voip/messages/extras/image/a;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 632
    const/16 v7, 0x50

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_0

    .line 639
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, p7}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;I)Landroid/net/Uri;

    .line 640
    new-instance v0, Lcom/viber/voip/messages/extras/image/a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v0, p2, v2, v1}, Lcom/viber/voip/messages/extras/image/a;-><init>(Landroid/net/Uri;II)V

    .line 644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 607
    invoke-static/range {p0 .. p5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 609
    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 611
    if-nez v2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-object v0

    .line 614
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 615
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 616
    invoke-static {p0, v1, p6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 617
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 618
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 619
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 620
    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 621
    new-instance v0, Lcom/viber/voip/messages/extras/image/a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/viber/voip/messages/extras/image/a;-><init>(Landroid/net/Uri;II)V

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    :goto_0
    sget-object v2, Lcom/viber/voip/messages/extras/image/i;->a:[I

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/l;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 743
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 745
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 748
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 749
    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    move-object v1, v2

    .line 760
    :cond_2
    return-object v1

    .line 706
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMG-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-V.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMG-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-V.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :pswitch_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PCSIMG-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 722
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PCSVID-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-V.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 730
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMG-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-V.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->q:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 734
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMG-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-V.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 738
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QR-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 255
    const-string/jumbo v6, ""

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_2

    .line 262
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string/jumbo v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 264
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public static a(FFLandroid/graphics/Path;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x3e368e3f

    const v10, 0x3de983d8

    const v9, 0x3b59a522

    const v8, 0x3649539c

    const/4 v7, 0x0

    .line 1798
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1803
    const v0, 0x3f63825e

    mul-float/2addr v0, p0

    mul-float v1, v10, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1804
    const v0, -0x432bae04

    mul-float v1, v0, p0

    const v0, -0x432d4b27

    mul-float v2, v0, p1

    const v0, -0x4215fb2f

    mul-float v3, v0, p0

    const v0, -0x421843c4

    mul-float v4, v0, p1

    const v0, -0x4139e2df

    mul-float v5, v0, p0

    const v0, -0x42167fd4

    mul-float v6, v0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1805
    const v0, 0x3f002939

    mul-float v1, v0, p0

    mul-float v2, v8, p1

    const v0, 0x3effbcc3

    mul-float v3, v0, p0

    const v0, 0x3eff268d

    mul-float v5, v0, p0

    move-object v0, p2

    move v4, v7

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1806
    const v0, -0x45657753

    mul-float v1, v0, p0

    const v0, -0x44e5a9a8

    mul-float v3, v0, p0

    mul-float v4, v8, p1

    const v0, -0x449897a6

    mul-float v5, v0, p0

    const v0, 0x36eae18b

    mul-float v6, v0, p1

    move-object v0, p2

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1807
    const v0, 0x3e6394fb

    mul-float v1, v0, p0

    const v0, 0x3a690bc8

    mul-float v2, v0, p1

    const v0, 0x3e0cc5fc

    mul-float v3, v0, p0

    const v0, 0x3db4d834

    mul-float v4, v0, p1

    const v0, 0x3de47992

    mul-float v5, v0, p0

    mul-float v6, v10, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1808
    const v0, 0x3d2f9fcb

    mul-float v1, v0, p0

    mul-float v2, v11, p1

    const v0, -0x449a2a4e

    mul-float v3, v0, p0

    const v0, 0x3e9c9c4e

    mul-float v4, v0, p1

    const v0, 0x395f58c1

    mul-float v5, v0, p0

    const v0, 0x3f006e6e

    mul-float v6, v0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1809
    const v0, -0x448bf1a6

    mul-float v1, v0, p0

    const v0, 0x3e44ca92

    mul-float v2, v0, p1

    const v0, 0x3d2bbcb2

    mul-float v3, v0, p0

    const v0, 0x3ea46f7a

    mul-float v4, v0, p1

    const v0, 0x3de2aed1

    mul-float v5, v0, p0

    const v0, 0x3ec5551d

    mul-float v6, v0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1810
    const v0, 0x3cd4ed2d

    mul-float v1, v0, p0

    const v0, 0x3cd3176a

    mul-float v2, v0, p1

    const v0, 0x3de5a922

    mul-float v3, v0, p0

    const v0, 0x3de61f19

    mul-float v4, v0, p1

    const v0, 0x3ec4aba4

    mul-float v5, v0, p0

    const v0, 0x3de73605

    mul-float v6, v0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1811
    invoke-virtual {p2, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1812
    const v0, -0x450b49e0

    mul-float v1, v0, p0

    mul-float v2, v8, p1

    const v0, 0x3a954a80

    mul-float v3, v0, p0

    mul-float v5, v9, p0

    move-object v0, p2

    move v4, v7

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1813
    const v0, 0x3a97635e

    mul-float v1, v0, p0

    mul-float v3, v9, p0

    mul-float v5, v9, p0

    move-object v0, p2

    move v2, v7

    move v4, v7

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1814
    const v0, 0x3e8b415b

    mul-float v1, v0, p0

    const v0, -0x45f48a16

    mul-float v2, v0, p1

    const v0, 0x3eb932b5

    mul-float v3, v0, p0

    const v0, -0x424d8dbd

    mul-float v4, v0, p1

    const v0, 0x3ec681ed

    mul-float v5, v0, p0

    const v0, -0x4218c9fb

    mul-float v6, v0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1815
    const v0, 0x3d8cd078

    mul-float v1, v0, p0

    const v0, -0x427c675a

    mul-float v2, v0, p1

    const v0, 0x3de9c12f

    mul-float v3, v0, p0

    const v0, -0x41ba2058

    mul-float v4, v0, p1

    const v0, 0x3de222d5

    mul-float v5, v0, p0

    const v0, -0x413aaae3

    mul-float v6, v0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1816
    invoke-virtual {p2, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1817
    const v0, 0x3f8072eb

    mul-float v1, v0, p0

    const v0, 0x3e9c9c4e

    mul-float v2, v0, p1

    const v0, 0x3f751794

    mul-float v3, v0, p0

    mul-float v4, v11, p1

    const v0, 0x3f63825e

    mul-float v5, v0, p0

    mul-float v6, v10, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1818
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 1819
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 778
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 779
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static a(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    .line 171
    if-ne p2, v0, :cond_2

    .line 172
    if-ge p0, p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 174
    if-gt p0, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 175
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    move v0, v1

    .line 176
    goto :goto_0

    .line 177
    :cond_4
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 966
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "provider/picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->e(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.providers.media.documents/document/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    :cond_0
    const/4 v0, 0x1

    .line 969
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 4
    .parameter

    .prologue
    .line 796
    invoke-static {}, Lcom/viber/voip/util/bj;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x1800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 804
    :goto_0
    return v0

    .line 799
    :cond_0
    if-eqz p0, :cond_1

    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_LOW_STORAGE_SPACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 802
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 804
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;I)[B
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxImageSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_4

    .line 312
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    move v3, v1

    move v4, v2

    .line 324
    :goto_0
    if-lt v3, v4, :cond_0

    .line 326
    add-int v0, v4, v3

    :try_start_0
    div-int/lit8 v0, v0, 0x2

    .line 328
    if-ne v0, v1, :cond_1

    .line 345
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 351
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 352
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 362
    :goto_2
    return-object v0

    .line 330
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v6, v0, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compression:compression quality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bitmap size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-gt v6, p2, :cond_2

    .line 333
    add-int/lit8 v4, v0, 0x1

    .line 334
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 336
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    move v2, v3

    move v3, v4

    .line 342
    :goto_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 343
    goto :goto_0

    .line 339
    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v3, v4

    move v8, v2

    move v2, v0

    move v0, v1

    move v1, v8

    goto :goto_3

    .line 348
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_3
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 885
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 886
    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 887
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 888
    return-object v0
.end method

.method public static a(Landroid/content/Context;)[I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1391
    if-nez p0, :cond_0

    .line 1392
    const/4 v0, 0x0

    .line 1433
    :goto_0
    return-object v0

    .line 1395
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1396
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_5

    .line 1400
    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1401
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1402
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1405
    :goto_1
    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    .line 1407
    :cond_1
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string/jumbo v2, "getRawHeight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1408
    const-class v2, Landroid/view/Display;

    const-string/jumbo v5, "getRawWidth"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1409
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1410
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1415
    :goto_2
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    .line 1416
    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1417
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1418
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1419
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1422
    :cond_3
    if-ge v2, v0, :cond_4

    .line 1423
    aput v2, v1, v3

    .line 1424
    aput v0, v1, v7

    :goto_3
    move-object v0, v1

    .line 1433
    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    move v0, v3

    move v2, v3

    .line 1412
    goto :goto_2

    .line 1426
    :cond_4
    aput v2, v1, v7

    .line 1427
    aput v0, v1, v3

    goto :goto_3

    :cond_5
    move v0, v3

    move v2, v3

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    .line 1855
    const/4 v0, 0x0

    .line 1856
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1857
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 1858
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1860
    iget v0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1866
    :cond_0
    :goto_0
    return v0

    .line 1863
    :cond_1
    iget v0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getBitmapFromUri photoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V

    .line 1037
    if-nez p1, :cond_1

    if-gtz p2, :cond_1

    .line 1038
    const/4 v0, 0x0

    .line 1044
    :cond_0
    :goto_0
    return-object v0

    .line 1041
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 1043
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1044
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1340
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1345
    :goto_0
    return-object p0

    .line 1341
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1343
    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 1344
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 1341
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1069
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    .line 1070
    :goto_0
    if-nez v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1071
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 1073
    if-eqz v0, :cond_4

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1076
    :goto_1
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1077
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    invoke-static {v2, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1078
    :goto_2
    if-eqz v2, :cond_1

    .line 1079
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1080
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1081
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1082
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_1
    if-eqz v0, :cond_2

    .line 1089
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    move-object v0, v2

    .line 1094
    :goto_3
    return-object v0

    :cond_3
    move v0, v2

    .line 1069
    goto :goto_0

    .line 1073
    :cond_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 1077
    goto :goto_2

    .line 1085
    :catch_0
    move-exception v2

    .line 1088
    if-eqz v0, :cond_6

    .line 1089
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6
    move-object v0, v1

    goto :goto_3

    .line 1088
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    .line 1089
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v1

    :cond_8
    move-object v0, v1

    .line 1094
    goto :goto_3
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 373
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 374
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    if-eqz v1, :cond_0

    .line 381
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 386
    :cond_0
    :goto_0
    return-object v2

    .line 375
    :catch_0
    move-exception v0

    .line 376
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileNotFoundException: uri path= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    if-eqz v1, :cond_0

    .line 381
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 381
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 382
    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static b(II)Landroid/graphics/Path;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1777
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1778
    int-to-float v1, p0

    int-to-float v2, p1

    invoke-static {v1, v2, v0}, Lcom/viber/voip/messages/extras/image/h;->a(FFLandroid/graphics/Path;)V

    .line 1779
    return-object v0
.end method

.method public static b(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 1445
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1446
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1447
    return-object v0
.end method

.method public static b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 698
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1020
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/extras/image/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 788
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static b(Landroid/net/Uri;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 973
    if-eqz p0, :cond_1

    .line 974
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 975
    if-eqz v1, :cond_0

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 977
    :cond_1
    return v0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 2
    .parameter

    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter

    .prologue
    .line 876
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 402
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 428
    :goto_0
    return-object v0

    .line 404
    :cond_0
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 405
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 407
    if-lez p2, :cond_1

    .line 409
    :goto_1
    div-int/lit8 v3, v1, 0x2

    if-ge v3, p2, :cond_4

    div-int/lit8 v3, v0, 0x2

    if-ge v3, p2, :cond_4

    .line 417
    :cond_1
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-static {v3}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;)I

    move-result v3

    .line 419
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    :cond_2
    move v5, v1

    move v1, v0

    move v0, v5

    .line 425
    :cond_3
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 426
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object v0, v2

    .line 428
    goto :goto_0

    .line 412
    :cond_4
    div-int/lit8 v0, v0, 0x2

    .line 413
    div-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public static c(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 1110
    if-eqz p0, :cond_0

    .line 1111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1115
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 663
    if-eqz p1, :cond_1

    .line 664
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/net/Uri;)Z

    move-result v1

    .line 665
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 677
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 679
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 680
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 690
    :cond_1
    :goto_1
    return v0

    .line 668
    :cond_2
    if-nez v1, :cond_0

    .line 669
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 670
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 684
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 992
    if-eqz p0, :cond_1

    .line 993
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    const-string/jumbo v1, "googleusercontent.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    :cond_0
    const/4 v0, 0x1

    .line 999
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 1126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 1129
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1003
    .line 1005
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v1

    .line 1006
    invoke-interface {v1}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1007
    if-nez v1, :cond_0

    .line 1014
    :goto_0
    return-object v0

    .line 1010
    :cond_0
    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Lcom/viber/voip/messages/extras/image/l;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 1258
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri for copy must be an absolute Uri to file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 1709
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 981
    if-eqz p0, :cond_0

    .line 982
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    const-string/jumbo v1, "googleusercontent.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x1

    .line 988
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
