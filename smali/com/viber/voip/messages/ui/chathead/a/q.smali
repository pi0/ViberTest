.class Lcom/viber/voip/messages/ui/chathead/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 11

    .prologue
    const/16 v10, 0x33

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->i(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 348
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->i(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 349
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 350
    :cond_0
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 351
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->i(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 355
    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 356
    if-lez v3, :cond_3

    .line 357
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v6, v0

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->j(Lcom/viber/voip/messages/ui/chathead/a/l;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const/16 v4, 0x38

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 363
    aget v1, v8, v7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    aget v1, v8, v9

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    const-string/jumbo v1, "aa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/a/l;->j(Lcom/viber/voip/messages/ui/chathead/a/l;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->k(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->d(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0, v9}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;Z)Z

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->o()V

    .line 380
    :cond_1
    return-void

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->d(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 371
    aget v1, v8, v7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 372
    aget v1, v8, v9

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 373
    const-string/jumbo v1, "aa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/a/l;->j(Lcom/viber/voip/messages/ui/chathead/a/l;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 375
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->k(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/q;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->d(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    move v6, v7

    goto/16 :goto_0
.end method
