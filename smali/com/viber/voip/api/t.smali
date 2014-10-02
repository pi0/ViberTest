.class public Lcom/viber/voip/api/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/aa;


# instance fields
.field public final a:[Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/viber/voip/api/t;->b:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ptt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "menu"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "keyboard"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "stickers"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/api/t;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Lcom/viber/voip/api/y;Landroid/net/Uri;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 550
    array-length v0, p2

    if-lt v0, v5, :cond_d

    .line 551
    const-string/jumbo v0, "chats"

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.MESSAGES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 647
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string/jumbo v0, "publicexplore"

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/api/t;->b:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c(Lcom/viber/voip/api/ViberUrlHandlerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 557
    :cond_1
    const-string/jumbo v0, "public"

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/api/t;->b:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c(Lcom/viber/voip/api/ViberUrlHandlerActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p2

    if-ne v0, v5, :cond_2

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PUBLIC_GROUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 560
    :cond_2
    aget-object v0, p2, v1

    const-string/jumbo v2, "chat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, p2, v1

    const-string/jumbo v2, "public"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/viber/voip/api/t;->b:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->c(Lcom/viber/voip/api/ViberUrlHandlerActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 561
    :cond_3
    array-length v0, p2

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_1
    aget-object v0, p2, v0

    const-string/jumbo v2, "+"

    const-string/jumbo v3, "%2B"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#"

    const-string/jumbo v3, "%23"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 562
    const-string/jumbo v2, "number"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 563
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    const-string/jumbo v3, "draft"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    aget-object v0, p2, v1

    const-string/jumbo v4, "chat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    aget-object v0, p2, v1

    const-string/jumbo v4, "public"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 567
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 568
    if-eqz v3, :cond_6

    .line 569
    const-string/jumbo v0, "\\?.*$"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    const-string/jumbo v0, "draft"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_6
    array-length v0, p2

    const/4 v7, 0x2

    if-ne v0, v7, :cond_7

    .line 573
    aget-object v0, p2, v5

    const-string/jumbo v7, "info"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 574
    const-string/jumbo v0, "open_conversation_info"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    :cond_7
    aget-object v0, p2, v1

    const-string/jumbo v7, "chat"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 585
    new-instance v0, Lcom/viber/voip/api/u;

    invoke-direct {v0, p0, v3, v4, p3}, Lcom/viber/voip/api/u;-><init>(Lcom/viber/voip/api/t;Ljava/lang/String;Landroid/os/Bundle;Lcom/viber/voip/api/y;)V

    invoke-static {v6, v0, p3}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V

    goto/16 :goto_0

    :cond_8
    move v0, v5

    .line 561
    goto/16 :goto_1

    .line 575
    :cond_9
    aget-object v0, p2, v1

    const-string/jumbo v7, "public"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    aget-object v0, p2, v5

    const-string/jumbo v7, "ptt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_a
    move v0, v1

    .line 576
    :goto_2
    iget-object v7, p0, Lcom/viber/voip/api/t;->a:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_7

    .line 577
    aget-object v7, p2, v5

    iget-object v8, p0, Lcom/viber/voip/api/t;->a:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 578
    const-string/jumbo v7, "open_custom_menu"

    iget-object v8, p0, Lcom/viber/voip/api/t;->a:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 605
    :cond_c
    aget-object v0, p2, v1

    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 607
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->b()V

    .line 609
    new-instance v0, Lcom/viber/voip/api/v;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/api/v;-><init>(Lcom/viber/voip/api/t;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/viber/voip/api/y;)V

    invoke-static {v2, v0, p3}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Ljava/lang/String;Lcom/viber/voip/api/w;Lcom/viber/voip/api/y;)V

    goto/16 :goto_0

    .line 646
    :cond_d
    const/4 v0, 0x0

    invoke-interface {p3, v5, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method
