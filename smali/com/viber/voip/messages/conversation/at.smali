.class Lcom/viber/voip/messages/conversation/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/db;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/as;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;Z)V
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
    .line 50
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/as;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/as;->a(Lcom/viber/voip/messages/conversation/as;)Lcom/viber/voip/messages/conversation/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/av;->a()V

    .line 53
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
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
    .line 57
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/as;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->g()V

    .line 60
    :cond_0
    return-void
.end method

.method public c(Ljava/util/Set;Z)V
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
    .line 38
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/as;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/at;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/as;->a(Lcom/viber/voip/messages/conversation/as;)Lcom/viber/voip/messages/conversation/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/av;->a()V

    .line 41
    :cond_0
    return-void
.end method

.method public d(Ljava/util/Set;Z)V
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
    .line 46
    return-void
.end method
