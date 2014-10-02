.class public Lcom/viber/voip/widget/e;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static a(IZ)Lcom/viber/voip/widget/e;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/voip/widget/e;

    invoke-direct {v0}, Lcom/viber/voip/widget/e;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/e;->setCancelable(Z)V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string/jumbo v2, "message_res_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/e;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/widget/e;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p0}, Lcom/viber/voip/widget/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/viber/voip/widget/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/widget/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 38
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 39
    return-object v1
.end method
