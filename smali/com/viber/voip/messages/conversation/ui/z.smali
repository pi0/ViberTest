.class Lcom/viber/voip/messages/conversation/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/z;->c:Lcom/viber/voip/messages/conversation/ui/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/z;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/z;->c:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/z;->c:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/z;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/z;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 378
    return-void
.end method
