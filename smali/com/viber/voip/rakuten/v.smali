.class public Lcom/viber/voip/rakuten/v;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/rakuten/v;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/viber/voip/rakuten/v;

    invoke-direct {v0}, Lcom/viber/voip/rakuten/v;-><init>()V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string/jumbo v2, "phone_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "account_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/v;->setArguments(Landroid/os/Bundle;)V

    .line 152
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 187
    const-string/jumbo v0, "ConfirmationDialog.onCancel"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->f()V

    .line 189
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "account_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/v;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0787

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/v;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0788

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/viber/voip/rakuten/x;

    invoke-direct {v2, p0}, Lcom/viber/voip/rakuten/x;-><init>(Lcom/viber/voip/rakuten/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/viber/voip/rakuten/w;

    invoke-direct {v2, p0}, Lcom/viber/voip/rakuten/w;-><init>(Lcom/viber/voip/rakuten/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
