.class public final Lcom/viber/voip/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/viber/voip/util/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/util/w;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lcom/viber/voip/util/w;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 115
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "display_name"

    aput-object v3, v2, v0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 130
    :cond_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 132
    return-object p2

    .line 130
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(ZJ)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 472
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    .line 473
    const-wide/32 v5, 0xea60

    div-long v5, v1, v5

    .line 474
    const-wide/32 v7, 0x5265c00

    div-long/2addr v1, v7

    .line 476
    const-wide/16 v7, 0x3e8

    div-long v7, p1, v7

    .line 477
    const-wide/32 v9, 0xea60

    div-long v9, p1, v9

    .line 478
    const-wide/32 v11, 0x5265c00

    div-long v11, p1, v11

    .line 482
    sub-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    if-eqz p0, :cond_1

    .line 486
    :cond_0
    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 487
    :cond_1
    sub-long v3, v1, v11

    const-wide/16 v7, 0x1

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    .line 489
    const v1, 0x7f0c040a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v0, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_2
    sub-long/2addr v1, v11

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 493
    const v1, 0x7f0c0409

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_3
    sub-long v1, v5, v9

    const-wide/16 v3, 0x3c

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 497
    const v1, 0x7f0c0408

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_4
    sub-long v1, v5, v9

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 501
    const v1, 0x7f0c0407

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-long v4, v5, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_5
    const v1, 0x7f0c0406

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/contacts/b/b;Lcom/viber/voip/util/ah;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    new-instance v0, Lcom/viber/voip/util/aa;

    invoke-direct {v0, p2, p0}, Lcom/viber/voip/util/aa;-><init>(Lcom/viber/voip/util/ah;Landroid/content/Context;)V

    invoke-interface {p1, p0, v0}, Lcom/viber/voip/contacts/b/b;->a(Landroid/content/Context;Lcom/viber/voip/contacts/b/c;)V

    .line 366
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;Lcom/viber/voip/util/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/util/ai;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;ZLcom/viber/voip/util/ai;)V

    .line 370
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;ZLcom/viber/voip/util/ai;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/viber/voip/util/ai;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;ZZLcom/viber/voip/util/ai;)V

    .line 381
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;ZZLcom/viber/voip/util/ai;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/viber/voip/util/ai;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 384
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 386
    new-array v0, v3, [Lcom/viber/voip/contacts/b/g;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/contacts/b/g;

    .line 388
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/g;

    .line 389
    if-eqz p2, :cond_0

    .line 390
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    const-string/jumbo v2, ""

    .line 395
    if-eqz p4, :cond_1

    .line 396
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v2, v7}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ": "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 403
    :goto_1
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 406
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 407
    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v3, v0}, Lcom/viber/voip/util/ai;->a(ZLjava/lang/String;)V

    .line 465
    :cond_4
    :goto_2
    return-void

    .line 408
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v8, :cond_4

    .line 410
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/viber/voip/util/af;->a:Lcom/viber/voip/util/af;

    .line 413
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0522

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 414
    sget-object v2, Lcom/viber/voip/util/x;->a:[I

    invoke-virtual {v1}, Lcom/viber/voip/util/af;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 455
    :goto_4
    if-eqz p3, :cond_6

    .line 456
    const v0, 0x7f0c02b6

    new-instance v1, Lcom/viber/voip/util/ae;

    invoke-direct {v1}, Lcom/viber/voip/util/ae;-><init>()V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    :cond_6
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 410
    :cond_7
    sget-object v1, Lcom/viber/voip/util/af;->b:Lcom/viber/voip/util/af;

    goto :goto_3

    .line 416
    :pswitch_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/viber/voip/util/ac;

    invoke-direct {v2, v0, p5}, Lcom/viber/voip/util/ac;-><init>([Lcom/viber/voip/contacts/b/g;Lcom/viber/voip/util/ai;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 429
    :pswitch_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Z

    move v2, v3

    .line 430
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 431
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v7, v2

    .line 430
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 433
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 434
    new-instance v2, Lcom/viber/voip/util/ad;

    invoke-direct {v2, v0, p5}, Lcom/viber/voip/util/ad;-><init>([Lcom/viber/voip/contacts/b/g;Lcom/viber/voip/util/ai;)V

    invoke-virtual {v6, v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_4

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/ag;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/y;

    invoke-direct {v1, p1, p2}, Lcom/viber/voip/util/y;-><init>(Ljava/lang/String;Lcom/viber/voip/util/ag;)V

    invoke-interface {v0, p0, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 289
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/ag;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/z;

    invoke-direct {v1, p1, p2}, Lcom/viber/voip/util/z;-><init>(Ljava/lang/String;Lcom/viber/voip/util/ag;)V

    invoke-interface {v0, p0, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 308
    return-void
.end method
