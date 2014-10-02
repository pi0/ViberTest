.class Lcom/viber/voip/messages/conversation/ui/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/cw;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/br;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/br;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->a(Z)Z

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/br;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->e()V

    goto :goto_0
.end method
