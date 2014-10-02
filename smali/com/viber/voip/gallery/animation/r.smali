.class Lcom/viber/voip/gallery/animation/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/r;->a:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/r;->a:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/r;->a:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/r;->a:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->smoothScrollTo(II)V

    .line 336
    return v2
.end method
