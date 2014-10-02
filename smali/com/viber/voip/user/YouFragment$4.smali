.class Lcom/viber/voip/user/YouFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/user/FacebookDetailsListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$4;->this$0:Lcom/viber/voip/user/YouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/viber/voip/user/FacebookDetails;)V
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$4;->this$0:Lcom/viber/voip/user/YouFragment;

    #calls: Lcom/viber/voip/user/YouFragment;->onFacebookDetailsLoaded(Lcom/viber/voip/user/FacebookDetails;)V
    invoke-static {v0, p1}, Lcom/viber/voip/user/YouFragment;->access$300(Lcom/viber/voip/user/YouFragment;Lcom/viber/voip/user/FacebookDetails;)V

    .line 518
    return-void
.end method

.method public onLoadingCanceled()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public onLoadingError(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 523
    if-eqz p1, :cond_0

    const-string/jumbo v0, "Error validating access token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$4;->this$0:Lcom/viber/voip/user/YouFragment;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment;->onFacebookDetailsRequested()V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$4;->this$0:Lcom/viber/voip/user/YouFragment;

    const v1, 0x7f0c0449

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment;->showToast(I)V

    goto :goto_0
.end method
