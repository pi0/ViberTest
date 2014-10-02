.class Lcom/viber/voip/stickers/ah;
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
    .line 567
    iput-object p1, p0, Lcom/viber/voip/stickers/ah;->b:Lcom/viber/voip/stickers/r;

    iput p2, p0, Lcom/viber/voip/stickers/ah;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/viber/voip/stickers/ah;->b:Lcom/viber/voip/stickers/r;

    iget v1, p0, Lcom/viber/voip/stickers/ah;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/e;

    .line 571
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/c/e;->a(Z)V

    .line 576
    iget-object v1, p0, Lcom/viber/voip/stickers/ah;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 577
    iget-object v0, p0, Lcom/viber/voip/stickers/ah;->b:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 579
    :cond_0
    return-void
.end method
