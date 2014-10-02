.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;
.super Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:[Ljava/lang/String;

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private G:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->n:I

    .line 17
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->o:I

    .line 18
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->p:I

    .line 19
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->q:I

    .line 20
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->r:I

    .line 21
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->s:I

    .line 22
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->t:I

    .line 23
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x7

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->u:I

    .line 24
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->v:I

    .line 25
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    sput v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->w:I

    .line 39
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->n:I

    const-string/jumbo v2, "group_conversations_extras.group_uri"

    aput-object v2, v0, v1

    .line 41
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->o:I

    const-string/jumbo v2, "group_conversations_extras.tag_line"

    aput-object v2, v0, v1

    .line 42
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->p:I

    const-string/jumbo v2, "group_conversations_extras.tags"

    aput-object v2, v0, v1

    .line 43
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->q:I

    const-string/jumbo v2, "group_conversations_extras.location_lat"

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->r:I

    const-string/jumbo v2, "group_conversations_extras.location_lng"

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->s:I

    const-string/jumbo v2, "group_conversations_extras.country"

    aput-object v2, v0, v1

    .line 46
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->t:I

    const-string/jumbo v2, "group_conversations_extras.location_address"

    aput-object v2, v0, v1

    .line 47
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->u:I

    const-string/jumbo v2, "group_conversations_extras.revision"

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->v:I

    const-string/jumbo v2, "group_conversations_extras.verified"

    aput-object v2, v0, v1

    .line 49
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->w:I

    const-string/jumbo v2, "conversations.background_portrait"

    aput-object v2, v0, v1

    .line 51
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    sget-object v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->m:[Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->c:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/at;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/publicgroup/at;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;-><init>(Landroid/database/Cursor;)V

    .line 69
    invoke-virtual {p0, p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;Landroid/database/Cursor;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;-><init>(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->x:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->y:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->z:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->A:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->B:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->C:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->D:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->E:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->F:Z

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public F()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->F:Z

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->y:Ljava/lang/String;

    return-object v0
.end method

.method public M()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->toTagsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->A:I

    return v0
.end method

.method public O()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->B:I

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->C:Ljava/lang/String;

    return-object v0
.end method

.method public Q()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->E:I

    return v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->D:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->G:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 135
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->n:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->x:Ljava/lang/String;

    .line 136
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->o:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->y:Ljava/lang/String;

    .line 137
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->p:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->z:Ljava/lang/String;

    .line 138
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->q:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->A:I

    .line 139
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->r:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->B:I

    .line 140
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->s:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->C:Ljava/lang/String;

    .line 141
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->t:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->D:Ljava/lang/String;

    .line 142
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->u:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->E:I

    .line 143
    sget v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->v:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->F:Z

    .line 144
    sget v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->w:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->G:Ljava/lang/String;

    .line 145
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; ConversationExtraLoaderEntity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    .line 149
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
