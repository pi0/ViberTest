.class Lcom/viber/voip/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/f/e;

.field final synthetic b:Lcom/viber/voip/f/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/f/a;Lcom/viber/voip/f/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/f/b;->b:Lcom/viber/voip/f/a;

    iput-object p2, p0, Lcom/viber/voip/f/b;->a:Lcom/viber/voip/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 48
    iget-object v2, p0, Lcom/viber/voip/f/b;->b:Lcom/viber/voip/f/a;

    invoke-static {v2}, Lcom/viber/voip/f/a;->a(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 49
    iget-object v2, p0, Lcom/viber/voip/f/b;->b:Lcom/viber/voip/f/a;

    invoke-static {v2}, Lcom/viber/voip/f/a;->b(Lcom/viber/voip/f/a;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/viber/voip/f/b;->a:Lcom/viber/voip/f/e;

    invoke-interface {v0}, Lcom/viber/voip/f/e;->a()V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/f/b;->b:Lcom/viber/voip/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/f/a;->b()V

    .line 60
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_2
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/viber/voip/f/b;->a:Lcom/viber/voip/f/e;

    invoke-interface {v0}, Lcom/viber/voip/f/e;->a()V

    goto :goto_0
.end method
