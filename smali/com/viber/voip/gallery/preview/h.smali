.class Lcom/viber/voip/gallery/preview/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/h;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 435
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/h;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/h;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v1, v1, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 436
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/h;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 437
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/h;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 438
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 439
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 440
    return-void
.end method
