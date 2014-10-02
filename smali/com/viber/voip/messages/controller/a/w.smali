.class Lcom/viber/voip/messages/controller/a/w;
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
    .line 430
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/w;->b:Lcom/viber/voip/messages/controller/a/t;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/w;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/w;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/w;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isHasAnyStatus([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/w;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 440
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/w;->b:Lcom/viber/voip/messages/controller/a/t;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/w;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/w;->b:Lcom/viber/voip/messages/controller/a/t;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/t;->a:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/controller/a/p;)V

    .line 444
    :cond_0
    return-void

    .line 438
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
