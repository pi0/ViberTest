.class Lcom/viber/voip/stickers/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/viber/voip/stickers/ai;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/viber/voip/stickers/ai;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/a/a;->c()Ljava/util/List;

    move-result-object v0

    .line 591
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/e;

    .line 592
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/c/e;->a(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/viber/voip/stickers/ai;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 594
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/stickers/c/e;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/ai;->a:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 597
    return-void
.end method
