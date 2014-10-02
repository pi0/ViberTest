.class Lcom/viber/voip/messages/ui/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zoobe/sdk/helper/ZoobeResult;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/zoobe/sdk/helper/ZoobeResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ZoobeReadyListener: onReady  video url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    iget-object v1, v1, Lcom/zoobe/sdk/helper/ZoobeResult;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Share url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    iget-object v1, v1, Lcom/zoobe/sdk/helper/ZoobeResult;->shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "link params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    iget-object v1, v1, Lcom/zoobe/sdk/helper/ZoobeResult;->linkParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    const-string/jumbo v1, "animated_message"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2, v6}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    iget-object v2, v2, Lcom/zoobe/sdk/helper/ZoobeResult;->thmbnail:[B

    invoke-static {v1, v2, v7}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;[BZ)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_0

    .line 461
    iget-object v2, v1, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 462
    iget v2, v1, Lcom/viber/voip/messages/extras/image/a;->c:I

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 463
    iget v2, v1, Lcom/viber/voip/messages/extras/image/a;->b:I

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 466
    iget-object v2, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v2

    .line 467
    new-instance v3, Lcom/viber/voip/util/b/z;

    invoke-direct {v3}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v3, v6}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/util/b/b/f;

    iget-object v5, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v5}, Lcom/viber/voip/messages/ui/MessageComposerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/viber/voip/util/b/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v3

    .line 471
    iget-object v1, v1, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)V

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    invoke-static {v1}, Lcom/viber/voip/k/a;->a(Lcom/zoobe/sdk/helper/ZoobeResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBucket(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    iget-object v1, v1, Lcom/zoobe/sdk/helper/ZoobeResult;->linkParams:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/voip/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/ct;->a:Lcom/zoobe/sdk/helper/ZoobeResult;

    iget-object v2, v2, Lcom/zoobe/sdk/helper/ZoobeResult;->thmbnail:[B

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/k/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v6, v3}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;[BZLjava/lang/String;)Lcom/viber/voip/messages/extras/image/a;

    .line 480
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ct;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v1, v0, v7}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 481
    return-void
.end method
