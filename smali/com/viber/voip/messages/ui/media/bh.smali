.class Lcom/viber/voip/messages/ui/media/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/image/imagezoom/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/bf;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bh;->a:Lcom/viber/voip/messages/ui/media/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bh;->a:Lcom/viber/voip/messages/ui/media/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bh;->a:Lcom/viber/voip/messages/ui/media/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Z)V

    .line 107
    :cond_0
    return-void
.end method
