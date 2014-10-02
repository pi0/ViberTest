.class Lcom/viber/voip/gallery/selection/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/j;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/l;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/l;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-static {v0, p1}, Lcom/viber/voip/gallery/selection/j;->a(Lcom/viber/voip/gallery/selection/j;Landroid/view/View;)Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/l;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-static {v1}, Lcom/viber/voip/gallery/selection/j;->a(Lcom/viber/voip/gallery/selection/j;)Lcom/viber/voip/gallery/selection/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/gallery/selection/n;->b(Lcom/viber/voip/gallery/a/d;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
