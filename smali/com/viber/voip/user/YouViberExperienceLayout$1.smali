.class Lcom/viber/voip/user/YouViberExperienceLayout$1;
.super Lcom/viber/voip/messages/extras/fb/ad;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouViberExperienceLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouViberExperienceLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/user/YouViberExperienceLayout$1;->this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizationSuccess(Z)V
    .locals 2
    .parameter

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout$1;->this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

    #getter for: Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/viber/voip/user/YouViberExperienceLayout;->access$100(Lcom/viber/voip/user/YouViberExperienceLayout;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/YouViberExperienceLayout$1$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/YouViberExperienceLayout$1$1;-><init>(Lcom/viber/voip/user/YouViberExperienceLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    :cond_0
    return-void
.end method
