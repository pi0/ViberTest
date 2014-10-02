.class Lcom/viber/voip/messages/conversation/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/df;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/as;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/au;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    return-void
.end method

.method public a(JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    return-void
.end method

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
    .line 84
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/au;->a:Lcom/viber/voip/messages/conversation/as;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/as;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/au;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->g()V

    .line 87
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
    .line 67
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/au;->a:Lcom/viber/voip/messages/conversation/as;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/as;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/au;->a:Lcom/viber/voip/messages/conversation/as;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/as;->a(Lcom/viber/voip/messages/conversation/as;)Lcom/viber/voip/messages/conversation/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/av;->a()V

    .line 70
    :cond_0
    return-void
.end method
