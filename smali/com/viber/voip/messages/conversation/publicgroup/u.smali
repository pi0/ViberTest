.class Lcom/viber/voip/messages/conversation/publicgroup/u;
.super Lcom/viber/voip/messages/conversation/publicgroup/x;
.source "SourceFile"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/t;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->a:J

    iget-object v0, p1, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/x;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Lcom/viber/voip/messages/conversation/publicgroup/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 398
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    .line 399
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/hv;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 400
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/t;->g:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/publicgroup/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v4, v4, Lcom/viber/voip/messages/conversation/publicgroup/t;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v5, v5, Lcom/viber/voip/messages/conversation/publicgroup/t;->c:Lcom/viber/jni/LocationInfo;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v6, v6, Lcom/viber/voip/messages/conversation/publicgroup/t;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v7, v7, Lcom/viber/voip/messages/conversation/publicgroup/t;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/u;->b:Lcom/viber/voip/messages/conversation/publicgroup/t;

    iget-object v8, v8, Lcom/viber/voip/messages/conversation/publicgroup/t;->f:[Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;JLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 401
    return-void
.end method
