.class public Lcom/viber/voip/api/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/aa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 476
    invoke-static {p0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-string/jumbo v0, "number"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viber://add?number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Lcom/viber/voip/api/y;Landroid/net/Uri;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v2, 0x400

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 338
    array-length v0, p2

    if-ne v0, v3, :cond_5

    .line 339
    const-string/jumbo v0, "calls"

    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 462
    :goto_0
    return-void

    .line 342
    :cond_0
    aget-object v0, p2, v4

    const-string/jumbo v1, "keypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string/jumbo v0, "keypad"

    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "open_keypad_number"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 350
    :cond_1
    aget-object v0, p2, v4

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 353
    new-instance v1, Lcom/viber/voip/api/r;

    invoke-direct {v1, p0, v0, p3}, Lcom/viber/voip/api/r;-><init>(Lcom/viber/voip/api/q;Ljava/lang/String;Lcom/viber/voip/api/y;)V

    invoke-static {v0, v1, p3}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V

    goto :goto_0

    .line 368
    :cond_2
    const-string/jumbo v0, "more"

    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 371
    :cond_3
    aget-object v0, p2, v4

    const-string/jumbo v1, "setrtoken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    const-string/jumbo v0, "t"

    invoke-virtual {p4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "r"

    invoke-virtual {p4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/viber/voip/rakuten/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/WelcomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 379
    :cond_4
    aget-object v0, p2, v4

    const-string/jumbo v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 380
    aget-object v0, p2, v4

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 381
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 383
    new-instance v1, Lcom/viber/voip/api/s;

    invoke-direct {v1, p0, p1, p3}, Lcom/viber/voip/api/s;-><init>(Lcom/viber/voip/api/q;Landroid/content/Context;Lcom/viber/voip/api/y;)V

    invoke-static {v0, v1, p3}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V

    goto/16 :goto_0

    .line 396
    :cond_5
    array-length v0, p2

    if-lt v0, v5, :cond_13

    .line 397
    const-string/jumbo v0, "settings"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 398
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.viber.voip.action.SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    array-length v0, p2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 400
    const/4 v0, -0x1

    .line 401
    const-string/jumbo v2, "privacy"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 402
    const v0, 0x7f0c029e

    .line 414
    :cond_6
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 415
    const-string/jumbo v2, "selected_item"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    :cond_7
    invoke-interface {p3, v4, v1}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    :cond_8
    const-string/jumbo v2, "notifications"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 404
    const v0, 0x7f0c029f

    goto :goto_1

    .line 405
    :cond_9
    const-string/jumbo v2, "callsandmessages"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 406
    const v0, 0x7f0c02a0

    goto :goto_1

    .line 407
    :cond_a
    const-string/jumbo v2, "media"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 408
    const v0, 0x7f0c02a1

    goto :goto_1

    .line 409
    :cond_b
    const-string/jumbo v2, "display"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 410
    const v0, 0x7f0c02a2

    goto :goto_1

    .line 411
    :cond_c
    const-string/jumbo v2, "general"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 412
    const v0, 0x7f0c02a3

    goto :goto_1

    .line 420
    :cond_d
    const-string/jumbo v0, "about"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ABOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 423
    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 425
    :cond_e
    const-string/jumbo v0, "viberout"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 430
    :cond_f
    aget-object v0, p2, v3

    const-string/jumbo v1, "stickermarket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 431
    array-length v0, p2

    if-ne v0, v5, :cond_11

    .line 432
    const-string/jumbo v0, "stickermarket"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 433
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->a()V

    .line 434
    invoke-interface {p3, v4, v6}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :cond_10
    aget-object v0, p2, v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 438
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 440
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {p3, v4, v1}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 445
    :cond_11
    aget-object v0, p2, v5

    const-string/jumbo v1, "stickers."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 447
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {p3, v4, v1}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 451
    :cond_12
    aget-object v0, p2, v3

    const-string/jumbo v1, "rakuten"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 452
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 454
    invoke-virtual {p4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/rakuten/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    invoke-interface {p3, v4, v6}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    :cond_13
    invoke-interface {p3, v3, v6}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method
