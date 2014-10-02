.class final Lcom/viber/voip/util/upload/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/p;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/upload/p;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/upload/p;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/viber/voip/util/upload/ae;->a:Lcom/viber/voip/util/upload/p;

    iput-object p2, p0, Lcom/viber/voip/util/upload/ae;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/viber/voip/util/upload/ae;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/viber/voip/util/upload/ae;->a:Lcom/viber/voip/util/upload/p;

    iget-object v1, p0, Lcom/viber/voip/util/upload/ae;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;)V

    .line 199
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/viber/voip/util/upload/ae;->a:Lcom/viber/voip/util/upload/p;

    iget-object v1, p0, Lcom/viber/voip/util/upload/ae;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;I)V

    .line 195
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/util/upload/ae;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/viber/voip/util/upload/ae;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/util/upload/ae;->a:Lcom/viber/voip/util/upload/p;

    invoke-static {v1, v0, p2, v2}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CAN\'T UPLOAD EMPTY THUMBNAIL thumbnailUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/util/upload/ae;->a:Lcom/viber/voip/util/upload/p;

    iget-object v1, p0, Lcom/viber/voip/util/upload/ae;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method
