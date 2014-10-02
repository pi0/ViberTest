.class Lcom/viber/voip/messages/conversation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dh;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/f;->a:Lcom/viber/voip/messages/conversation/d;

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
    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/f;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/d;->a(Lcom/viber/voip/messages/conversation/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/f;->a:Lcom/viber/voip/messages/conversation/d;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/d;->g()V

    .line 63
    :cond_0
    return-void
.end method

.method public onChangeOwner()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onInitCache()V
    .locals 0

    .prologue
    .line 78
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
    .line 68
    return-void
.end method
