.class public Lcom/viber/voip/e/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field private b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

.field private c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field private d:I

.field private e:Z

.field private f:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field private g:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

.field private h:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/e/ac;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/viber/voip/e/ac;->d:I

    .line 62
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/e/ac;->a:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 40
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/e/ac;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 70
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/e/ac;->b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/viber/voip/e/ac;->e:Z

    .line 78
    return-void
.end method

.method public b()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/e/ac;->b:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/viber/voip/e/ac;->i:I

    .line 98
    return-void
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/viber/voip/e/ac;->f:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 49
    return-void
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/e/ac;->h:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 94
    return-void
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/e/ac;->g:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 54
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/viber/voip/e/ac;->j:Z

    .line 102
    return-void
.end method

.method public c()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/e/ac;->f:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    return-object v0
.end method

.method public d()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/e/ac;->g:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/viber/voip/e/ac;->d:I

    return v0
.end method

.method public f()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/e/ac;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/viber/voip/e/ac;->e:Z

    return v0
.end method

.method public h()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/e/ac;->h:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/viber/voip/e/ac;->i:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/viber/voip/e/ac;->j:Z

    return v0
.end method
