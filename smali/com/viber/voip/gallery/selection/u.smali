.class Lcom/viber/voip/gallery/selection/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/u;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/u;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->b(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    return-void
.end method
