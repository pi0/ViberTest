.class Lcom/viber/voip/phone/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/viber/voip/phone/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/al;Landroid/view/View;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/viber/voip/phone/an;->c:Lcom/viber/voip/phone/al;

    iput-object p2, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/viber/voip/phone/an;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/x;->a(II)Lcom/viber/voip/util/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/x;->b()Lcom/viber/voip/util/b/z;

    move-result-object v1

    .line 488
    iget-object v0, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/viber/voip/phone/an;->c:Lcom/viber/voip/phone/al;

    invoke-static {v0}, Lcom/viber/voip/phone/al;->b(Lcom/viber/voip/phone/al;)Lcom/viber/voip/util/b/w;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/phone/an;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 497
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/an;->c:Lcom/viber/voip/phone/al;

    new-instance v2, Lcom/viber/voip/util/b/a/a;

    iget-object v3, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/viber/voip/util/b/a/a;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2}, Lcom/viber/voip/phone/al;->a(Lcom/viber/voip/phone/al;Lcom/viber/voip/util/b/a/a;)Lcom/viber/voip/util/b/a/a;

    .line 492
    iget-object v0, p0, Lcom/viber/voip/phone/an;->c:Lcom/viber/voip/phone/al;

    invoke-static {v0}, Lcom/viber/voip/phone/al;->b(Lcom/viber/voip/phone/al;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/phone/an;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v1

    iget-object v3, p0, Lcom/viber/voip/phone/an;->c:Lcom/viber/voip/phone/al;

    invoke-static {v3}, Lcom/viber/voip/phone/al;->c(Lcom/viber/voip/phone/al;)Lcom/viber/voip/util/b/a/a;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/an;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
