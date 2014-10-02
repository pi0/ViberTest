.class Lcom/viber/voip/stickers/ad;
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
    .line 154
    iput-object p1, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 160
    iget-object v0, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/as;->a()V

    .line 162
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->t()V

    .line 164
    iget-object v0, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/r;->v()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;IZ)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/stickers/ad;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->c(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b;->c()V

    .line 167
    :cond_0
    return-void
.end method
