.class public Lcom/viber/voip/qrcode/ScannerActivity;
.super Lcom/viber/voip/BaseAddFriendActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/v;


# instance fields
.field private a:Landroid/view/SurfaceView;

.field private b:Lcom/viber/voip/qrcode/ViewFinder;

.field private c:Lcom/viber/voip/qrcode/e;

.field private d:Lcom/viber/voip/qrcode/h;

.field private e:Z

.field private f:Lcom/viber/voip/qrcode/s;

.field private g:Landroid/net/Uri;

.field private h:Lcom/viber/voip/ui/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/BaseAddFriendActivity;-><init>()V

    .line 483
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/qrcode/ScannerActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->g:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/ui/a/a;)Lcom/viber/voip/ui/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/a/a;

    .line 343
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0, p4}, Lcom/viber/voip/ui/a/a;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 345
    invoke-virtual {v0, p3}, Lcom/viber/voip/ui/a/a;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 346
    invoke-virtual {v0, p2}, Lcom/viber/voip/ui/a/a;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 350
    :goto_0
    return-object v0

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->g()Landroid/graphics/Rect;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/qrcode/e;->a(II)V

    .line 365
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0, p1}, Lcom/viber/voip/qrcode/e;->a(Landroid/view/SurfaceHolder;)V

    .line 367
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    if-nez v0, :cond_1

    .line 368
    new-instance v0, Lcom/viber/voip/qrcode/s;

    iget-object v1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/qrcode/s;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/e;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    .line 369
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 373
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->h()V

    goto :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 378
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->h()V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 408
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 410
    :cond_0
    invoke-virtual {p1, v1, p2}, Lcom/viber/voip/ui/a/a;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 313
    new-instance v0, Lcom/viber/voip/qrcode/o;

    invoke-direct {v0, p0, v6}, Lcom/viber/voip/qrcode/o;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    .line 314
    new-instance v1, Lcom/viber/voip/qrcode/q;

    invoke-direct {v1, p0, v6}, Lcom/viber/voip/qrcode/q;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    .line 316
    const-string/jumbo v2, "camera_init_error"

    invoke-direct {p0, v2, v0, v6, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 317
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string/jumbo v0, "scan_error"

    invoke-direct {p0, v0, v1, v6, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 320
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    if-nez v0, :cond_0

    .line 322
    const-string/jumbo v0, "not_viber_uri"

    new-instance v2, Lcom/viber/voip/qrcode/r;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/viber/voip/qrcode/ScannerActivity;->g:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v4, Lcom/viber/voip/qrcode/n;

    invoke-direct {v4, p0}, Lcom/viber/voip/qrcode/n;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/viber/voip/qrcode/r;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Landroid/content/Intent;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 329
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->g:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/a;->dismiss()V

    .line 337
    :cond_2
    const-string/jumbo v0, "update_details"

    new-instance v2, Lcom/viber/voip/qrcode/p;

    invoke-direct {v2, p0, v6}, Lcom/viber/voip/qrcode/p;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    goto :goto_0
.end method

.method private g()Landroid/graphics/Rect;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 387
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 388
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 390
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 391
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 392
    invoke-static {}, Lcom/viber/voip/util/gl;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 399
    :goto_0
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f333333

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 400
    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    return-object v1

    .line 395
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Lcom/viber/voip/qrcode/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/qrcode/o;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    .line 416
    new-instance v1, Lcom/viber/voip/ui/a/c;

    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/ui/a/c;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c03ad

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->a(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c06ec

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->b(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c02b5

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/ui/a/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/a/c;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/c;->a()Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 422
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    const-string/jumbo v1, "camera_init_error"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 426
    new-instance v0, Lcom/viber/voip/qrcode/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/qrcode/q;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    .line 428
    new-instance v1, Lcom/viber/voip/ui/a/c;

    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/ui/a/c;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06e9

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->a(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c06ea

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->b(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c02b5

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/ui/a/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/a/c;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/c;->a()Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 434
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    const-string/jumbo v1, "scan_error"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V

    .line 436
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->i()V

    .line 262
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 272
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->i()V

    .line 275
    :goto_0
    return-void

    .line 268
    :pswitch_0
    invoke-static {p0, p2}, Lcom/viber/voip/util/gv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/viber/dexshared/ZXing$Result;Landroid/graphics/Bitmap;F)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->d:Lcom/viber/voip/qrcode/h;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/h;->a()V

    .line 222
    invoke-interface {p1}, Lcom/viber/dexshared/ZXing$Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-static {v1}, Lcom/viber/voip/api/q;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    .line 257
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Ljava/lang/String;ZLcom/viber/voip/v;)V

    goto :goto_0

    .line 235
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 237
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 239
    iput-object v1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->g:Landroid/net/Uri;

    .line 240
    new-instance v2, Lcom/viber/voip/qrcode/q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/viber/voip/qrcode/q;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    .line 241
    new-instance v3, Lcom/viber/voip/ui/a/c;

    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/viber/voip/ui/a/c;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c06eb

    invoke-virtual {v3, v4}, Lcom/viber/voip/ui/a/c;->a(I)Lcom/viber/voip/ui/a/c;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/viber/voip/ui/a/c;->b(Ljava/lang/CharSequence;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v3, 0x7f0c02b5

    new-instance v4, Lcom/viber/voip/qrcode/r;

    new-instance v5, Lcom/viber/voip/qrcode/m;

    invoke-direct {v5, p0}, Lcom/viber/voip/qrcode/m;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;)V

    invoke-direct {v4, p0, v0, v5}, Lcom/viber/voip/qrcode/r;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Landroid/content/Intent;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3, v4}, Lcom/viber/voip/ui/a/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    const v1, 0x7f0c02b6

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/a/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/a/c;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/c;->a()Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 252
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    const-string/jumbo v1, "not_viber_uri"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->i()V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 293
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    .line 294
    return-void

    .line 285
    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/api/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    return-object v0
.end method

.method c()Lcom/viber/voip/qrcode/e;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    return-object v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->b:Lcom/viber/voip/qrcode/ViewFinder;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ViewFinder;->invalidate()V

    .line 306
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Lcom/viber/voip/qrcode/s;->sendEmptyMessage(I)Z

    .line 310
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 175
    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Lcom/viber/voip/qrcode/s;->sendEmptyMessage(I)Z

    .line 180
    :cond_1
    new-instance v0, Lcom/viber/voip/qrcode/q;

    invoke-direct {v0, p0, v4}, Lcom/viber/voip/qrcode/q;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    .line 182
    new-instance v1, Lcom/viber/voip/ui/a/c;

    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/ui/a/c;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06d7

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->a(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c06d8

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->b(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c02b5

    new-instance v3, Lcom/viber/voip/qrcode/p;

    invoke-direct {v3, p0, v4}, Lcom/viber/voip/qrcode/p;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/ui/a/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c02b6

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/ui/a/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/a/c;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/a/c;->a()Lcom/viber/voip/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    .line 190
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->h:Lcom/viber/voip/ui/a/a;

    const-string/jumbo v1, "update_details"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {p0}, Lcom/viber/voip/util/gx;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x7f0703a7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->requestWindowFeature(J)V

    .line 78
    const v0, 0x7f03011a

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string/jumbo v0, "not_viber_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->g:Landroid/net/Uri;

    .line 84
    invoke-direct {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->f()V

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->e:Z

    .line 88
    new-instance v0, Lcom/viber/voip/qrcode/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/qrcode/h;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->d:Lcom/viber/voip/qrcode/h;

    .line 89
    const v0, 0x7f0703a4

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->a:Landroid/view/SurfaceView;

    .line 90
    const v0, 0x7f0703a5

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/qrcode/ViewFinder;

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->b:Lcom/viber/voip/qrcode/ViewFinder;

    .line 91
    const v0, 0x7f0703a7

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->d:Lcom/viber/voip/qrcode/h;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/h;->d()V

    .line 147
    invoke-super {p0}, Lcom/viber/voip/BaseAddFriendActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 201
    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->onBackPressed()V

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/s;->a()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->f:Lcom/viber/voip/qrcode/s;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->d:Lcom/viber/voip/qrcode/h;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/h;->b()V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/e;->b()V

    .line 136
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->e:Z

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 138
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 141
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/BaseAddFriendActivity;->onPause()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/viber/voip/BaseAddFriendActivity;->onResume()V

    .line 110
    new-instance v0, Lcom/viber/voip/qrcode/e;

    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ScannerActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/qrcode/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    .line 111
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->b:Lcom/viber/voip/qrcode/ViewFinder;

    iget-object v1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->c:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0, v1}, Lcom/viber/voip/qrcode/ViewFinder;->setCameraManager(Lcom/viber/voip/qrcode/e;)V

    .line 113
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 114
    iget-boolean v1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->e:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->d:Lcom/viber/voip/qrcode/h;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/h;->c()V

    .line 125
    return-void

    .line 120
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 121
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    const-string/jumbo v0, "not_viber_uri"

    iget-object v1, p0, Lcom/viber/voip/qrcode/ScannerActivity;->g:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->e:Z

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->e:Z

    .line 158
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 160
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/ScannerActivity;->e:Z

    .line 170
    return-void
.end method
