.class Lcom/viber/voip/messages/controller/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/co;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/p;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->c(Lcom/viber/voip/messages/controller/a/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/v;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/v;-><init>(Lcom/viber/voip/messages/controller/a/t;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->c(Lcom/viber/voip/messages/controller/a/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/u;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/a/u;-><init>(Lcom/viber/voip/messages/controller/a/t;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->c(Lcom/viber/voip/messages/controller/a/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/w;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/w;-><init>(Lcom/viber/voip/messages/controller/a/t;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method
