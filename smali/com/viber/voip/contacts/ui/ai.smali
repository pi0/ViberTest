.class public Lcom/viber/voip/contacts/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/Integer;)I
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0c0308

    .line 287
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    :goto_0
    :pswitch_0
    return v0

    .line 289
    :pswitch_1
    const v0, 0x7f0c0307

    goto :goto_0

    .line 293
    :pswitch_2
    const v0, 0x7f0c0309

    goto :goto_0

    .line 295
    :pswitch_3
    const v0, 0x7f0c030a

    goto :goto_0

    .line 297
    :pswitch_4
    const v0, 0x7f0c030b

    goto :goto_0

    .line 299
    :pswitch_5
    const v0, 0x7f0c030c

    goto :goto_0

    .line 301
    :pswitch_6
    const v0, 0x7f0c030d

    goto :goto_0

    .line 303
    :pswitch_7
    const v0, 0x7f0c030e

    goto :goto_0

    .line 305
    :pswitch_8
    const v0, 0x7f0c030f

    goto :goto_0

    .line 307
    :pswitch_9
    const v0, 0x7f0c0310

    goto :goto_0

    .line 309
    :pswitch_a
    const v0, 0x7f0c0311

    goto :goto_0

    .line 311
    :pswitch_b
    const v0, 0x7f0c0312

    goto :goto_0

    .line 313
    :pswitch_c
    const v0, 0x7f0c0313

    goto :goto_0

    .line 315
    :pswitch_d
    const v0, 0x7f0c0314

    goto :goto_0

    .line 317
    :pswitch_e
    const v0, 0x7f0c0315

    goto :goto_0

    .line 319
    :pswitch_f
    const v0, 0x7f0c0316

    goto :goto_0

    .line 321
    :pswitch_10
    const v0, 0x7f0c0317

    goto :goto_0

    .line 323
    :pswitch_11
    const v0, 0x7f0c0318

    goto :goto_0

    .line 325
    :pswitch_12
    const v0, 0x7f0c0319

    goto :goto_0

    .line 327
    :pswitch_13
    const v0, 0x7f0c031a

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-object p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ai;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/viber/voip/contacts/d/a;

    invoke-direct {v0}, Lcom/viber/voip/contacts/d/a;-><init>()V

    .line 84
    sget-object v1, Lcom/viber/voip/contacts/d/b;->c:Lcom/viber/voip/contacts/d/b;

    iput-object v1, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    .line 85
    const v1, 0x7f020315

    iput v1, v0, Lcom/viber/voip/contacts/d/a;->g:I

    .line 86
    const v1, 0x7f0c02ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/viber/voip/contacts/ui/aj;

    invoke-direct {v1, p2}, Lcom/viber/voip/contacts/ui/aj;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/viber/voip/contacts/d/a;->h:Landroid/view/View$OnClickListener;

    .line 93
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V
    .locals 8
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
            "Lcom/viber/voip/contacts/d/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/d;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 35
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V
    .locals 8
    .parameter
    .parameter
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
            "Lcom/viber/voip/contacts/d/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/d;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v2, Lcom/viber/voip/contacts/d/a;

    invoke-direct {v2}, Lcom/viber/voip/contacts/d/a;-><init>()V

    .line 42
    sget-object v0, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    iput-object v0, v2, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/viber/voip/contacts/d/a;->e:Ljava/lang/String;

    .line 44
    iput-object p4, v2, Lcom/viber/voip/contacts/d/a;->b:Ljava/lang/String;

    .line 45
    iput-object p5, v2, Lcom/viber/voip/contacts/d/a;->c:Ljava/lang/String;

    .line 52
    if-eqz p7, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    const-string/jumbo v1, "viber_out"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    :goto_0
    iput-object v0, v2, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    .line 63
    iput-object p2, v2, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    .line 64
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v7, Lcom/viber/voip/contacts/d/a;

    invoke-direct {v7}, Lcom/viber/voip/contacts/d/a;-><init>()V

    .line 67
    sget-object v0, Lcom/viber/voip/contacts/d/b;->b:Lcom/viber/voip/contacts/d/b;

    iput-object v0, v7, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    .line 68
    iput-object p4, v7, Lcom/viber/voip/contacts/d/a;->b:Ljava/lang/String;

    .line 69
    iput-object p5, v7, Lcom/viber/voip/contacts/d/a;->c:Ljava/lang/String;

    .line 70
    const v0, 0x7f0c02fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/contacts/d/a;->e:Ljava/lang/String;

    .line 71
    if-nez p6, :cond_2

    .line 72
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    .line 77
    :goto_1
    iget-object v0, v7, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    iput-object p2, v7, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    .line 79
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    return-void

    .line 57
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CALL"

    const-string/jumbo v4, "tel"

    if-nez p3, :cond_1

    move-object v0, p2

    :goto_2
    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 57
    goto :goto_2

    .line 74
    :cond_2
    invoke-interface {p6}, Lcom/viber/voip/contacts/b/d;->getId()J

    move-result-wide v1

    invoke-interface {p6}, Lcom/viber/voip/contacts/b/d;->c()J

    move-result-wide v3

    invoke-interface {p6}, Lcom/viber/voip/contacts/b/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p6}, Lcom/viber/voip/contacts/b/d;->b()Landroid/net/Uri;

    move-result-object v6

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    goto :goto_1
.end method
