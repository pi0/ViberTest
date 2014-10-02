.class Lcom/viber/voip/messages/conversation/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/aa;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/am;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/am;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/an;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/an;-><init>(Lcom/viber/voip/messages/conversation/ui/am;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1197
    return-void
.end method
