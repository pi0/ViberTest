.class Lcom/viber/voip/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/f/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v1}, Lcom/viber/voip/f/a;->b(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 76
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 77
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 78
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v4}, Lcom/viber/voip/f/a;->c(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v4, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v4}, Lcom/viber/voip/f/a;->c(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 82
    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 83
    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 85
    iget-object v0, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->c(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v0, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->c(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->b(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/f/a;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/f/c;->a:Lcom/viber/voip/f/a;

    invoke-static {v0}, Lcom/viber/voip/f/a;->b(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
