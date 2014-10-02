.class Lcom/viber/voip/stickers/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/viber/voip/stickers/ag;->b:Lcom/viber/voip/stickers/r;

    iput-object p2, p0, Lcom/viber/voip/stickers/ag;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Lcom/viber/voip/stickers/ag;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/f;

    .line 553
    iget-object v3, p0, Lcom/viber/voip/stickers/ag;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v3}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 556
    :cond_0
    if-lez v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/viber/voip/stickers/ag;->b:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 561
    :cond_1
    return-void
.end method
