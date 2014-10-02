.class Lcom/viber/voip/messages/extras/twitter/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/twitter/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/s;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/s;->a:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVerifierReceived() verifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 294
    if-eqz p1, :cond_0

    .line 295
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/u;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/s;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/extras/twitter/u;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Lcom/viber/voip/messages/extras/twitter/m;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/twitter/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/s;->a:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorReceived() message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/s;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V

    .line 303
    return-void
.end method
