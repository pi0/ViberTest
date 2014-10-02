.class Lcom/viber/voip/messages/controller/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/controller/cn;

.field final synthetic c:Lcom/viber/voip/messages/controller/ce;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ce;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/controller/cn;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ck;->c:Lcom/viber/voip/messages/controller/ce;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/ck;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/ck;->b:Lcom/viber/voip/messages/controller/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 7
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->c:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->b(Lcom/viber/voip/messages/controller/ce;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/ck;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v2

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/hv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/controller/ck;->c:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/ce;->b(Lcom/viber/voip/messages/controller/ce;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v5

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->c:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/controller/cl;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cl;-><init>(Lcom/viber/voip/messages/controller/ck;JLandroid/net/Uri;Lcom/viber/voip/messages/extras/image/a;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->c:Lcom/viber/voip/messages/controller/ce;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadMedia.onFail():error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ck;->c:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/cm;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/messages/controller/cm;-><init>(Lcom/viber/voip/messages/controller/ck;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method
