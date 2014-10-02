.class Lcom/viber/voip/user/YouFragment$5;
.super Lcom/viber/voip/messages/extras/fb/ad;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment;

.field final synthetic val$facebookManager:Lcom/viber/voip/messages/extras/fb/s;

.field final synthetic val$listener:Lcom/viber/voip/user/FacebookDetailsListener;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment;Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$5;->this$0:Lcom/viber/voip/user/YouFragment;

    iput-object p2, p0, Lcom/viber/voip/user/YouFragment$5;->val$listener:Lcom/viber/voip/user/FacebookDetailsListener;

    iput-object p3, p0, Lcom/viber/voip/user/YouFragment$5;->val$facebookManager:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacebookProfileStored()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$5;->this$0:Lcom/viber/voip/user/YouFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthorizationSuccess: thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment;->log(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$5;->this$0:Lcom/viber/voip/user/YouFragment;

    iget-object v1, p0, Lcom/viber/voip/user/YouFragment$5;->val$listener:Lcom/viber/voip/user/FacebookDetailsListener;

    iget-object v2, p0, Lcom/viber/voip/user/YouFragment$5;->val$facebookManager:Lcom/viber/voip/messages/extras/fb/s;

    #calls: Lcom/viber/voip/user/YouFragment;->loadFacebookDetais(Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V
    invoke-static {v0, v1, v2}, Lcom/viber/voip/user/YouFragment;->access$400(Lcom/viber/voip/user/YouFragment;Lcom/viber/voip/user/FacebookDetailsListener;Lcom/viber/voip/messages/extras/fb/s;)V

    .line 597
    return-void
.end method
