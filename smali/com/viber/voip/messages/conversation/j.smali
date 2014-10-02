.class Lcom/viber/voip/messages/conversation/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/db;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/i;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;Z)V
    .locals 1
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
    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 64
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
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
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 69
    return-void
.end method

.method public c(Ljava/util/Set;Z)V
    .locals 1
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
    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 74
    return-void
.end method

.method public d(Ljava/util/Set;Z)V
    .locals 1
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
    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/i;->a(Lcom/viber/voip/messages/conversation/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    iput-object p1, v0, Lcom/viber/voip/messages/conversation/i;->k:Ljava/util/Set;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/i;->b(Lcom/viber/voip/messages/conversation/i;)V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/j;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 83
    :cond_0
    return-void
.end method
