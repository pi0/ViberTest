.class Lcom/viber/voip/messages/conversation/publicgroup/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ae;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ae;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hc;->d(Landroid/content/Context;)V

    .line 347
    return-void
.end method
