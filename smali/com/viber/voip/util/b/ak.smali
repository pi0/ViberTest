.class Lcom/viber/voip/util/b/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final a:Lcom/viber/voip/util/b/al;

.field final b:Lcom/viber/voip/util/b/x;

.field final c:Landroid/net/Uri;

.field final d:Lcom/viber/voip/contacts/b/d;

.field final e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/viber/voip/util/b/ad;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/b/ad;Landroid/net/Uri;Lcom/viber/voip/contacts/b/d;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/viber/voip/util/b/ak;->f:Lcom/viber/voip/util/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/viber/voip/util/b/ak;->c:Landroid/net/Uri;

    .line 517
    iput-object p3, p0, Lcom/viber/voip/util/b/ak;->d:Lcom/viber/voip/contacts/b/d;

    .line 518
    iput-object p4, p0, Lcom/viber/voip/util/b/ak;->e:Landroid/widget/ImageView;

    .line 519
    iput-object p5, p0, Lcom/viber/voip/util/b/ak;->b:Lcom/viber/voip/util/b/x;

    .line 520
    iput-object p6, p0, Lcom/viber/voip/util/b/ak;->a:Lcom/viber/voip/util/b/al;

    .line 521
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 525
    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->f:Lcom/viber/voip/util/b/ad;

    invoke-static {v0, v8}, Lcom/viber/voip/util/b/ad;->a(Lcom/viber/voip/util/b/ad;Lcom/viber/voip/util/b/al;)Lcom/viber/voip/util/b/al;

    .line 527
    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->a:Lcom/viber/voip/util/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->a:Lcom/viber/voip/util/b/al;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/util/b/al;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 529
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->c:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/util/bu;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->b:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/x;->b()Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v4

    .line 536
    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->f:Lcom/viber/voip/util/b/ad;

    iget-object v1, p0, Lcom/viber/voip/util/b/ak;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/util/b/ak;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/viber/voip/util/b/ak;->a:Lcom/viber/voip/util/b/al;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    goto :goto_0

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->d:Lcom/viber/voip/contacts/b/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/util/b/ak;->d:Lcom/viber/voip/contacts/b/d;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/d;->n()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 539
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    const/4 v10, 0x1

    new-instance v0, Lcom/viber/voip/util/b/ai;

    iget-object v1, p0, Lcom/viber/voip/util/b/ak;->f:Lcom/viber/voip/util/b/ad;

    iget-object v3, p0, Lcom/viber/voip/util/b/ak;->c:Landroid/net/Uri;

    iget-object v5, p0, Lcom/viber/voip/util/b/ak;->e:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/viber/voip/util/b/ak;->b:Lcom/viber/voip/util/b/x;

    iget-object v7, p0, Lcom/viber/voip/util/b/ak;->a:Lcom/viber/voip/util/b/al;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/util/b/ai;-><init>(Lcom/viber/voip/util/b/ad;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;Lcom/viber/voip/util/b/ae;)V

    invoke-static {v9, v10, v0}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;ZLcom/viber/voip/util/upload/b;)V

    goto :goto_0

    .line 538
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/ad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1
.end method
