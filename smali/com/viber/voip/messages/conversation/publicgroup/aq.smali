.class public Lcom/viber/voip/messages/conversation/publicgroup/aq;
.super Lcom/viber/voip/messages/conversation/h;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I


# instance fields
.field private A:Z

.field private B:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    sget-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c:I

    .line 24
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d:I

    .line 25
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->e:I

    .line 26
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->f:I

    .line 27
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->g:I

    .line 28
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->h:I

    .line 29
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->i:I

    .line 30
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->j:I

    .line 31
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->k:I

    .line 32
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->l:I

    .line 33
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->m:I

    .line 34
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->n:I

    .line 35
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->o:I

    .line 52
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c:I

    const-string/jumbo v2, "group_conversations_extras.group_role"

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d:I

    const-string/jumbo v2, "group_conversations_extras.icon_id"

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->e:I

    const-string/jumbo v2, "group_conversations_extras.watchers_count"

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->f:I

    const-string/jumbo v2, "group_conversations_extras.tags"

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->g:I

    const-string/jumbo v2, "group_conversations_extras.tag_line"

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->h:I

    const-string/jumbo v2, "group_conversations_extras.group_uri"

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->i:I

    const-string/jumbo v2, "group_conversations_extras.location_address"

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->j:I

    const-string/jumbo v2, "group_conversations_extras.location_lat"

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->k:I

    const-string/jumbo v2, "group_conversations_extras.location_lng"

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->l:I

    const-string/jumbo v2, "group_conversations_extras.inviter"

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->m:I

    const-string/jumbo v2, "group_conversations_extras.verified"

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->n:I

    const-string/jumbo v2, "group_conversations_extras.revision"

    aput-object v2, v0, v1

    .line 64
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->o:I

    const-string/jumbo v2, "group_conversations_extras.background_id"

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    sget-object v1, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/h;-><init>(Landroid/database/Cursor;)V

    .line 76
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->p:I

    .line 77
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->q:Ljava/lang/String;

    .line 78
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s:I

    .line 79
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->t:Ljava/lang/String;

    .line 80
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u:Ljava/lang/String;

    .line 81
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->h:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->v:Ljava/lang/String;

    .line 82
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->w:Ljava/lang/String;

    .line 83
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->j:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->x:I

    .line 84
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->k:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->y:I

    .line 85
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->l:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->z:Ljava/lang/String;

    .line 86
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->m:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->A:Z

    .line 87
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->n:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->B:I

    .line 88
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->o:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->r:Ljava/lang/String;

    .line 89
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/h;-><init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 93
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->p:I

    .line 94
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->q:Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getWatchersCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s:I

    .line 96
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->t:Ljava/lang/String;

    .line 97
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getTagLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->v:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->w:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLocationLat()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->x:I

    .line 101
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLocationLng()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->y:I

    .line 102
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getInviter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->z:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->isVerified()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->A:Z

    .line 104
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->B:I

    .line 105
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getBackgroundId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->r:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->x:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->w:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->v:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->z:Ljava/lang/String;

    return-object v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->A:Z

    return v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->B:I

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->r:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " PublicGroupConversationItemLoaderEntity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "groupRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", watchersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagLine=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", addressString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->p:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->q:Ljava/lang/String;

    return-object v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s:I

    return v0
.end method

.method public x()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->toTagsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u:Ljava/lang/String;

    return-object v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->y:I

    return v0
.end method
