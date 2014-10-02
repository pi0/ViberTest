.class Lcom/viber/voip/messages/ui/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->w(Lcom/viber/voip/messages/ui/MessageComposerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->x(Lcom/viber/voip/messages/ui/MessageComposerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->y(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    .line 655
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->w(Lcom/viber/voip/messages/ui/MessageComposerView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z

    .line 656
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z

    .line 658
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bx;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->p(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    return-void

    :cond_1
    move v0, v1

    .line 655
    goto :goto_0
.end method
