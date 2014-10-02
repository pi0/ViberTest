.class Lcom/viber/voip/user/YouViberExperienceLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/viber/voip/user/YouViberExperienceLayout$1;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouViberExperienceLayout$1;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/user/YouViberExperienceLayout$1$1;->this$1:Lcom/viber/voip/user/YouViberExperienceLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout$1$1;->this$1:Lcom/viber/voip/user/YouViberExperienceLayout$1;

    iget-object v0, v0, Lcom/viber/voip/user/YouViberExperienceLayout$1;->this$0:Lcom/viber/voip/user/YouViberExperienceLayout;

    #calls: Lcom/viber/voip/user/YouViberExperienceLayout;->postFacebookInvite()V
    invoke-static {v0}, Lcom/viber/voip/user/YouViberExperienceLayout;->access$000(Lcom/viber/voip/user/YouViberExperienceLayout;)V

    .line 88
    return-void
.end method
