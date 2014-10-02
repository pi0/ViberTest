.class Lcom/viber/voip/messages/ui/chathead/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/c;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/c;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->a(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/c;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->b(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/c;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    check-cast p1, Lcom/viber/voip/messages/conversation/ap;

    invoke-static {v0, p1}, Lcom/viber/voip/util/gj;->a(ILcom/viber/voip/messages/conversation/ap;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/c;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->a(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mParticipantsCallback,conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/c;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/a/b;->d(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mGroupParticipantsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method
