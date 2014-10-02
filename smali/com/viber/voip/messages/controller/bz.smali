.class Lcom/viber/voip/messages/controller/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/cn;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/controller/by;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bz;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/bz;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 380
    iget-object v1, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 382
    :cond_0
    return-void
.end method

.method public a(JLandroid/net/Uri;Lcom/viber/voip/messages/extras/image/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/bz;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 348
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 349
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 351
    if-eqz p4, :cond_1

    iget-object v1, p4, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p4, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 353
    iget v1, p4, Lcom/viber/voip/messages/extras/image/a;->c:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 354
    iget v1, p4, Lcom/viber/voip/messages/extras/image/a;->b:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 355
    iget-object v1, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    new-instance v2, Lcom/viber/voip/messages/controller/ca;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/controller/ca;-><init>(Lcom/viber/voip/messages/controller/bz;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-static {v1, v2}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/util/b/al;)Lcom/viber/voip/util/b/al;

    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/by;->d(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iget-object v1, p4, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    invoke-static {v2}, Lcom/viber/voip/messages/controller/by;->b(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/util/b/x;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    invoke-static {v3}, Lcom/viber/voip/messages/controller/by;->c(Lcom/viber/voip/messages/controller/by;)Lcom/viber/voip/util/b/al;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    goto :goto_0
.end method
