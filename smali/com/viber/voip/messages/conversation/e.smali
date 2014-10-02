.class Lcom/viber/voip/messages/conversation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/db;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;Z)V
    .locals 3
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
    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/d;->a(Lcom/viber/voip/messages/conversation/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/d;->b(Lcom/viber/voip/messages/conversation/d;)Lcom/viber/voip/messages/conversation/g;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/d;->a(Lcom/viber/voip/messages/conversation/d;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/conversation/g;->a(J)V

    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->g()V

    .line 36
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
    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/d;->a(Lcom/viber/voip/messages/conversation/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/e;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->g()V

    .line 43
    :cond_0
    return-void
.end method

.method public c(Ljava/util/Set;Z)V
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
    .line 48
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
    .line 53
    return-void
.end method
