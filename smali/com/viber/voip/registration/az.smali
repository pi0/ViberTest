.class public Lcom/viber/voip/registration/az;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 262
    new-instance v0, Lcom/viber/voip/registration/bb;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/bb;-><init>(Lcom/viber/voip/registration/az;)V

    iput-object v0, p0, Lcom/viber/voip/registration/az;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 215
    iget-object v0, p0, Lcom/viber/voip/registration/az;->a:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 216
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->dismiss()V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 223
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0656

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b6

    iget-object v2, p0, Lcom/viber/voip/registration/az;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0368

    new-instance v2, Lcom/viber/voip/registration/ba;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/ba;-><init>(Lcom/viber/voip/registration/az;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0367

    goto :goto_1

    .line 244
    :pswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "error_msg_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b5

    iget-object v2, p0, Lcom/viber/voip/registration/az;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c036a

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/az;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 251
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/viber/voip/registration/az;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0369

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
