.class Lcom/viber/voip/messages/conversation/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/ui/f;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/be;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/be;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->k()V

    .line 205
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/be;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m()V

    .line 210
    return-void
.end method
