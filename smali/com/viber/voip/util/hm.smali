.class public Lcom/viber/voip/util/hm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/viber/voip/util/hr;

.field public static final b:Lcom/viber/voip/util/hr;

.field public static final c:Lcom/viber/voip/util/ht;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/viber/voip/util/hn;

    invoke-direct {v0}, Lcom/viber/voip/util/hn;-><init>()V

    sput-object v0, Lcom/viber/voip/util/hm;->a:Lcom/viber/voip/util/hr;

    .line 133
    new-instance v0, Lcom/viber/voip/util/ho;

    invoke-direct {v0}, Lcom/viber/voip/util/ho;-><init>()V

    sput-object v0, Lcom/viber/voip/util/hm;->b:Lcom/viber/voip/util/hr;

    .line 156
    new-instance v0, Lcom/viber/voip/util/hp;

    invoke-direct {v0}, Lcom/viber/voip/util/hp;-><init>()V

    sput-object v0, Lcom/viber/voip/util/hm;->c:Lcom/viber/voip/util/ht;

    return-void
.end method

.method private static final a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/viber/voip/util/ht;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    if-eqz p3, :cond_4

    .line 424
    invoke-interface {p3, p2, p0}, Lcom/viber/voip/util/ht;->a(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v9, v2

    .line 429
    :goto_1
    array-length v3, p1

    if-ge v9, v3, :cond_3

    .line 430
    aget-object v3, p1, v9

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    aget-object v6, p1, v9

    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v0

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_1
    return-object v0

    .line 429
    :cond_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method private static final a(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lcom/viber/voip/util/hu;->a()Lcom/viber/voip/util/hu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 315
    :cond_1
    return-void
.end method

.method public static a(Lcom/viber/voip/util/hs;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    invoke-static {p0}, Lcom/viber/voip/ui/style/a;->a(Lcom/viber/voip/util/hs;)V

    .line 573
    return-void
.end method

.method private static final a(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    new-instance v0, Lcom/viber/voip/ui/style/a;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/ui/style/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 419
    return-void
.end method

.method private static final a(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/util/bv;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 509
    new-instance v0, Lcom/viber/voip/util/hq;

    invoke-direct {v0}, Lcom/viber/voip/util/hq;-><init>()V

    .line 535
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 537
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 538
    const/4 v2, 0x0

    move v4, v0

    .line 540
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3

    .line 541
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bv;

    .line 542
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/util/bv;

    .line 545
    iget v5, v0, Lcom/viber/voip/util/bv;->b:I

    iget v6, v1, Lcom/viber/voip/util/bv;->b:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Lcom/viber/voip/util/bv;->c:I

    iget v6, v1, Lcom/viber/voip/util/bv;->b:I

    if-le v5, v6, :cond_2

    .line 546
    iget v5, v1, Lcom/viber/voip/util/bv;->c:I

    iget v6, v0, Lcom/viber/voip/util/bv;->c:I

    if-gt v5, v6, :cond_0

    .line 547
    add-int/lit8 v0, v2, 0x1

    .line 554
    :goto_1
    if-eq v0, v3, :cond_2

    .line 555
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 556
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 557
    goto :goto_0

    .line 548
    :cond_0
    iget v5, v0, Lcom/viber/voip/util/bv;->c:I

    iget v6, v0, Lcom/viber/voip/util/bv;->b:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/viber/voip/util/bv;->c:I

    iget v7, v1, Lcom/viber/voip/util/bv;->b:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 549
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 550
    :cond_1
    iget v5, v0, Lcom/viber/voip/util/bv;->c:I

    iget v0, v0, Lcom/viber/voip/util/bv;->b:I

    sub-int v0, v5, v0

    iget v5, v1, Lcom/viber/voip/util/bv;->c:I

    iget v1, v1, Lcom/viber/voip/util/bv;->b:I

    sub-int v1, v5, v1

    if-ge v0, v1, :cond_4

    move v0, v2

    .line 551
    goto :goto_1

    .line 562
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 563
    goto :goto_0

    .line 564
    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/util/bv;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_0
    invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 482
    if-gez v3, :cond_1

    .line 506
    :cond_0
    return-void

    .line 486
    :cond_1
    new-instance v4, Lcom/viber/voip/util/bv;

    invoke-direct {v4}, Lcom/viber/voip/util/bv;-><init>()V

    .line 487
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 488
    add-int/2addr v5, v3

    .line 490
    add-int/2addr v3, v0

    iput v3, v4, Lcom/viber/voip/util/bv;->b:I

    .line 491
    add-int v3, v0, v5

    iput v3, v4, Lcom/viber/voip/util/bv;->c:I

    .line 492
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    add-int/2addr v0, v5

    .line 498
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/viber/voip/util/bv;->a:Ljava/lang/String;

    .line 504
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/viber/voip/util/hr;Lcom/viber/voip/util/ht;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/util/bv;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/viber/voip/util/hr;",
            "Lcom/viber/voip/util/ht;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 457
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 459
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 461
    if-eqz p4, :cond_1

    invoke-interface {p4, v0, v2, v3}, Lcom/viber/voip/util/hr;->a(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    :cond_1
    new-instance v4, Lcom/viber/voip/util/bv;

    invoke-direct {v4}, Lcom/viber/voip/util/bv;-><init>()V

    .line 463
    invoke-interface {p1, v2, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Lcom/viber/voip/util/hm;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/viber/voip/util/ht;)Ljava/lang/String;

    move-result-object v5

    .line 464
    iput-object v5, v4, Lcom/viber/voip/util/bv;->a:Ljava/lang/String;

    .line 465
    iput v2, v4, Lcom/viber/voip/util/bv;->b:I

    .line 466
    iput v3, v4, Lcom/viber/voip/util/bv;->c:I

    .line 468
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_2
    return-void
.end method

.method public static final a(Landroid/text/Spannable;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lcom/viber/voip/ui/style/a;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/ui/style/a;

    .line 225
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 226
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 225
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 229
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 232
    sget-object v2, Lcom/viber/voip/util/fq;->c:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lcom/viber/voip/util/hm;->a:Lcom/viber/voip/util/hr;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/hm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/viber/voip/util/hr;Lcom/viber/voip/util/ht;)V

    .line 237
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 238
    sget-object v2, Lcom/viber/voip/util/fq;->f:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/hm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/viber/voip/util/hr;Lcom/viber/voip/util/ht;)V

    .line 243
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 244
    sget-object v2, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "tel:"

    aput-object v4, v3, v1

    sget-object v4, Lcom/viber/voip/util/hm;->b:Lcom/viber/voip/util/hr;

    sget-object v5, Lcom/viber/voip/util/hm;->c:Lcom/viber/voip/util/ht;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/hm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/viber/voip/util/hr;Lcom/viber/voip/util/ht;)V

    .line 249
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 250
    invoke-static {v0, p0}, Lcom/viber/voip/util/hm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 253
    :cond_5
    and-int/lit8 v1, p1, 0x16

    if-eqz v1, :cond_6

    .line 254
    sget-object v2, Lcom/viber/voip/util/fq;->b:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "viber://"

    aput-object v4, v3, v1

    sget-object v4, Lcom/viber/voip/util/hm;->a:Lcom/viber/voip/util/hr;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/hm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/viber/voip/util/hr;Lcom/viber/voip/util/ht;)V

    .line 258
    :cond_6
    invoke-static {v0}, Lcom/viber/voip/util/hm;->a(Ljava/util/ArrayList;)V

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 261
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 264
    :cond_7
    const/4 v1, 0x3

    const-string/jumbo v2, "ViberLinkify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addLinks text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", links.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/util/bv;

    .line 266
    iget-object v3, v1, Lcom/viber/voip/util/bv;->a:Ljava/lang/String;

    iget v4, v1, Lcom/viber/voip/util/bv;->b:I

    iget v1, v1, Lcom/viber/voip/util/bv;->c:I

    invoke-static {v3, v4, v1, p0}, Lcom/viber/voip/util/hm;->a(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 269
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static final a(Landroid/widget/TextView;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    if-nez p1, :cond_0

    move v0, v1

    .line 303
    :goto_0
    return v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 286
    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    .line 287
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Lcom/viber/voip/util/hm;->a(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-static {p0}, Lcom/viber/voip/util/hm;->a(Landroid/widget/TextView;)V

    move v0, v2

    .line 289
    goto :goto_0

    :cond_1
    move v0, v1

    .line 292
    goto :goto_0

    .line 294
    :cond_2
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 296
    invoke-static {v0, p1}, Lcom/viber/voip/util/hm;->a(Landroid/text/Spannable;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    invoke-static {p0}, Lcom/viber/voip/util/hm;->a(Landroid/widget/TextView;)V

    .line 298
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    .line 300
    goto :goto_0

    :cond_3
    move v0, v1

    .line 303
    goto :goto_0
.end method
