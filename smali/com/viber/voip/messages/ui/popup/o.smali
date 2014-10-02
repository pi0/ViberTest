.class Lcom/viber/voip/messages/ui/popup/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

.field final synthetic b:Lcom/viber/voip/messages/ui/popup/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/n;Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/popup/o;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 434
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 435
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 436
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 437
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget v1, v1, Lcom/viber/voip/messages/ui/popup/n;->q:I

    if-le v0, v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;I)I

    .line 442
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iput v0, v1, Lcom/viber/voip/messages/ui/popup/n;->q:I

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    const-string/jumbo v1, "onGlobalLayout,keyboard is opened"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/popup/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/popup/p;-><init>(Lcom/viber/voip/messages/ui/popup/o;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 453
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 458
    :cond_2
    :goto_1
    return-void

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget v1, v1, Lcom/viber/voip/messages/ui/popup/n;->q:I

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1, v3}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;I)I

    goto :goto_0

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/o;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
