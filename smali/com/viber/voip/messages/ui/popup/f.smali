.class Lcom/viber/voip/messages/ui/popup/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ac;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 502
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 503
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 505
    :goto_0
    if-eqz p1, :cond_2

    .line 506
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->n(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/h/d;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/g;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/popup/g;-><init>(Lcom/viber/voip/messages/ui/popup/f;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    :goto_1
    return-void

    .line 503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/f;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    goto :goto_1
.end method
