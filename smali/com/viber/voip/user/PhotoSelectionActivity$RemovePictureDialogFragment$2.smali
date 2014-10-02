.class Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$2000(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #setter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$2002(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 827
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 828
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 829
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionActivity;->mMessagesManager:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v1, v1, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$2000(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/dn;->a(Landroid/net/Uri;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/PhotoSelectionActivity;

    #calls: Lcom/viber/voip/user/PhotoSelectionActivity;->closePhotoAndFinish()V
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1900(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    .line 832
    return-void
.end method
