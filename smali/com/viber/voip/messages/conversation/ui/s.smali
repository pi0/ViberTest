.class Lcom/viber/voip/messages/conversation/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/du;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    const-string/jumbo v1, "Media mounted"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->g()V

    .line 112
    :cond_0
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->r()V

    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/s;->a:Lcom/viber/voip/messages/conversation/ui/m;

    const-string/jumbo v1, "Media unmounted"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->s()V

    .line 123
    return-void
.end method
