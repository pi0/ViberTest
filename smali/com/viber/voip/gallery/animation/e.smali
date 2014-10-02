.class Lcom/viber/voip/gallery/animation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/animation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/e;->a:Lcom/viber/voip/gallery/animation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/e;->a:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/e;->a:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method
