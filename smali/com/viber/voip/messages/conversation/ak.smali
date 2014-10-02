.class Lcom/viber/voip/messages/conversation/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/df;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/ai;->i:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    move-wide v1, p3

    move-wide v3, p5

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ai;->a(JJZ)V

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 44
    :cond_0
    return-void
.end method

.method public a(JJZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/ai;->i:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 58
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
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
    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/ai;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ak;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 51
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
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
    .line 62
    return-void
.end method
