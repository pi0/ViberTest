.class Lcom/viber/voip/messages/ui/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cd;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/cd;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 817
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move v1, v2

    .line 818
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    .line 820
    iget-object v4, p0, Lcom/viber/voip/messages/ui/cd;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v4

    iget-object v5, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v4

    .line 821
    iget-wide v5, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->f:J

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 822
    iget v5, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->i:I

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 823
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 824
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 825
    iget v5, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->h:I

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailHeight(I)V

    .line 826
    iget v5, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->g:I

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setThumbnailWidth(I)V

    .line 827
    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 829
    iget-object v5, p0, Lcom/viber/voip/messages/ui/cd;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v5}, Lcom/viber/voip/messages/ui/MessageComposerView;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 830
    invoke-virtual {v4, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 833
    :cond_0
    iget-object v5, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    if-eqz v5, :cond_1

    .line 834
    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 836
    :cond_1
    aput-object v4, v3, v1

    .line 818
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cd;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->A(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/ao;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/viber/voip/messages/conversation/ao;->a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 839
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cd;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->B(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/controller/x;->b()V

    .line 840
    return-void
.end method
