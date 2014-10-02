.class public Lcom/viber/voip/billing/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/billing/s;

.field private b:D

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/m;)V
    .locals 3
    .parameter

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->b()Lcom/viber/voip/billing/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/j;->a:Lcom/viber/voip/billing/s;

    .line 388
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :try_start_0
    iget-object v0, p1, Lcom/viber/voip/billing/m;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "balance_as_string"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p1, Lcom/viber/voip/billing/m;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "balance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/billing/j;->b:D

    .line 395
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/j;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    const-string/jumbo v1, "json exception"

    invoke-static {v1, v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    sget-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/j;->a:Lcom/viber/voip/billing/s;

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 402
    const-string/jumbo v1, "NumberFormatException"

    invoke-static {v1, v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    sget-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/j;->a:Lcom/viber/voip/billing/s;

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->c()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 407
    const-string/jumbo v0, "invalid user while fetching balance, interpreting as zero balance"

    invoke-static {v0}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/billing/j;->d:Z

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/billing/j;->a:Lcom/viber/voip/billing/s;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/viber/voip/billing/j;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/viber/voip/billing/j;->a:Lcom/viber/voip/billing/s;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/viber/voip/billing/s;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/viber/voip/billing/j;->a:Lcom/viber/voip/billing/s;

    return-object v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/viber/voip/billing/j;->b:D

    const-wide v2, 0x3f747ae147ae147bL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/viber/voip/billing/j;->c:Ljava/lang/String;

    return-object v0
.end method
