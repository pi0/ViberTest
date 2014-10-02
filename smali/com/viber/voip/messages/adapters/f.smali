.class Lcom/viber/voip/messages/adapters/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/adapters/MediaLayout;

.field private b:Lcom/viber/voip/messages/adapters/g;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/adapters/MediaLayout;Lcom/viber/voip/messages/adapters/g;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/f;->b:Lcom/viber/voip/messages/adapters/g;

    .line 368
    iput-boolean p3, p0, Lcom/viber/voip/messages/adapters/f;->c:Z

    .line 369
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/MediaLayout;Lcom/viber/voip/messages/adapters/f;)Lcom/viber/voip/messages/adapters/f;

    .line 375
    if-nez p3, :cond_0

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 379
    :cond_0
    const-string/jumbo v0, "video"

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/f;->b:Lcom/viber/voip/messages/adapters/g;

    invoke-interface {v3}, Lcom/viber/voip/messages/adapters/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "animated_message"

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/f;->b:Lcom/viber/voip/messages/adapters/g;

    invoke-interface {v3}, Lcom/viber/voip/messages/adapters/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->b(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/MediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/f;->c:Z

    if-eqz v0, :cond_5

    .line 384
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->b(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v3}, Lcom/viber/voip/messages/adapters/MediaLayout;->c(Lcom/viber/voip/messages/adapters/MediaLayout;)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 385
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->d(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v3}, Lcom/viber/voip/messages/adapters/MediaLayout;->a(Lcom/viber/voip/messages/adapters/MediaLayout;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->d(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/f;->b:Lcom/viber/voip/messages/adapters/g;

    invoke-interface {v1}, Lcom/viber/voip/messages/adapters/g;->h()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 381
    goto :goto_0

    :cond_4
    move v1, v2

    .line 385
    goto :goto_1

    .line 388
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->b(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/f;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->d(Lcom/viber/voip/messages/adapters/MediaLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
