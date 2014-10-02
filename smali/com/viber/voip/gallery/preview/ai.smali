.class Lcom/viber/voip/gallery/preview/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/image/e;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/gallery/preview/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/ae;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/ai;->b:Lcom/viber/voip/gallery/preview/ae;

    iput-boolean p2, p0, Lcom/viber/voip/gallery/preview/ai;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ai;->b:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->e(Lcom/viber/voip/gallery/preview/ae;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ai;->b:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->f(Lcom/viber/voip/gallery/preview/ae;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-boolean v0, p0, Lcom/viber/voip/gallery/preview/ai;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ai;->b:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/ae;->g(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    if-eq v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ai;->b:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->h(Lcom/viber/voip/gallery/preview/ae;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    const-string/jumbo v2, "image"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/upload/ViberUploadReceiver;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ai;->b:Lcom/viber/voip/gallery/preview/ae;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->e(Lcom/viber/voip/gallery/preview/ae;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/e;)V

    goto :goto_0
.end method
