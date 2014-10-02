.class Lcom/viber/voip/messages/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/ao;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ao;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iput p2, p0, Lcom/viber/voip/messages/ui/ap;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;Z)V

    .line 308
    :try_start_0
    iget v0, p0, Lcom/viber/voip/messages/ui/ap;->a:I

    const-string/jumbo v1, "SVG"

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/b/h;->d(ILjava/lang/String;)Z

    move-result v0

    .line 309
    if-eqz v0, :cond_0

    const-string/jumbo v0, "SVG"

    .line 310
    :goto_0
    iget v1, p0, Lcom/viber/voip/messages/ui/ap;->a:I

    invoke-static {v1, v0}, Lcom/viber/voip/stickers/b/h;->d(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/ap;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;Z)V

    .line 325
    :goto_2
    return-void

    .line 309
    :cond_0
    :try_start_1
    sget v0, Lcom/viber/voip/stickers/an;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/aq;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/aq;-><init>(Lcom/viber/voip/messages/ui/ap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ap;->b:Lcom/viber/voip/messages/ui/ao;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;Z)V

    throw v0
.end method
