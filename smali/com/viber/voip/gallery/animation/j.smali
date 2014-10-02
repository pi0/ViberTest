.class Lcom/viber/voip/gallery/animation/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/viber/voip/gallery/animation/x;

.field final synthetic d:Lcom/viber/voip/gallery/animation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/d;ILandroid/view/View;Lcom/viber/voip/gallery/animation/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    iput p2, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    iput-object p3, p0, Lcom/viber/voip/gallery/animation/j;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/viber/voip/gallery/animation/j;->c:Lcom/viber/voip/gallery/animation/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->f(Lcom/viber/voip/gallery/animation/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    iget v1, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;I)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->g(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/c;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    iget-object v2, p0, Lcom/viber/voip/gallery/animation/j;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/gallery/animation/c;->c(ILandroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0, v3}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->h(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 259
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->h(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->h(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->i(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->h(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/d;->b(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->b(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 269
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/d;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v1

    iget v0, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    iget-object v2, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v2}, Lcom/viber/voip/gallery/animation/d;->j(Lcom/viber/voip/gallery/animation/d;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setCurrentItem(I)V

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->c:Lcom/viber/voip/gallery/animation/x;

    invoke-interface {v0}, Lcom/viber/voip/gallery/animation/x;->a()V

    .line 273
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 275
    iget v0, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    iget v1, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/d;->onPageSelected(I)V

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->f(Lcom/viber/voip/gallery/animation/d;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/j;->d:Lcom/viber/voip/gallery/animation/d;

    iget v1, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/d;->b(Lcom/viber/voip/gallery/animation/d;I)V

    .line 279
    :cond_5
    return-void

    .line 270
    :cond_6
    iget v0, p0, Lcom/viber/voip/gallery/animation/j;->a:I

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    return-void
.end method
