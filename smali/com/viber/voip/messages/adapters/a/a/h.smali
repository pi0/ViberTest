.class public Lcom/viber/voip/messages/adapters/a/a/h;
.super Lcom/viber/voip/messages/adapters/a/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/adapters/a/a/f",
        "<",
        "Lcom/viber/voip/messages/adapters/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected final j:Lcom/viber/voip/util/b/x;

.field private final l:Lcom/viber/voip/messages/h;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;Lcom/viber/voip/messages/h;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f020335

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/a/a/f;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;)V

    .line 27
    iput-object p4, p0, Lcom/viber/voip/messages/adapters/a/a/h;->l:Lcom/viber/voip/messages/h;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->j:Lcom/viber/voip/util/b/x;

    .line 34
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/viber/voip/messages/adapters/a/a;ZI[JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    move-object v1, p1

    check-cast v1, Lcom/viber/voip/messages/adapters/a/b;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/adapters/a/a/h;->a(Lcom/viber/voip/messages/adapters/a/b;ZI[JJ)V

    return-void
.end method

.method protected a(Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/h;->a:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 40
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->k:Landroid/view/View;

    const v3, 0x7f0700dd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 41
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/adapters/a/b;ZI[JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->L()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/h;->c:Lcom/viber/voip/util/b/w;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->F()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/a/a/h;->j:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 49
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "many_add"

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/h;->l:Lcom/viber/voip/messages/h;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/h;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    :goto_0
    return-void

    .line 52
    :cond_0
    aget-wide v1, p4, v6

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/viber/voip/messages/a/a;->a(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/h;->c:Lcom/viber/voip/util/b/w;

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/a/a/h;->d:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->c:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v1

    aget-wide v2, p4, v6

    invoke-interface {v1, v2, v3, v5}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/a/a/h;->d:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/h;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
