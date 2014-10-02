.class Lcom/viber/voip/stickers/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    iput p2, p0, Lcom/viber/voip/stickers/af;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 502
    iget-object v0, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    iget v1, p0, Lcom/viber/voip/stickers/af;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 507
    :cond_0
    iget v0, p0, Lcom/viber/voip/stickers/af;->a:I

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(I)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 508
    invoke-static {v0}, Lcom/viber/voip/market/y;->b(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/y;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/viber/voip/market/y;->b:Ljava/lang/String;

    .line 511
    :goto_1
    if-nez v1, :cond_4

    .line 514
    :try_start_0
    iget v1, p0, Lcom/viber/voip/stickers/af;->a:I

    invoke-static {v1}, Lcom/viber/voip/stickers/ay;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 524
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    iget v2, p0, Lcom/viber/voip/stickers/af;->a:I

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/e;

    .line 525
    if-nez v0, :cond_3

    .line 526
    new-instance v0, Lcom/viber/voip/stickers/c/e;

    iget v2, p0, Lcom/viber/voip/stickers/af;->a:I

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/stickers/c/e;-><init>(ILjava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v1}, Lcom/viber/voip/stickers/r;->e(Lcom/viber/voip/stickers/r;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/c/e;->b(I)V

    .line 529
    invoke-virtual {v0, v3}, Lcom/viber/voip/stickers/c/e;->a(Z)V

    .line 530
    iget-object v1, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    iget-object v2, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    iget-object v3, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v3}, Lcom/viber/voip/stickers/r;->f(Lcom/viber/voip/stickers/r;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/c/e;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Ljava/util/List;)Ljava/util/List;

    .line 534
    iget-object v1, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 542
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/d;)V

    goto :goto_0

    .line 509
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v2, 0x7f0c05f0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 515
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 519
    goto :goto_2

    .line 517
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 535
    :cond_3
    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v2}, Lcom/viber/voip/stickers/r;->e(Lcom/viber/voip/stickers/r;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/c/e;->b(I)V

    .line 537
    invoke-virtual {v0, v3}, Lcom/viber/voip/stickers/c/e;->d(Z)V

    .line 538
    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/c/e;->a(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/viber/voip/stickers/af;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method
