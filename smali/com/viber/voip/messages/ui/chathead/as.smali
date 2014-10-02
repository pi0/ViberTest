.class Lcom/viber/voip/messages/ui/chathead/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;

.field private final b:F


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/as;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2502
    iput p2, p0, Lcom/viber/voip/messages/ui/chathead/as;->b:F

    .line 2503
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;FLcom/viber/voip/messages/ui/chathead/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2498
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/chathead/as;-><init>(Lcom/viber/voip/messages/ui/chathead/d;F)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 4
    .parameter

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/as;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2512
    :cond_0
    return-void

    .line 2509
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/as;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 2510
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/as;->b:F

    add-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    goto :goto_0
.end method
