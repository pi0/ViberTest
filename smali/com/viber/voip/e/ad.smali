.class public Lcom/viber/voip/e/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/res/Resources;

.field private c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field private d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

.field private e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/viber/voip/e/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/e/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/ConversationEntity;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x3

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 48
    iput-object p1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    .line 49
    iput-object p2, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 50
    iput-object p4, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    .line 51
    iput-object p3, p0, Lcom/viber/voip/e/ad;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 52
    iput-boolean p6, p0, Lcom/viber/voip/e/ad;->o:Z

    .line 53
    invoke-interface {p4}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->isConversationGroup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/e/ad;->m:Z

    .line 54
    iput-boolean p5, p0, Lcom/viber/voip/e/ad;->n:Z

    .line 55
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/e/ad;->l:I

    .line 56
    invoke-direct {p0}, Lcom/viber/voip/e/ad;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/viber/voip/e/ad;->g()V

    .line 58
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 5
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/viber/voip/e/ad;->l:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 187
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 188
    const-string/jumbo v0, "group_follow"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0c02c7

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {p2}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    const-string/jumbo v2, "group_rename"

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02c6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    new-array v2, v8, [Ljava/lang/Object;

    aget-object v3, v1, v6

    aput-object v3, v2, v5

    aget-object v3, v1, v8

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 127
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02c9

    new-array v3, v8, [Ljava/lang/Object;

    aget-object v4, v1, v6

    aput-object v4, v3, v5

    aget-object v1, v1, v8

    aput-object v1, v3, v7

    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 134
    :goto_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 135
    const-string/jumbo v0, "rename"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    .line 180
    :cond_0
    :goto_2
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c04a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_2
    aget-object v0, v1, v6

    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    new-array v2, v8, [Ljava/lang/Object;

    aget-object v3, v1, v6

    aput-object v3, v2, v5

    aget-object v3, v1, v8

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02c8

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v1, v1, v8

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    goto :goto_1

    .line 137
    :cond_3
    const-string/jumbo v2, "add"

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "many_add"

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 138
    :cond_4
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    array-length v3, v1

    if-le v3, v7, :cond_5

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    iget-object v1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02c4

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02c5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 144
    const-string/jumbo v0, "you_join"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    .line 153
    :goto_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    goto/16 :goto_2

    .line 146
    :cond_5
    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v2

    .line 148
    const-string/jumbo v3, "many_add"

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    aget-object v1, v1, v6

    invoke-interface {v2, v1, v0}, Lcom/viber/voip/util/l;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 150
    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 151
    invoke-interface {p2}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->isPublicGroup()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "pg_join"

    :goto_5
    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    goto :goto_3

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/viber/voip/util/l;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 151
    :cond_7
    const-string/jumbo v0, "join"

    goto :goto_5

    .line 154
    :cond_8
    const-string/jumbo v2, "group_icon_changed"

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02ce

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 161
    const-string/jumbo v0, "group_icon_changed"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 163
    :cond_9
    const-string/jumbo v2, "group_background_changed"

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 165
    iget-object v1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02d0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 170
    const-string/jumbo v0, "group_background_changed"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 171
    :cond_a
    const-string/jumbo v2, "many_group_attrs_changed"

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c02d1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    aput-object v4, v3, v5

    aget-object v1, v1, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 178
    const-string/jumbo v0, "group_many_attrs_changed"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/e/ad;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/e/ad;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-boolean v1, p0, Lcom/viber/voip/e/ad;->m:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getParticipantContactName: contactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/e/ad;->a(Ljava/lang/String;)V

    .line 97
    return-object v0

    .line 88
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c07a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 102
    const/16 v0, 0xa

    iget v1, p0, Lcom/viber/voip/e/ad;->l:I

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iget-object v1, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/e/ad;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V

    .line 115
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, -0x5

    iget v1, p0, Lcom/viber/voip/e/ad;->l:I

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0, v0}, Lcom/viber/voip/e/ad;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    goto :goto_0

    .line 106
    :cond_1
    const/16 v0, 0xc

    iget v1, p0, Lcom/viber/voip/e/ad;->l:I

    if-ne v0, v1, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/viber/voip/e/ad;->i()V

    goto :goto_0

    .line 109
    :cond_2
    iget-boolean v0, p0, Lcom/viber/voip/e/ad;->n:Z

    if-eqz v0, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/viber/voip/e/ad;->h()V

    goto :goto_0

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/viber/voip/e/ad;->j()V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c02c0

    .line 195
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v1}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v1}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 203
    :goto_2
    iget-object v2, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    :goto_3
    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 206
    iget-object v0, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 207
    const-string/jumbo v0, "smart"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    .line 208
    return-void

    .line 192
    :cond_0
    const v0, 0x7f0c02c1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    const v2, 0x7f0c04a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    goto :goto_2

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    goto :goto_3
.end method

