.class Lcom/viber/voip/messages/conversation/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/h;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ab;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ab;Lcom/viber/voip/messages/conversation/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ac;->b:Lcom/viber/voip/messages/conversation/ab;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ac;->a:Lcom/viber/voip/messages/conversation/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ac;->b:Lcom/viber/voip/messages/conversation/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onObtain mCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ac;->b:Lcom/viber/voip/messages/conversation/ab;

    iget-object v2, v2, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ac;->b:Lcom/viber/voip/messages/conversation/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ac;->b:Lcom/viber/voip/messages/conversation/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ac;->a:Lcom/viber/voip/messages/conversation/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/conversation/ad;->a(Lcom/viber/voip/messages/conversation/h;ZZ)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ac;->b:Lcom/viber/voip/messages/conversation/ab;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ac;->a:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/w;J)V

    .line 184
    :cond_0
    return-void
.end method
