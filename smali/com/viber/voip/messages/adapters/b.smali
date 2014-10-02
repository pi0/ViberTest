.class public Lcom/viber/voip/messages/adapters/b;
.super Lcom/viber/voip/messages/adapters/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/adapters/a/b;


# instance fields
.field private final a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/a;-><init>(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;ZZ)V

    .line 21
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    .line 22
    return-void
.end method


# virtual methods
.method public C()Z
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->B()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->B()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->B()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->D()I

    move-result v0

    return v0
.end method

.method public F()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->F()Z

    move-result v0

    return v0
.end method

.method public I()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->G()I

    move-result v0

    return v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->H()I

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/b;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
