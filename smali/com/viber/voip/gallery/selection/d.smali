.class Lcom/viber/voip/gallery/selection/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/c;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/d;->a:Lcom/viber/voip/gallery/selection/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/a/b;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/d;->a:Lcom/viber/voip/gallery/selection/c;

    invoke-static {v1}, Lcom/viber/voip/gallery/selection/c;->a(Lcom/viber/voip/gallery/selection/c;)Lcom/viber/voip/gallery/selection/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/gallery/selection/f;->a(Lcom/viber/voip/gallery/a/b;)V

    .line 45
    :cond_0
    return-void
.end method
