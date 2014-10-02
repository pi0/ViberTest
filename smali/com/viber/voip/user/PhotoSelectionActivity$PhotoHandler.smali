.class final Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;
.super Lcom/viber/voip/user/PhotoSelectionHandler;
.source "SourceFile"


# instance fields
.field private final mListener:Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    .line 741
    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mIsDirectoryContact:Z
    invoke-static {p1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1400(Lcom/viber/voip/user/PhotoSelectionActivity;)Z

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/viber/voip/user/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 742
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler$PhotoListener;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;Lcom/viber/voip/user/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->mListener:Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

    .line 743
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/viber/voip/user/PhotoSelectionActivity$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->mListener:Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILjava/io/File;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1602(Lcom/viber/voip/user/PhotoSelectionActivity;Z)Z

    .line 753
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    #setter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1702(Lcom/viber/voip/user/PhotoSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/user/PhotoSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 755
    return-void

    .line 753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
