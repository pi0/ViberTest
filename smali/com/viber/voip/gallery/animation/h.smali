.class Lcom/viber/voip/gallery/animation/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/g;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->b(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/s;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v1, v1, Lcom/viber/voip/gallery/animation/g;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/s;->a(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v1, v1, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->d(Lcom/viber/voip/gallery/animation/d;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 174
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/h;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)Landroid/view/View;

    .line 177
    return-void
.end method
