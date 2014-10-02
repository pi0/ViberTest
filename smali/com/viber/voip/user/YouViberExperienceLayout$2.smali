.class Lcom/viber/voip/user/YouViberExperienceLayout$2;
.super Lcom/viber/voip/messages/extras/twitter/t;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

.field final synthetic val$twitterManager:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouViberExperienceLayout;Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/viber/voip/user/YouViberExperienceLayout$2;->this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

    iput-object p2, p0, Lcom/viber/voip/user/YouViberExperienceLayout$2;->val$twitterManager:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/t;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthComplete()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout$2;->val$twitterManager:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout$2;->this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

    #getter for: Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/viber/voip/user/YouViberExperienceLayout;->access$100(Lcom/viber/voip/user/YouViberExperienceLayout;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/user/YouViberExperienceLayout$2;->this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

    invoke-virtual {v2}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 122
    return-void
.end method
