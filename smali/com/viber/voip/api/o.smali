.class public Lcom/viber/voip/api/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/aa;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/viber/voip/api/o;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Lcom/viber/voip/api/y;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    array-length v0, p2

    if-ne v0, v4, :cond_3

    .line 493
    const-string/jumbo v0, "contactsviber"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    invoke-interface {p3, v3, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 528
    :goto_0
    return-void

    .line 498
    :cond_0
    const-string/jumbo v0, "contactsall"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    invoke-interface {p3, v3, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 503
    :cond_1
    const-string/jumbo v0, "contactsviberout"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v1, "filter"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    invoke-interface {p3, v3, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 508
    :cond_2
    aget-object v0, p2, v3

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    aget-object v0, p2, v3

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    new-instance v1, Lcom/viber/voip/api/p;

    invoke-direct {v1, p0, p3}, Lcom/viber/voip/api/p;-><init>(Lcom/viber/voip/api/o;Lcom/viber/voip/api/y;)V

    invoke-static {v0, v1, p3}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V

    goto :goto_0

    .line 527
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p3, v4, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method
