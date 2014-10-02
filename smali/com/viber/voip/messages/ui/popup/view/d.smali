.class Lcom/viber/voip/messages/ui/popup/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)F

    move-result v2

    rem-float/2addr v0, v2

    float-to-int v2, v0

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getCurrentItem()I

    move-result v3

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;I)I

    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)I

    move-result v0

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v1

    .line 197
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    new-instance v4, Lcom/viber/voip/messages/ui/popup/view/e;

    invoke-direct {v4, p0, p1}, Lcom/viber/voip/messages/ui/popup/view/e;-><init>(Lcom/viber/voip/messages/ui/popup/view/d;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    :cond_1
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;I)V

    .line 210
    :cond_3
    const-class v0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->d(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Z)V

    .line 212
    return-void

    .line 196
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 183
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    int-to-float v2, p3

    div-float/2addr v2, p2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;F)F

    .line 184
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getPageMargin()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPageMargin()I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;I)I

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;IF)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/d;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-static {v0, p1, p2, p3}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;IFI)V

    .line 191
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter

    .prologue
    .line 177
    return-void
.end method
