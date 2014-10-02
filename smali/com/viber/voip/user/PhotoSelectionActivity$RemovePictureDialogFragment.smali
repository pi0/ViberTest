.class public Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;
    .locals 2

    .prologue
    .line 807
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    .line 811
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 818
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0487

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0486

    new-instance v2, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$2;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b6

    new-instance v2, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment$1;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity$RemovePictureDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
