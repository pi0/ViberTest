.class Lcom/viber/voip/messages/conversation/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/db;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/am;->a:Lcom/viber/voip/messages/conversation/ai;

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
    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/am;->a:Lcom/viber/voip/messages/conversation/ai;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/ai;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/am;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 111
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
    .line 116
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
    .line 99
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
    .line 104
    return-void
.end method
