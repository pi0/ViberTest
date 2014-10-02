.class Lcom/viber/voip/settings/ui/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/fb/s;

.field final synthetic b:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;Lcom/viber/voip/messages/extras/fb/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bn;->b:Lcom/viber/voip/settings/ui/bj;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/bn;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bn;->a:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->a()V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bn;->a:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bn;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-virtual {v1}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/settings/ui/bo;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/bo;-><init>(Lcom/viber/voip/settings/ui/bn;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    .line 173
    return-void
.end method
