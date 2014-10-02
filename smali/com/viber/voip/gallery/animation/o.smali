.class Lcom/viber/voip/gallery/animation/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/n;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 265
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    iget-object v1, v1, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v1, v1, Lcom/viber/voip/gallery/animation/m;->f:Lcom/viber/voip/gallery/animation/x;

    iget-object v2, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    iget-object v2, v2, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget v2, v2, Lcom/viber/voip/gallery/animation/m;->g:I

    iget-object v3, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    iget-object v3, v3, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v3, v3, Lcom/viber/voip/gallery/animation/m;->c:Landroid/view/View;

    iget-object v4, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    iget-object v4, v4, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget v4, v4, Lcom/viber/voip/gallery/animation/m;->b:I

    iget-object v5, p0, Lcom/viber/voip/gallery/animation/o;->a:Lcom/viber/voip/gallery/animation/n;

    iget-object v5, v5, Lcom/viber/voip/gallery/animation/n;->a:[Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;Lcom/viber/voip/gallery/animation/x;ILandroid/view/View;I[Landroid/view/View;)V

    .line 266
    return-void
.end method
