.class Lcom/viber/voip/messages/adapters/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/stickers/c/a;

.field final synthetic d:Z

.field final synthetic e:Lcom/viber/voip/messages/adapters/MediaLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/MediaLayout;Landroid/view/View;ILcom/viber/voip/stickers/c/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/d;->e:Lcom/viber/voip/messages/adapters/MediaLayout;

    iput-object p2, p0, Lcom/viber/voip/messages/adapters/d;->a:Landroid/view/View;

    iput p3, p0, Lcom/viber/voip/messages/adapters/d;->b:I

    iput-object p4, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iput-boolean p5, p0, Lcom/viber/voip/messages/adapters/d;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->e:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->q:I

    if-le v0, v1, :cond_2

    move v6, v4

    .line 232
    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget v1, v0, Lcom/viber/voip/stickers/c/a;->p:I

    .line 233
    :goto_2
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget v2, v0, Lcom/viber/voip/stickers/c/a;->q:I

    .line 234
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->e:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->getStickerSvgController()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    iget-boolean v3, p0, Lcom/viber/voip/messages/adapters/d;->d:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget-object v3, v3, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    :goto_4
    sget-object v5, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/bb;->a(IILjava/lang/String;ZLcom/viber/voip/stickers/ba;Z)Landroid/graphics/Picture;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/viber/voip/stickers/f/b;

    invoke-direct {v1, v0}, Lcom/viber/voip/stickers/f/b;-><init>(Landroid/graphics/Picture;)V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->e:Lcom/viber/voip/messages/adapters/MediaLayout;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/viber/voip/stickers/bb;->a(Landroid/widget/ImageView;Z)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->e:Lcom/viber/voip/messages/adapters/MediaLayout;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->e:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/MediaLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 231
    goto :goto_1

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget v2, v2, Lcom/viber/voip/stickers/c/a;->q:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v1, v0

    goto :goto_2

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_3

    .line 234
    :cond_5
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/d;->c:Lcom/viber/voip/stickers/c/a;

    iget-object v3, v3, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    goto :goto_4
.end method
