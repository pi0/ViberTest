.class Lcom/viber/voip/messages/conversation/ui/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bi;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bi;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bi;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bi;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bi;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
