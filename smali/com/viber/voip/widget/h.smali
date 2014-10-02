.class Lcom/viber/voip/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/MessageBar;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/MessageBar;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->c(Lcom/viber/voip/widget/MessageBar;)Lcom/viber/voip/widget/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->d(Lcom/viber/voip/widget/MessageBar;)Lcom/viber/voip/widget/MessageBar$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->c(Lcom/viber/voip/widget/MessageBar;)Lcom/viber/voip/widget/k;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v1}, Lcom/viber/voip/widget/MessageBar;->d(Lcom/viber/voip/widget/MessageBar;)Lcom/viber/voip/widget/MessageBar$Message;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/widget/MessageBar$Message;->g:Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Lcom/viber/voip/widget/k;->a(Landroid/os/Parcelable;)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/MessageBar;->b(Lcom/viber/voip/widget/MessageBar;Lcom/viber/voip/widget/MessageBar$Message;)Lcom/viber/voip/widget/MessageBar$Message;

    .line 188
    iget-object v0, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->f(Lcom/viber/voip/widget/MessageBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v1}, Lcom/viber/voip/widget/MessageBar;->e(Lcom/viber/voip/widget/MessageBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/widget/h;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->e(Lcom/viber/voip/widget/MessageBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    :cond_0
    return-void
.end method
