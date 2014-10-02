.class public Lcom/viber/voip/rakuten/z;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/rakuten/z;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/viber/voip/rakuten/z;

    invoke-direct {v0}, Lcom/viber/voip/rakuten/z;-><init>()V

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/z;->setCancelable(Z)V

    .line 227
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    const-string/jumbo v0, "RegistrationSuccessDialog.onCancel"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->i()V

    .line 250
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/z;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c078b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c078c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/viber/voip/rakuten/aa;

    invoke-direct {v2, p0}, Lcom/viber/voip/rakuten/aa;-><init>(Lcom/viber/voip/rakuten/z;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
