.class final Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;
.super Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/viber/voip/user/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;Lcom/viber/voip/user/PhotoSelectionActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1700(Lcom/viber/voip/user/PhotoSelectionActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEditName()V
    .locals 3

    .prologue
    .line 786
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 787
    const-string/jumbo v1, "action"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 789
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finish()V

    .line 790
    return-void
.end method

.method public onImportFromFB()V
    .locals 3

    .prologue
    .line 794
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 795
    const-string/jumbo v1, "action"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 797
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finish()V

    .line 798
    return-void
.end method

.method public onPhotoSelected(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 760
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mImageFetcher:Lcom/viber/voip/util/b/w;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1800(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)V

    .line 761
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    .line 762
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finish()V

    .line 763
    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1600(Lcom/viber/voip/user/PhotoSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finish()V

    .line 775
    :cond_0
    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1602(Lcom/viber/voip/user/PhotoSelectionActivity;Z)Z

    .line 780
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    .line 781
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 782
    return-void
.end method
