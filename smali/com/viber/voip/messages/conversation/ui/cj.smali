.class public Lcom/viber/voip/messages/conversation/ui/cj;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/messages/conversation/ui/cj;
    .locals 3
    .parameter

    .prologue
    .line 702
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/cj;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/ui/cj;-><init>()V

    .line 703
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 704
    const-string/jumbo v2, "tag"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cj;->setArguments(Landroid/os/Bundle;)V

    .line 706
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 711
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cj;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "tag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    const-string/jumbo v2, "loading_dialog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c04c3

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/cj;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 737
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    const-string/jumbo v2, "rename_dialog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c04c4

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/cj;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_2
    const-string/jumbo v2, "can_not_add_dialog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c04c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ee

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/cl;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/ui/cl;-><init>(Lcom/viber/voip/messages/conversation/ui/cj;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/ck;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/ck;-><init>(Lcom/viber/voip/messages/conversation/ui/cj;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method
