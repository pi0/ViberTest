.class Lcom/viber/voip/messages/conversation/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dh;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/aq;->a:Lcom/viber/voip/messages/conversation/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/util/Set;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    const-string/jumbo v0, "ParticipantLoader"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/aq;->a:Lcom/viber/voip/messages/conversation/ap;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ap;->a(Lcom/viber/voip/messages/conversation/ap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/aq;->a:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->g()V

    .line 39
    :cond_0
    return-void
.end method

.method public onChangeOwner()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/aq;->a:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->g()V

    .line 49
    return-void
.end method

.method public onInitCache()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/aq;->a:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->g()V

    .line 54
    return-void
.end method

.method public onNewInfo(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method
