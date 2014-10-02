.class Lcom/viber/voip/messages/controller/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/p;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/co;

.field final synthetic b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/controller/ce;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ce;Lcom/viber/voip/messages/controller/co;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/cf;->a:Lcom/viber/voip/messages/controller/co;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/cf;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/cf;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    const-string/jumbo v1, "uploadMedia.onUploadTimeout()"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/cf;->c:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/cj;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/cj;-><init>(Lcom/viber/voip/messages/controller/cf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMedia.onFail() code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;Ljava/lang/String;)V

    .line 78
    packed-switch p2, :pswitch_data_0

    .line 88
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/cf;->c:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/ci;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/ci;-><init>(Lcom/viber/voip/messages/controller/cf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/ch;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/ch;-><init>(Lcom/viber/voip/messages/controller/cf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cf;->d:Lcom/viber/voip/messages/controller/ce;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/controller/ce;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/cg;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/messages/controller/cg;-><init>(Lcom/viber/voip/messages/controller/cf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
