.class Lcom/viber/voip/gallery/animation/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/gallery/animation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    iput-object p2, p0, Lcom/viber/voip/gallery/animation/l;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->b(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/s;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/s;->a(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->d(Lcom/viber/voip/gallery/animation/d;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 395
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/l;->b:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)Landroid/view/View;

    .line 398
    return-void
.end method
