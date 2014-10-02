.class public Lcom/viber/voip/messages/conversation/ui/ConversationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/conversation/ui/ConversationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field public final p:Z

.field public final q:Z

.field public final r:I

.field public final s:J

.field public final t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ad;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/ui/ad;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    .line 71
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->i:Ljava/lang/String;

    .line 73
    iput-object p11, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    .line 74
    iput-object p12, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->o:J

    .line 77
    iput-wide p3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    .line 80
    iput p6, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    .line 81
    iput-wide p7, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->s:J

    .line 82
    iput-wide p9, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->t:J

    .line 83
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->i:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->o:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->s:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->t:J

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method

.method public constructor <init>(Lcom/viber/voip/messages/adapters/a/a;)V
    .locals 6
    .parameter

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->s()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->r()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(Lcom/viber/voip/messages/adapters/a/a;JJ)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/adapters/a/a;JJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    .line 36
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->i:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    .line 42
    iput-wide p4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->o:J

    .line 43
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    .line 44
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    .line 45
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    .line 46
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->y()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    .line 47
    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->s:J

    .line 48
    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->t:J

    .line 49
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    check-cast p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 135
    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    iget-wide v4, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 138
    :cond_4
    iget v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    iget v3, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    iget-wide v4, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    .line 141
    goto :goto_0

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 143
    iget-object v2, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationData [contactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", foundMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", foundMessageDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", systemConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isActivateSecondaryConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativeContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->o:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v1, v2

    .line 114
    goto :goto_1
.end method
