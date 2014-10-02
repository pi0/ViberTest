.class public Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;
.super Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I


# instance fields
.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->d:I

    .line 15
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->e:I

    .line 16
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->f:I

    .line 17
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->g:I

    .line 18
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->h:I

    .line 19
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->i:I

    .line 20
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->j:I

    .line 21
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->k:I

    .line 22
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->l:I

    .line 36
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->d:I

    const-string/jumbo v2, "group_conversations_extras.group_role"

    aput-object v2, v0, v1

    .line 38
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->e:I

    const-string/jumbo v2, "group_conversations_extras.icon_id"

    aput-object v2, v0, v1

    .line 39
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->f:I

    const-string/jumbo v2, "group_conversations_extras.watchers_count"

    aput-object v2, v0, v1

    .line 40
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->g:I

    const-string/jumbo v2, "local_message_id"

    aput-object v2, v0, v1

    .line 41
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->h:I

    const-string/jumbo v2, "verified"

    aput-object v2, v0, v1

    .line 42
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->i:I

    const-string/jumbo v2, "SUM(CASE WHEN participants.active=0 THEN 1 ELSE 0 END)"

    aput-object v2, v0, v1

    .line 43
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->j:I

    const-string/jumbo v2, "last_media_type"

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->k:I

    const-string/jumbo v2, "last_msg_text"

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->l:I

    const-string/jumbo v2, "sender_phone"

    aput-object v2, v0, v1

    .line 47
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    sget-object v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    new-instance v0, Lcom/viber/voip/messages/conversation/q;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/q;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;-><init>(Landroid/database/Cursor;)V

    .line 65
    invoke-virtual {p0, p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;Landroid/database/Cursor;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;-><init>(Landroid/database/Cursor;Z)V

    .line 70
    invoke-virtual {p0, p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->a(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;Landroid/database/Cursor;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->m:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->n:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->p:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->r:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->s:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->t:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->u:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->v:Ljava/lang/String;

    .line 61
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;-><init>(Ljava/lang/String;JI)V

    .line 75
    iput p4, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o:I

    .line 76
    iput p5, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->m:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->p:I

    .line 78
    iput-object p6, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->n:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->q:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->m:I

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->n:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->r:Z

    return v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->s:I

    return v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->t:I

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->u:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 123
    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->d:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->m:I

    .line 124
    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->e:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->n:Ljava/lang/String;

    .line 125
    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->f:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o:I

    .line 126
    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->g:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->p:I

    .line 127
    sget v1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->h:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->r:Z

    .line 128
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->i:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->s:I

    .line 129
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->j:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->t:I

    .line 130
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->k:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->u:Ljava/lang/String;

    .line 131
    sget v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->l:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->v:Ljava/lang/String;

    .line 132
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; ConversationLoaderPublicGroupEntity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "groupRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", watchersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", publicGroupLastMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", participantsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMsgText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
