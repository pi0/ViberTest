.class Lcom/viber/voip/messages/controller/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/controller/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/p;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/s;->b:Lcom/viber/voip/messages/controller/a/p;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/s;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/s;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/s;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 365
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 366
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/s;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 367
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/s;->b:Lcom/viber/voip/messages/controller/a/p;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 368
    return-void
.end method
