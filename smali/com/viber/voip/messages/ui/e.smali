.class Lcom/viber/voip/messages/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Lcom/viber/voip/messages/ui/ConversationActivity;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->c(Lcom/viber/voip/messages/ui/ConversationActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/ConversationActivity;->a(Lcom/viber/voip/messages/ui/ConversationActivity;Z)Z

    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->d(Lcom/viber/voip/messages/ui/ConversationActivity;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/e;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Lcom/viber/voip/messages/ui/ConversationActivity;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/ui/ConversationActivity;->a(Lcom/viber/voip/messages/ui/ConversationActivity;Lcom/viber/voip/messages/conversation/h;Z)V

    .line 421
    return-void
.end method
