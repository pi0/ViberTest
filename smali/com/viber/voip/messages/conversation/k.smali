.class Lcom/viber/voip/messages/conversation/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/df;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/i;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/k;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/k;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 91
    return-void
.end method

.method public a(JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method

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
    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/k;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 96
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
    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/k;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->g()V

    .line 101
    return-void
.end method
