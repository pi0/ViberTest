.class Lcom/viber/voip/gallery/selection/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/j;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/k;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/k;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-static {v0, p1}, Lcom/viber/voip/gallery/selection/j;->a(Lcom/viber/voip/gallery/selection/j;Landroid/view/View;)Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/k;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-static {v1}, Lcom/viber/voip/gallery/selection/j;->a(Lcom/viber/voip/gallery/selection/j;)Lcom/viber/voip/gallery/selection/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/gallery/selection/n;->a(Lcom/viber/voip/gallery/a/d;)V

    .line 53
    :cond_0
    return-void
.end method
