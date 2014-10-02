.class Lcom/viber/voip/registration/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/az;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/az;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/viber/voip/registration/bb;->a:Lcom/viber/voip/registration/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    iget-object v0, p0, Lcom/viber/voip/registration/bb;->a:Lcom/viber/voip/registration/az;

    invoke-virtual {v0}, Lcom/viber/voip/registration/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/viber/voip/registration/bb;->a:Lcom/viber/voip/registration/az;

    invoke-virtual {v0}, Lcom/viber/voip/registration/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 269
    :cond_0
    return-void
.end method
