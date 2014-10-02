.class Lcom/viber/voip/messages/ui/media/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/bf;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bg;->a:Lcom/viber/voip/messages/ui/media/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bg;->a:Lcom/viber/voip/messages/ui/media/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bg;->a:Lcom/viber/voip/messages/ui/media/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b()V

    .line 76
    :cond_0
    return-void
.end method
