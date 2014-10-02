.class Lcom/viber/voip/phone/b/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ad;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/i;

.field final synthetic d:Lcom/viber/voip/phone/b/y;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/y;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/viber/voip/phone/b/ab;->d:Lcom/viber/voip/phone/b/y;

    iput-object p2, p0, Lcom/viber/voip/phone/b/ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/phone/b/ab;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/phone/b/ab;->c:Lcom/viber/voip/messages/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 222
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/viber/voip/phone/b/ab;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/viber/voip/phone/b/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 224
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/phone/b/ab;->c:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 228
    return-void
.end method
