.class Lcom/viber/voip/messages/ui/chathead/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/n;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput p2, p0, Lcom/viber/voip/messages/ui/chathead/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1420
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/n;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->K(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/n;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->K(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/n;->a:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1421
    return-void
.end method
