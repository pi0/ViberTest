.class Lcom/viber/voip/messages/ui/media/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bk;->a:Lcom/viber/voip/messages/ui/media/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bk;->a:Lcom/viber/voip/messages/ui/media/bj;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bk;->a:Lcom/viber/voip/messages/ui/media/bj;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b()V

    .line 96
    :cond_0
    return-void
.end method
