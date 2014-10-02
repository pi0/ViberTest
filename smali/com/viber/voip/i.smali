.class Lcom/viber/voip/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/AddFriendPreview;


# direct methods
.method constructor <init>(Lcom/viber/voip/AddFriendPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->c(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-virtual {v2}, Lcom/viber/voip/AddFriendPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/AddFriendPreview;->a(Lcom/viber/voip/AddFriendPreview;Landroid/net/Uri;)Landroid/net/Uri;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0, v3}, Lcom/viber/voip/AddFriendPreview;->a(Lcom/viber/voip/AddFriendPreview;Z)Z

    .line 152
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0, v3}, Lcom/viber/voip/AddFriendPreview;->b(Lcom/viber/voip/AddFriendPreview;Z)V

    .line 154
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0, v3}, Lcom/viber/voip/AddFriendPreview;->c(Lcom/viber/voip/AddFriendPreview;Z)Z

    .line 156
    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->d(Lcom/viber/voip/AddFriendPreview;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->e(Lcom/viber/voip/AddFriendPreview;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_3
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->d(Lcom/viber/voip/AddFriendPreview;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->c(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v1}, Lcom/viber/voip/AddFriendPreview;->f(Lcom/viber/voip/AddFriendPreview;)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->g(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02025c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/viber/voip/i;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->h(Lcom/viber/voip/AddFriendPreview;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    :cond_4
    return-void
.end method
