.class Lcom/viber/voip/settings/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/twitter/ab;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bk;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bk;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/settings/ui/bk;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/settings/ui/bl;

    invoke-direct {v1, p0}, Lcom/viber/voip/settings/ui/bl;-><init>(Lcom/viber/voip/settings/ui/bk;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method
