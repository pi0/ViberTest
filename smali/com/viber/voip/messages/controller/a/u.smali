.class Lcom/viber/voip/messages/controller/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/messages/controller/a/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/t;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/u;->c:Lcom/viber/voip/messages/controller/a/t;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/u;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/a/u;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/u;->c:Lcom/viber/voip/messages/controller/a/t;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/u;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_1

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isHasAnyStatus([I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 400
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 401
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/u;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setObjectId(J)V

    .line 402
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/u;->c:Lcom/viber/voip/messages/controller/a/t;

    iget-object v1, v1, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/u;->c:Lcom/viber/voip/messages/controller/a/t;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/controller/a/p;)V

    .line 406
    :cond_1
    return-void

    .line 394
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method
