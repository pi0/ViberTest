.class Lcom/viber/voip/messages/ui/chathead/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;

.field private final b:F

.field private final c:Lcom/viber/voip/messages/ui/chathead/a/a;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2479
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/aw;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/aw;->c:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 2481
    iput p3, p0, Lcom/viber/voip/messages/ui/chathead/aw;->b:F

    .line 2482
    iput-boolean p4, p0, Lcom/viber/voip/messages/ui/chathead/aw;->d:Z

    .line 2483
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2476
    invoke-virtual {p2}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    .line 2477
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 3
    .parameter

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aw;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2495
    :cond_0
    :goto_0
    return-void

    .line 2489
    :cond_1
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/aw;->b:F

    add-float/2addr v0, v1

    .line 2490
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/aw;->c:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 2491
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/aw;->d:Z

    if-eqz v1, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/aw;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2493
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/aw;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/aw;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/aw;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
