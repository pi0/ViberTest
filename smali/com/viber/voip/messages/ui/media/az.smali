.class Lcom/viber/voip/messages/ui/media/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ac;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

.field final synthetic b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/az;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 5
    .parameter

    .prologue
    .line 857
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-wide v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 860
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->i:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 862
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 864
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->h:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 867
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/az;->a:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->g:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 870
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 871
    return-void
.end method
