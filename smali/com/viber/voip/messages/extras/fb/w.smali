.class Lcom/viber/voip/messages/extras/fb/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/w;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .parameter

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_2

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error postInviteOnWall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/w;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->d(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/messages/extras/fb/ag;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/w;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->d(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/messages/extras/fb/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/w;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/fb/ag;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/w;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/messages/extras/fb/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/w;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/messages/extras/fb/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/fb/ag;->a()V

    goto :goto_0
.end method
