.class Lcom/viber/voip/messages/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/x;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/x;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->d(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->c(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->e(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->f(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->g(Lcom/viber/voip/messages/ui/w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0, v4}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/w;Z)Z

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/w;->h(Lcom/viber/voip/messages/ui/w;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 146
    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/high16 v2, 0x4080

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->e(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/w;->f(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/w;->h(Lcom/viber/voip/messages/ui/w;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->c(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/w;->e(Lcom/viber/voip/messages/ui/w;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->d(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 154
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/k/a;->d()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    .line 159
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 160
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/k/a;->d()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    .line 161
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/k/a;->a(J)V

    .line 163
    :cond_1
    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v2}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/ui/aa;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/aa;-><init>(Lcom/viber/voip/messages/ui/z;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_2
    :goto_1
    return-void

    .line 157
    :cond_3
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/k/a;->d()J

    move-result-wide v0

    goto :goto_0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/z;->a:Lcom/viber/voip/messages/ui/x;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/x;->a:Lcom/viber/voip/messages/ui/w;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/w;->b(Lcom/viber/voip/messages/ui/w;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/k/a;->b(Z)V

    goto :goto_1
.end method
