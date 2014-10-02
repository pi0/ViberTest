.class public Lcom/viber/voip/rakuten/y;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/rakuten/y;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/viber/voip/rakuten/y;

    invoke-direct {v0}, Lcom/viber/voip/rakuten/y;-><init>()V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/y;->setCancelable(Z)V

    .line 129
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 134
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/viber/voip/rakuten/y;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/y;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0786

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 138
    return-object v0
.end method
