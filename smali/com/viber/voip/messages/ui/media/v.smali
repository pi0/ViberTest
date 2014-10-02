.class Lcom/viber/voip/messages/ui/media/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/map/n;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/BalloonView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/BalloonView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/ui/media/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Z)Z

    .line 182
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->d(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/ui/media/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/BalloonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/BalloonView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/BalloonView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/BalloonView;->a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/BalloonView;

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/v;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/ui/media/aa;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_0
    return-void
.end method
