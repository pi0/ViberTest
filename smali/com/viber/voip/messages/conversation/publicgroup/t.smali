.class Lcom/viber/voip/messages/conversation/publicgroup/t;
.super Lcom/viber/voip/messages/conversation/publicgroup/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/jni/LocationInfo;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:[Ljava/lang/String;

.field final synthetic g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->c:Lcom/viber/jni/LocationInfo;

    iput-object p5, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->f:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/x;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Lcom/viber/voip/messages/conversation/publicgroup/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    .line 391
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 392
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 393
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->o:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const-string/jumbo v3, "upload background"

    invoke-static {v0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/viber/voip/util/upload/ak;->e:Lcom/viber/voip/util/upload/ak;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->o:Landroid/net/Uri;

    new-instance v4, Lcom/viber/voip/messages/conversation/publicgroup/u;

    invoke-direct {v4, p0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/u;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/t;J)V

    invoke-static {v0, v3, v4}, Lcom/viber/voip/util/upload/ac;->a(Lcom/viber/voip/util/upload/ak;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-wide v3, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->p:J

    cmp-long v0, v3, v9

    if-lez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "default background = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-wide v4, v4, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->p:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " converted id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-wide v4, v4, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->p:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->c:Lcom/viber/jni/LocationInfo;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->f:[Ljava/lang/String;

    iget-object v9, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-wide v9, v9, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->p:J

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;JLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->c:Lcom/viber/jni/LocationInfo;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/t;->f:[Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;JLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_0
.end method
