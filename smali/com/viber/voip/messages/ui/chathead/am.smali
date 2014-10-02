.class Lcom/viber/voip/messages/ui/chathead/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->l(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->m(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 352
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    const-string/jumbo v0, "onGlobalLayout: isFullScreen,!collapsed"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    goto :goto_0

    .line 357
    :cond_2
    const-string/jumbo v0, "onGlobalLayout: isFullScreen,collapsed"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->o(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->q(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "onGlobalLayout: !isFullScreen,mToRestoreAfterFullScreen"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/am;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    goto :goto_0
.end method
