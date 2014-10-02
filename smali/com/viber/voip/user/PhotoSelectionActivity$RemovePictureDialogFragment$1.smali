.class Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$1;
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
    .line 836
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$1;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$1;->this$1:Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/PhotoSelectionActivity;

    #calls: Lcom/viber/voip/user/PhotoSelectionActivity;->closePhotoAndFinish()V
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$1900(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    .line 840
    return-void
.end method
