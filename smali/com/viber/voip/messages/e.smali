.class public Lcom/viber/voip/messages/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/f;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/e;->d:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/e;->e:Ljava/util/Set;

    .line 37
    iput-wide p1, p0, Lcom/viber/voip/messages/e;->a:J

    .line 38
    iput-object p3, p0, Lcom/viber/voip/messages/e;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/e;->d:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/e;->e:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/viber/voip/messages/e;->b:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/e;->d:Ljava/util/Set;

    new-instance v1, Lcom/viber/voip/messages/f;

    invoke-direct {v1, p1, p2}, Lcom/viber/voip/messages/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/f;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/e;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/e;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/e;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/viber/voip/messages/e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 90
    instance-of v0, p1, Lcom/viber/voip/messages/e;

    if-eqz v0, :cond_3

    .line 91
    check-cast p1, Lcom/viber/voip/messages/e;

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/messages/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/messages/e;->a:J

    iget-wide v2, p1, Lcom/viber/voip/messages/e;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/messages/e;->a:J

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conversation [mGroupId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/viber/voip/messages/e;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mParticipants.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/messages/e;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mMessages.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/e;->e:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/e;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
