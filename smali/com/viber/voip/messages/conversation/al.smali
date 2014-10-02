.class Lcom/viber/voip/messages/conversation/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dh;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/al;->a:Lcom/viber/voip/messages/conversation/ai;

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
    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/al;->a:Lcom/viber/voip/messages/conversation/ai;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/ai;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/al;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 76
    :cond_0
    return-void
.end method

.method public onChangeOwner()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/al;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 86
    return-void
.end method

.method public onInitCache()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/al;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->g()V

    .line 91
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
    .line 81
    return-void
.end method
