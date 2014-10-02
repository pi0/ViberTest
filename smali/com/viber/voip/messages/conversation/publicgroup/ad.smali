.class Lcom/viber/voip/messages/conversation/publicgroup/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ad;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 3
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ad;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/ao;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ad;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {v1, v2, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ao;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Lcom/viber/jni/controller/PhoneController;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Lcom/viber/voip/messages/conversation/publicgroup/ao;)Lcom/viber/voip/messages/conversation/publicgroup/ao;

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ad;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ad;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/publicgroup/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/o;->a(Lcom/viber/voip/messages/conversation/a/s;)V

    .line 317
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ad;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/publicgroup/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 318
    return-void
.end method
