.class Lcom/viber/voip/messages/ui/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/viber/voip/messages/ui/at;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/viber/voip/messages/ui/at;->a:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/ui/at;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Z)V

    .line 419
    iget-object v0, p0, Lcom/viber/voip/messages/ui/at;->a:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->c()V

    .line 421
    :cond_0
    return-void
.end method
