.class Lcom/viber/voip/api/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/de;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/api/ViberApi;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberApi;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/viber/voip/api/b;->e:Lcom/viber/voip/api/ViberApi;

    iput-wide p2, p0, Lcom/viber/voip/api/b;->a:J

    iput-boolean p4, p0, Lcom/viber/voip/api/b;->b:Z

    iput-object p5, p0, Lcom/viber/voip/api/b;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/api/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    return-void
.end method

.method public a(JJZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/viber/voip/api/b;->a:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_1

    .line 237
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->k(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_1

    .line 244
    new-instance v2, Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/viber/voip/api/b;->b:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.viber.voip.action.API_PHOTO_RECEIVED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "phone_number"

    iget-object v3, p0, Lcom/viber/voip/api/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v0, "uri"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/viber/voip/api/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string/jumbo v0, "description"

    iget-object v1, p0, Lcom/viber/voip/api/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/api/b;->e:Lcom/viber/voip/api/ViberApi;

    invoke-static {v0, v2}, Lcom/viber/voip/api/ViberApi;->a(Lcom/viber/voip/api/ViberApi;Landroid/content/Intent;)V

    .line 252
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/de;)V

    .line 256
    :cond_1
    return-void

    .line 244
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.API_VIDEO_RECEIVED"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 259
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    return-void
.end method
