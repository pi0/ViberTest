.class Lcom/viber/voip/messages/conversation/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ad;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/w;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->f(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ab;->a:Lcom/viber/voip/messages/conversation/w;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/w;->f(Lcom/viber/voip/messages/conversation/w;)Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/conversation/h;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 175
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ac;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/conversation/ac;-><init>(Lcom/viber/voip/messages/conversation/ab;Lcom/viber/voip/messages/conversation/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method
