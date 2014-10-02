.class Lcom/viber/voip/messages/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/viber/voip/messages/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/viber/voip/messages/ui/n;->b:Lcom/viber/voip/messages/ui/k;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/n;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/ui/n;->b:Lcom/viber/voip/messages/ui/k;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/n;->b:Lcom/viber/voip/messages/ui/k;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/k;->b(Lcom/viber/voip/messages/ui/k;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/n;->b:Lcom/viber/voip/messages/ui/k;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/n;->b:Lcom/viber/voip/messages/ui/k;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/k;->b(Lcom/viber/voip/messages/ui/k;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/ui/n;->b:Lcom/viber/voip/messages/ui/k;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/n;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/k;->a(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V

    goto :goto_0
.end method
