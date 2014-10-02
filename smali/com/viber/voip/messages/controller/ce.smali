.class public Lcom/viber/voip/messages/controller/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ce;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/viber/voip/messages/controller/ce;->b:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ce;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/ce;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/ce;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/ce;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ce;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DATA_ROAMING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "message_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "message_seq"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "message_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/viber/voip/messages/controller/ce;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;ZLcom/viber/voip/messages/controller/co;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/viber/voip/messages/controller/cf;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/viber/voip/messages/controller/cf;-><init>(Lcom/viber/voip/messages/controller/ce;Lcom/viber/voip/messages/controller/co;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 125
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p1, p2, v0}, Lcom/viber/voip/util/upload/ac;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {p2, v1, v2, v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/controller/cn;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDownload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ce;->a(Ljava/lang/String;)V

    .line 136
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/controller/ck;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/ck;-><init>(Lcom/viber/voip/messages/controller/ce;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/controller/cn;)V

    .line 169
    invoke-static {p1, v0}, Lcom/viber/voip/util/upload/s;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/util/upload/b;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicWatcher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ce;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->a(Landroid/content/Context;)Lcom/viber/voip/util/ft;

    move-result-object v3

    .line 181
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/viber/voip/settings/j;->ad()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 182
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v4

    invoke-static {}, Lcom/viber/voip/settings/j;->ae()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/viber/voip/settings/j;->af()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v4

    .line 184
    if-eqz v0, :cond_2

    const-string/jumbo v0, "image"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v4, :cond_6

    const-string/jumbo v0, "video"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v1

    .line 187
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMediaReceived checkAutoDownloadMedia network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/viber/voip/util/ft;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",MEDIA_TYPE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",allowDownloadMedia:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/viber/voip/messages/controller/ce;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Lcom/viber/voip/util/ft;->a()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/viber/voip/util/ft;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 189
    :cond_5
    const-string/jumbo v0, "onMediaReceived checkAutoDownloadMedia TRUE"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ce;->a(Ljava/lang/String;)V

    move v2, v1

    .line 190
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 184
    goto :goto_1
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/controller/cn;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "animated_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "animated_message_cache"

    invoke-static {v1, v2}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "animated_message_cache"

    invoke-static {v0, v1}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 219
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ce;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v2

    .line 222
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 223
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/messages/controller/ce;->a:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 225
    invoke-static {v1}, Lcom/viber/voip/util/upload/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    .line 227
    invoke-interface {p2, v2, v3, v1, v0}, Lcom/viber/voip/messages/controller/cn;->a(JLandroid/net/Uri;Lcom/viber/voip/messages/extras/image/a;)V

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method
