.class Lcom/viber/voip/messages/controller/cc;
.super Lcom/viber/voip/messages/controller/aj;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/viber/voip/messages/controller/ah;

.field final synthetic c:Lcom/viber/voip/messages/controller/c/ao;

.field final synthetic d:Lcom/viber/voip/messages/controller/by;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/by;Ljava/util/ArrayList;Lcom/viber/voip/messages/controller/ah;Lcom/viber/voip/messages/controller/c/ao;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cc;->d:Lcom/viber/voip/messages/controller/by;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/cc;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/cc;->b:Lcom/viber/voip/messages/controller/ah;

    iput-object p4, p0, Lcom/viber/voip/messages/controller/cc;->c:Lcom/viber/voip/messages/controller/c/ao;

    invoke-direct {p0}, Lcom/viber/voip/messages/controller/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/viber/jni/PublicGroupInfo;

    .line 459
    new-instance v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    iget-object v1, v7, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    iget-wide v2, v7, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    iget v4, v7, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    iget v5, v7, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    iget-object v6, v7, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    iget-object v7, v7, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;-><init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cc;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cc;->b:Lcom/viber/voip/messages/controller/ah;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cc;->c:Lcom/viber/voip/messages/controller/c/ao;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/cc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/ah;->a(Lcom/viber/voip/messages/controller/c/ao;Ljava/util/ArrayList;)V

    .line 464
    return-void
.end method
