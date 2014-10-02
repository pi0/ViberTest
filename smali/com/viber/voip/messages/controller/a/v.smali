.class Lcom/viber/voip/messages/controller/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/controller/a/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/t;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/v;->b:Lcom/viber/voip/messages/controller/a/t;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isHasAnyStatus([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 420
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 421
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/v;->b:Lcom/viber/voip/messages/controller/a/t;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 422
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/v;->b:Lcom/viber/voip/messages/controller/a/t;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->d(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/v;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 424
    :cond_0
    return-void

    .line 418
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
