.class Lcom/viber/voip/messages/controller/a/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/p;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/bx;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/viber/voip/messages/controller/a/br;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/br;Lcom/viber/voip/messages/controller/a/bx;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bu;->c:Lcom/viber/voip/messages/controller/a/br;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/bu;->a:Lcom/viber/voip/messages/controller/a/bx;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/a/bu;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bu;->c:Lcom/viber/voip/messages/controller/a/br;

    const-string/jumbo v1, "doUpdateUserPhoto uploadMedia.onUploadTimeout()"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/a/br;->a(Lcom/viber/voip/messages/controller/a/br;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bu;->a:Lcom/viber/voip/messages/controller/a/bx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/a/bx;->a(Landroid/net/Uri;)V

    .line 156
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bu;->c:Lcom/viber/voip/messages/controller/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doUpdateUserPhoto uploadMedia.onFail() code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/a/br;->a(Lcom/viber/voip/messages/controller/a/br;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bu;->a:Lcom/viber/voip/messages/controller/a/bx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/a/bx;->a(Landroid/net/Uri;)V

    .line 150
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bu;->c:Lcom/viber/voip/messages/controller/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doUpdateUserPhoto uploadMedia.onUploadComplete() id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/a/br;->a(Lcom/viber/voip/messages/controller/a/br;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bu;->a:Lcom/viber/voip/messages/controller/a/bx;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/bu;->b:Landroid/net/Uri;

    invoke-interface {v0, p2, v1}, Lcom/viber/voip/messages/controller/a/bx;->a(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    return-void
.end method
