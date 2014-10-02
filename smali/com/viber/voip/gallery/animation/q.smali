.class Lcom/viber/voip/gallery/animation/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/gallery/animation/x;

.field final synthetic c:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;ILcom/viber/voip/gallery/animation/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/q;->c:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iput p2, p0, Lcom/viber/voip/gallery/animation/q;->a:I

    iput-object p3, p0, Lcom/viber/voip/gallery/animation/q;->b:Lcom/viber/voip/gallery/animation/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/q;->c:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/q;->c:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget v1, p0, Lcom/viber/voip/gallery/animation/q;->a:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->scrollBy(II)V

    .line 305
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/q;->c:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/q;->b:Lcom/viber/voip/gallery/animation/x;

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;Lcom/viber/voip/gallery/animation/x;)V

    .line 307
    return v2
.end method