.method private i()V
    .locals 3

    .prologue
    const v2, 0x7f0c03b2

    .line 211
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 215
    const/4 v0, -0x3

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 216
    const-string/jumbo v0, "missed_call"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    .line 217
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const v1, 0x7f0c02bb

    const/16 v6, 0xb

    const v5, 0x7f0c04a3

    .line 221
    iget-boolean v0, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/e/ad;->o:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 222
    :goto_0
    iget v2, p0, Lcom/viber/voip/e/ad;->l:I

    if-ne v6, v2, :cond_0

    .line 223
    const v0, 0x7f0c04d9

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    .line 227
    iput-object v2, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 229
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v3

    .line 230
    iget-boolean v4, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/viber/voip/e/ad;->o:Z

    if-eqz v4, :cond_3

    .line 232
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_1
    invoke-interface {v3, v2, v0}, Lcom/viber/voip/util/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    .line 275
    :goto_2
    const/4 v0, -0x3

    iput v0, p0, Lcom/viber/voip/e/ad;->j:I

    .line 276
    const-string/jumbo v0, "message"

    iput-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    .line 277
    return-void

    .line 221
    :cond_1
    const v0, 0x7f0c02bd

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 237
    :cond_3
    sget-boolean v1, Lcom/viber/voip/e/u;->d:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/viber/voip/e/ad;->l:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/viber/voip/e/ad;->l:I

    if-ne v6, v1, :cond_7

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-boolean v0, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/viber/voip/e/ad;->o:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_3
    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 245
    invoke-interface {v3, v2, v0, v1}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 246
    invoke-interface {v3, v2, v1}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    goto :goto_2

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 248
    :cond_6
    invoke-interface {v3, v2, v1}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    goto :goto_2

    .line 251
    :cond_7
    iget-boolean v1, p0, Lcom/viber/voip/e/ad;->m:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/viber/voip/e/ad;->o:Z

    if-nez v1, :cond_a

    .line 253
    iget-object v1, p0, Lcom/viber/voip/e/ad;->c:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v4, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    if-eqz v4, :cond_9

    .line 255
    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/viber/voip/e/ad;->d:Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_4
    sget-object v1, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/viber/voip/e/ad;->l:I

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 258
    iput-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 259
    iget-object v4, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    invoke-interface {v3, v1, v4, v0}, Lcom/viber/voip/util/l;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    move v0, v1

    .line 266
    :goto_5
    invoke-interface {v3, v0, v2}, Lcom/viber/voip/util/l;->a(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 262
    :cond_9
    iget-object v4, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    .line 263
    invoke-interface {v3, v2, v1}, Lcom/viber/voip/util/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    goto :goto_5

    .line 270
    :cond_a
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/viber/voip/e/ad;->l:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/viber/voip/e/ad;->i:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/util/l;->a(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    .line 272
    iget-object v0, p0, Lcom/viber/voip/e/ad;->b:Landroid/content/res/Resources;

    sget-object v1, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/viber/voip/e/ad;->l:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    goto/16 :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/e/ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/e/ad;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/16 v3, 0x89

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/ad;->h:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/e/ad;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/viber/voip/e/ad;->j:I

    return v0
.end method
