.class public Lcom/viber/voip/messages/conversation/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:J

.field private c:I

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:J

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "participants._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "participants.active"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "participants_info._id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "participants_info.participant_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "participants_info.contact_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "participants_info.display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "participants_info.contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "participants_info.native_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "participants_info.number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "participants_info.location_lat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "participants_info.location_lng"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "participants_info.location_date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "participants_info.viber_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "conversations.conversation_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/conversation/ar;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p0, p1}, Lcom/viber/voip/messages/conversation/ar;->a(Lcom/viber/voip/messages/conversation/ar;Landroid/database/Cursor;)V

    .line 70
    return-void
.end method

.method private static a(Lcom/viber/voip/messages/conversation/ar;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->b:J

    .line 74
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ar;->c:I

    .line 75
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->d:J

    .line 76
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ar;->e:I

    .line 77
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->f:Ljava/lang/String;

    .line 78
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->g:Ljava/lang/String;

    .line 79
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->h:J

    .line 80
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->i:J

    .line 81
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->j:Ljava/lang/String;

    .line 82
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ar;->k:I

    .line 83
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ar;->l:I

    .line 84
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->m:J

    .line 85
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->n:Ljava/lang/String;

    .line 86
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ar;->o:I

    .line 87
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->c:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->d:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->h:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->i:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->l:I

    return v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ar;->m:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/viber/voip/messages/conversation/ar;->o:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-static {p0}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ar;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ar;->n:Ljava/lang/String;

    return-object v0
.end method
