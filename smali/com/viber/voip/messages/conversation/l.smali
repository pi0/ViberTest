.class Lcom/viber/voip/messages/conversation/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dh;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/i;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/l;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/util/Set;Z)V
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
    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/l;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 119
    return-void
.end method

.method public onChangeOwner()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/l;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 129
    return-void
.end method

.method public onInitCache()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/l;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 134
    return-void
.end method

.method public onNewInfo(Ljava/util/Set;Z)V
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
    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/l;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 124
    return-void
.end method
