.class Lcom/viber/voip/util/b/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/viber/voip/util/b/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b/ai;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/viber/voip/util/b/aj;->b:Lcom/viber/voip/util/b/ai;

    iput-object p2, p0, Lcom/viber/voip/util/b/aj;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 591
    iget-object v0, p0, Lcom/viber/voip/util/b/aj;->b:Lcom/viber/voip/util/b/ai;

    invoke-static {v0}, Lcom/viber/voip/util/b/ai;->a(Lcom/viber/voip/util/b/ai;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/x;->b()Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v4

    .line 593
    iget-object v0, p0, Lcom/viber/voip/util/b/aj;->b:Lcom/viber/voip/util/b/ai;

    iget-object v0, v0, Lcom/viber/voip/util/b/ai;->a:Lcom/viber/voip/util/b/ad;

    iget-object v1, p0, Lcom/viber/voip/util/b/aj;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/util/b/aj;->b:Lcom/viber/voip/util/b/ai;

    invoke-static {v2}, Lcom/viber/voip/util/b/ai;->b(Lcom/viber/voip/util/b/ai;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/util/b/aj;->b:Lcom/viber/voip/util/b/ai;

    invoke-static {v3}, Lcom/viber/voip/util/b/ai;->c(Lcom/viber/voip/util/b/ai;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lcom/viber/voip/util/b/aj;->b:Lcom/viber/voip/util/b/ai;

    invoke-static {v5}, Lcom/viber/voip/util/b/ai;->d(Lcom/viber/voip/util/b/ai;)Lcom/viber/voip/util/b/al;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 594
    return-void
.end method
