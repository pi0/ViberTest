.class public Lcom/viber/voip/messages/adapters/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/adapters/a/a;


# instance fields
.field private final a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    .line 18
    iput-boolean p2, p0, Lcom/viber/voip/messages/adapters/a;->b:Z

    .line 19
    iput-boolean p3, p0, Lcom/viber/voip/messages/adapters/a;->c:Z

    .line 20
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/a;->c:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->A()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->n()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->p()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->v()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->w()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->x()Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->m()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->t()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->u()Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[J
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->f()[J

    move-result-object v0

    return-object v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->j()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationsAdapterItem{conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isSelectedConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isChoosenConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/adapters/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a;->a:Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->b()I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/a;->b:Z

    return v0
.end method
