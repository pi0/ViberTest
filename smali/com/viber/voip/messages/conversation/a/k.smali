.class Lcom/viber/voip/messages/conversation/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/k;->a:Lcom/viber/voip/messages/conversation/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 391
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/k;->a:Lcom/viber/voip/messages/conversation/a/j;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/j;->a(Lcom/viber/voip/messages/conversation/a/j;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/k;->a:Lcom/viber/voip/messages/conversation/a/j;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/a/g;->b(Lcom/viber/voip/messages/conversation/a/g;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v2}, Lcom/viber/voip/block/i;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V

    .line 395
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/k;->a:Lcom/viber/voip/messages/conversation/a/j;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/a/j;->a(Z)V

    .line 396
    return-void
.end method
