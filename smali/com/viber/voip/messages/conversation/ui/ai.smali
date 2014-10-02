.class Lcom/viber/voip/messages/conversation/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ah;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ai;->a:Lcom/viber/voip/messages/conversation/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ai;->a:Lcom/viber/voip/messages/conversation/ui/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ah;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->g:Lcom/viber/voip/messages/conversation/ui/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/b;->a(Z)V

    .line 757
    return-void
.end method
