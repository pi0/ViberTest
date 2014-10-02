.class Lcom/viber/voip/gallery/animation/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/g;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/i;->a:Lcom/viber/voip/gallery/animation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/i;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->d(Lcom/viber/voip/gallery/animation/d;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/i;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/i;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v1, v1, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/gallery/animation/i;->a:Lcom/viber/voip/gallery/animation/g;

    iget-object v2, v2, Lcom/viber/voip/gallery/animation/g;->e:Lcom/viber/voip/gallery/animation/x;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;Lcom/viber/voip/gallery/animation/x;Z)V

    .line 187
    :cond_0
    return-void
.end method
