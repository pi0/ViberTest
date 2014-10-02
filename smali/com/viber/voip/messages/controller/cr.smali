.class public Lcom/viber/voip/messages/controller/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/controller/c/as;

.field private c:Lcom/viber/voip/messages/controller/c/e;

.field private d:Lcom/viber/voip/messages/controller/c/a;

.field private e:Lcom/viber/voip/messages/controller/cq;

.field private f:Lcom/viber/voip/messages/controller/c/b;

.field private g:Lcom/viber/voip/ViberApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/cr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    .line 117
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    .line 118
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    .line 119
    invoke-static {}, Lcom/viber/voip/messages/controller/c/b;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cr;->f:Lcom/viber/voip/messages/controller/c/b;

    .line 121
    new-instance v0, Lcom/viber/voip/messages/controller/c/a;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cr;->d:Lcom/viber/voip/messages/controller/c/a;

    .line 122
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cr;->e:Lcom/viber/voip/messages/controller/cq;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/cr;)Lcom/viber/voip/messages/controller/c/as;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isToSend()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSyncedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p1, p4}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 225
    :cond_0
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSystemMessage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isActivateSecondaryNotification()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v8

    .line 230
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->a(JJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    :cond_2
    const/4 v3, 0x1

    .line 236
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v6

    .line 241
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getParticipantInfoId1()J

    move-result-wide v0

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 249
    :cond_4
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 250
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 251
    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 253
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSyncedMessage()Z

    move-result v2

    if-nez v2, :cond_9

    .line 257
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->b(JJ)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->c(JJ)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->e:Lcom/viber/voip/messages/controller/cq;

    invoke-virtual {v2, p2, v0, v1}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 274
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 275
    invoke-direct {p0, p2, v1, p3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 278
    const/4 v0, 0x1

    move v7, v0

    move-object p2, v1

    .line 289
    :goto_3
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JJLcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Z

    .line 292
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSyncedMessage()Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->e(JJ)V

    .line 294
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    .line 303
    new-instance v0, Lcom/viber/voip/messages/controller/cv;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, v7

    move-object v4, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    return-object v0

    .line 225
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 261
    :cond_9
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    goto :goto_2

    .line 264
    :cond_a
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_5

    .line 268
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageGlobalId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageGlobalId(I)V

    goto/16 :goto_2

    .line 280
    :cond_b
    invoke-direct {p0, p2, v0, p3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 283
    const/4 v1, 0x1

    move v7, v1

    move-object p2, v0

    goto/16 :goto_3

    .line 285
    :cond_c
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 286
    const/4 v0, 0x1

    move v7, v0

    goto/16 :goto_3

    :cond_d
    move v7, v2

    goto/16 :goto_3
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;JLjava/lang/String;JLjava/lang/String;I)Lcom/viber/voip/messages/controller/cv;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move-wide/from16 v3, p6

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    .line 370
    invoke-direct/range {v1 .. v8}, Lcom/viber/voip/messages/controller/cr;->a(IJJLjava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v8

    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/cr;->a()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v11

    .line 374
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSystemMessage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isActivateSecondaryNotification()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 380
    const/4 v1, 0x0

    move-object v9, v1

    .line 386
    :goto_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->b(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v12

    .line 387
    const/4 v1, 0x0

    .line 390
    if-eqz v9, :cond_17

    .line 391
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->b(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v1

    move-object v7, v1

    .line 396
    :goto_2
    if-eqz p1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->k(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 400
    if-nez v1, :cond_d

    .line 401
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move-result v1

    .line 407
    :goto_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSystemMessage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isActivateSecondaryNotification()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setFlag(I)V

    .line 409
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->isRakutenPhone(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setFlag(I)V

    .line 412
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isActivateSecondaryNotification()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setFlag(I)V

    .line 418
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 419
    if-eqz v7, :cond_f

    .line 420
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 421
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setLastMessageId(J)V

    move v10, v1

    .line 431
    :cond_4
    :goto_4
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    move/from16 v0, p9

    if-ne v0, v1, :cond_11

    .line 432
    if-eqz v9, :cond_10

    .line 433
    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    .line 434
    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId2(J)V

    .line 447
    :goto_5
    if-eqz p1, :cond_13

    .line 448
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setLastMessageId(J)V

    .line 449
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDate(J)V

    .line 454
    :goto_6
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v8}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 456
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 457
    new-instance v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    invoke-direct {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;-><init>()V

    .line 458
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupRole(I)V

    .line 459
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupId(J)V

    .line 460
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setRevision(I)V

    .line 461
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 464
    :cond_5
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 465
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    .line 467
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 468
    invoke-virtual {p1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 469
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 471
    :cond_6
    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v6

    move-object v1, p0

    move-wide/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 474
    :cond_7
    if-eqz p1, :cond_8

    .line 475
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 476
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 477
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 479
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(JJLcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Z

    .line 482
    :cond_8
    if-eqz v7, :cond_9

    .line 483
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setConversationId(J)V

    .line 484
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v7}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 487
    :cond_9
    if-eqz v11, :cond_a

    .line 488
    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setConversationId(J)V

    .line 489
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v12}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 492
    :cond_a
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 493
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v12

    .line 495
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 496
    if-eqz p1, :cond_b

    .line 497
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/viber/voip/messages/controller/c/e;->a(JJJZ)V

    .line 499
    :cond_b
    new-instance v1, Lcom/viber/voip/messages/controller/cv;

    const/4 v3, 0x1

    if-nez v9, :cond_14

    move-object v5, v11

    :goto_7
    const/4 v7, 0x0

    move v2, v10

    move-object v4, v12

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 502
    :goto_8
    return-object v1

    .line 374
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 403
    :cond_d
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 404
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move v1, v10

    goto/16 :goto_3

    .line 426
    :cond_e
    invoke-virtual {v12}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 427
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setLastMessageId(J)V

    :cond_f
    move v10, v1

    goto/16 :goto_4

    .line 436
    :cond_10
    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    goto/16 :goto_5

    .line 439
    :cond_11
    if-eqz v9, :cond_12

    .line 440
    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    .line 441
    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId2(J)V

    goto/16 :goto_5

    .line 443
    :cond_12
    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    goto/16 :goto_5

    .line 451
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDate(J)V

    goto/16 :goto_6

    :cond_14
    move-object v5, v9

    .line 499
    goto :goto_7

    .line 502
    :cond_15
    new-instance v1, Lcom/viber/voip/messages/controller/cv;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v9, :cond_16

    move-object v5, v11

    :goto_9
    const/4 v7, 0x1

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    goto :goto_8

    :cond_16
    move-object v5, v9

    goto :goto_9

    :cond_17
    move-object v7, v1

    goto/16 :goto_2

    :cond_18
    move-object v9, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;JLjava/lang/String;JLjava/lang/String;I)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isToSend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isToSend()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    :cond_1
    const/4 v5, 0x0

    .line 165
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    .line 167
    :goto_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSystemMessage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isActivateSecondaryNotification()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v6

    :goto_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getType()I

    move-result v2

    if-ne v2, v6, :cond_7

    move v2, v6

    :goto_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v4

    .line 171
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 172
    new-instance v0, Lcom/viber/voip/messages/controller/cv;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 213
    :cond_3
    :goto_4
    return-object v0

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->k(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v5

    goto :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    goto :goto_1

    :cond_6
    move v0, v1

    .line 167
    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_3

    .line 175
    :cond_8
    if-eqz v3, :cond_a

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v2

    if-eq v0, v2, :cond_9

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v0

    if-ne v9, v0, :cond_a

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_a

    .line 179
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v2

    if-ne v9, v2, :cond_b

    .line 180
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 188
    :cond_a
    :goto_5
    if-nez v3, :cond_c

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    .line 190
    iget-boolean v1, v0, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/cr;->c(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    goto :goto_4

    .line 181
    :cond_b
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v0

    if-ne v6, v0, :cond_a

    .line 182
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    goto :goto_5

    .line 193
    :cond_c
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSms()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isToSend()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDeletedToken()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_d

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    :cond_d
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    .line 199
    new-instance v0, Lcom/viber/voip/messages/controller/cv;

    move v2, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    goto/16 :goto_4

    .line 201
    :cond_e
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v8

    .line 205
    if-eqz p4, :cond_10

    iget-boolean v0, v8, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "animated_message"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "image"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "video"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    :cond_f
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v1}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 210
    :cond_10
    if-eqz p4, :cond_11

    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(JJJZ)V

    .line 211
    :cond_11
    iget-boolean v0, v8, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/cr;->c(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    :cond_12
    move-object v0, v8

    .line 213
    goto/16 :goto_4
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)Lcom/viber/voip/messages/controller/cv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method private a(IJJLjava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;-><init>()V

    .line 317
    invoke-virtual {v0, p7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p4, p5}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDate(J)V

    .line 319
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setConversationType(I)V

    .line 320
    if-nez p1, :cond_0

    .line 321
    invoke-virtual {v0, p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setNumber(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-object v0

    .line 323
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupId(J)V

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setSmartNotifications(I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 330
    new-instance v1, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    invoke-direct {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;-><init>()V

    .line 331
    invoke-virtual {p7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupId(J)V

    .line 332
    invoke-virtual {v1, p3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setAddressString(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setInviter(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupRole(I)V

    .line 335
    invoke-virtual {v1, p5}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setRevision(I)V

    .line 336
    invoke-virtual {v1, p4}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupUri(Ljava/lang/String;)V

    .line 338
    if-eqz p6, :cond_0

    .line 341
    iget-object v2, p6, Lcom/viber/jni/PublicGroupInfo;->backgroundId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setBackgroundId(Ljava/lang/String;)V

    .line 342
    iget-object v2, p6, Lcom/viber/jni/PublicGroupInfo;->groupUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupUri(Ljava/lang/String;)V

    .line 343
    iget-object v2, p6, Lcom/viber/jni/PublicGroupInfo;->tagLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagLine(Ljava/lang/String;)V

    .line 344
    iget-object v2, p6, Lcom/viber/jni/PublicGroupInfo;->tags:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setTagsArray([Ljava/lang/String;)V

    .line 345
    iget-object v2, p6, Lcom/viber/jni/PublicGroupInfo;->backgroundId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setBackgroundId(Ljava/lang/String;)V

    .line 346
    iget-object v2, p6, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setIconId(Ljava/lang/String;)V

    .line 347
    iget v2, p6, Lcom/viber/jni/PublicGroupInfo;->revision:I

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setRevision(I)V

    .line 348
    iget v2, p6, Lcom/viber/jni/PublicGroupInfo;->watchersCount:I

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setWatchersCount(I)V

    .line 349
    iget v2, p6, Lcom/viber/jni/PublicGroupInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setVerified(Z)V

    .line 351
    iget-object v0, p6, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p6, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->getNativeLatitude()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLat(I)V

    .line 353
    iget-object v0, p6, Lcom/viber/jni/PublicGroupInfo;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0}, Lcom/viber/jni/LocationInfo;->getNativeLongitude()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setLocationLng(I)V

    .line 356
    :cond_0
    return-object v1

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/cr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/controller/cr;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 7
    .parameter

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/cr;->a()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v6

    .line 684
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 686
    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setParticipantInfoId1(J)V

    .line 687
    return-void
.end method

.method private a(JJLcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    if-eqz p5, :cond_0

    .line 308
    invoke-virtual {p5, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setConversationId(J)V

    .line 309
    invoke-virtual {p5, p3, p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->setMessageId(J)V

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p5}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lcom/viber/voip/messages/controller/w;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/cr;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "has_description"

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 875
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 876
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 878
    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isAnswerredOnAnotherDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->A(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 894
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 895
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 896
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 897
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 899
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getUnread()I

    move-result v0

    if-lez v0, :cond_1

    .line 900
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getUnread()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 903
    const/4 v0, 0x1

    .line 905
    :goto_1
    return v0

    .line 882
    :cond_2
    const-string/jumbo v0, "incoming_call"

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_3
    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isTransferredIn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 885
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->B(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 886
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_4
    const-string/jumbo v0, "incoming_call"

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_5
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 905
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(JJ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 910
    div-long v0, p0, v2

    .line 911
    div-long v2, p2, v2

    .line 914
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    return-void
.end method

.method private c(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z
    .locals 6
    .parameter

    .prologue
    .line 850
    if-eqz p1, :cond_0

    const-string/jumbo v0, "location"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/jni/LocationInfo;->getLongitude()D

    move-result-wide v3

    new-instance v5, Lcom/viber/voip/messages/controller/cs;

    invoke-direct {v5, p0, p1}, Lcom/viber/voip/messages/controller/cs;-><init>(Lcom/viber/voip/messages/controller/cr;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/extras/a/a;->a(DDLcom/viber/voip/messages/extras/a/c;)V

    .line 862
    const/4 v0, 0x1

    .line 865
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/lang/String;I)Lcom/viber/voip/messages/controller/cu;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 671
    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JZ)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v6

    .line 673
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v7

    .line 674
    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    move-object v0, p0

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    .line 675
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->a([Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 678
    new-instance v1, Lcom/viber/voip/messages/controller/cu;

    invoke-direct {v1, v6, v0, v7}, Lcom/viber/voip/messages/controller/cu;-><init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    return-object v1
.end method

.method public a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    const-string/jumbo v11, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 615
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "New public group must be of type TYPE_PUBLIC_GROUP or TYPE_TRIAL_PUBLIC_GROUP or TYPE_PUBLIC_GROUP_WAITING_INFO"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v9

    .line 620
    if-nez v9, :cond_4

    const/4 v2, 0x1

    move v13, v2

    .line 622
    :goto_0
    if-eqz v13, :cond_6

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, ""

    if-eqz p12, :cond_5

    move-object/from16 v0, p12

    iget-object v9, v0, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    :goto_1
    move-object v2, p0

    move/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(IJJLjava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v9

    .line 624
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v9}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 626
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 627
    invoke-direct {p0, v9}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 628
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 638
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v2

    .line 639
    if-nez v2, :cond_7

    move-object v2, p0

    move/from16 v3, p5

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p12

    .line 640
    invoke-direct/range {v2 .. v9}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v2

    .line 641
    iget-object v3, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 663
    :cond_2
    :goto_3
    if-eqz p8, :cond_3

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p7

    move/from16 v7, p4

    .line 664
    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 666
    :cond_3
    new-instance v6, Lcom/viber/voip/messages/controller/cv;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v13

    invoke-direct/range {v6 .. v12}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    return-object v6

    .line 620
    :cond_4
    const/4 v2, 0x0

    move v13, v2

    goto :goto_0

    :cond_5
    move-object/from16 v9, p11

    .line 623
    goto :goto_1

    .line 632
    :cond_6
    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v2

    move/from16 v0, p4

    if-eq v2, v0, :cond_1

    .line 633
    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setConversationType(I)V

    .line 634
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v9}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_2

    .line 642
    :cond_7
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v3

    move/from16 v0, p5

    if-eq v3, v0, :cond_2

    .line 643
    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setInviter(Ljava/lang/String;)V

    .line 644
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->setGroupRole(I)V

    .line 645
    iget-object v3, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 650
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 651
    invoke-direct {p0, v9}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 652
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v9}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 653
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/e;->f(JZ)V

    goto :goto_3
.end method

.method public a(JZ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, ""

    move-object v0, p0

    move-wide v2, p1

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(IJJLjava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v7

    .line 578
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v7}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 581
    invoke-direct {p0, v7}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 583
    array-length v0, p4

    new-array v8, v0, [Lcom/viber/jni/GroupUserInfo;

    .line 584
    if-eqz p4, :cond_1

    .line 585
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, p4

    if-ge v6, v0, :cond_1

    .line 586
    aget-object v9, p4, v6

    .line 587
    iget-object v0, v9, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    aput-object v0, v8, v6

    .line 589
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v3, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    iget-object v0, v9, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v4, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    iget-object v0, v9, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 591
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    iget v3, v9, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->d:I

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 585
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 589
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_1

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 597
    if-eqz p3, :cond_2

    .line 598
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v1

    .line 599
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    .line 601
    :cond_2
    new-instance v0, Lcom/viber/voip/messages/controller/cv;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cv;-><init>(ZZLcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/controller/cv;
    .locals 1
    .parameter

    .prologue
    .line 136
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Lcom/viber/voip/messages/controller/cv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;)Lcom/viber/voip/messages/controller/cw;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setGroupName(Ljava/lang/String;)V

    .line 1126
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p3}, Lcom/viber/voip/messages/controller/c/as;->b(JLjava/lang/String;)I

    .line 1127
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 1129
    new-instance v2, Lcom/viber/voip/messages/controller/cw;

    invoke-direct {v2, v0, v1, p3}, Lcom/viber/voip/messages/controller/cw;-><init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(ILjava/lang/String;JLjava/lang/String;ILcom/viber/jni/PublicGroupInfo;Z)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 983
    if-nez p1, :cond_1

    .line 984
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v8

    .line 989
    :goto_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 990
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v3

    .line 991
    if-eqz p8, :cond_3

    if-nez v8, :cond_3

    .line 992
    if-eqz p7, :cond_2

    move-object/from16 v0, p7

    iget v7, v0, Lcom/viber/jni/PublicGroupInfo;->groupRole:I

    .line 993
    :goto_1
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    move v6, p1

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v2 .. v13}, Lcom/viber/voip/messages/controller/cr;->a(IJIILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PublicGroupInfo;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    :goto_2
    move-object v8, v2

    .line 1014
    :cond_0
    :goto_3
    return-object v8

    .line 986
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v8

    goto :goto_0

    .line 992
    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    .line 994
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    move-object v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move v7, p1

    .line 995
    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/cr;->a(IJII)V

    :cond_4
    move-object v2, v8

    goto :goto_2

    .line 997
    :cond_5
    if-eqz p8, :cond_6

    if-nez v8, :cond_6

    if-nez p1, :cond_6

    .line 998
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    const-string/jumbo v10, ""

    const/4 v11, 0x0

    move-object v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v11}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;JLjava/lang/String;JLjava/lang/String;I)Lcom/viber/voip/messages/controller/cv;

    move-result-object v2

    .line 1000
    iget-object v8, v2, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    .line 1001
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->f:Lcom/viber/voip/messages/controller/c/b;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/b;->b(J)V

    goto :goto_3

    .line 1002
    :cond_6
    if-eqz v8, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->f:Lcom/viber/voip/messages/controller/c/b;

    invoke-virtual {v2}, Lcom/viber/voip/messages/controller/c/b;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getLastMessageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setDate(J)V

    .line 1006
    const-string/jumbo v2, ""

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setBackgroundLandscape(Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v2, ""

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setBackgroundPortrait(Ljava/lang/String;)V

    .line 1008
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setSmartNotifications(I)V

    .line 1010
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->f:Lcom/viber/voip/messages/controller/c/b;

    invoke-virtual {v8}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/b;->b(J)V

    .line 1011
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v8}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto/16 :goto_3
.end method

.method public a(ILjava/lang/String;JZ)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/messages/controller/cr;->a(ILjava/lang/String;JLjava/lang/String;ILcom/viber/jni/PublicGroupInfo;Z)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 710
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/viber/voip/messages/controller/c/as;->a(JJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    .line 712
    if-nez v0, :cond_1

    .line 713
    invoke-virtual/range {p0 .. p5}, Lcom/viber/voip/messages/controller/cr;->b(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1, p1, p2, v2}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 721
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getStatus()I

    move-result v1

    if-eq p3, v1, :cond_0

    .line 717
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 718
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 719
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1, p1, p2, v2}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    goto :goto_0
.end method

.method public a()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->i()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 692
    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/cr;->b()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 695
    :cond_0
    return-object v0
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 800
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 804
    new-instance v1, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-direct {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;-><init>()V

    .line 805
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setParticipantType(I)V

    .line 806
    invoke-virtual {v1, p3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v1, p4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNumber(Ljava/lang/String;)V

    .line 809
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLat(I)V

    .line 811
    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLng(I)V

    .line 812
    invoke-virtual {p5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLocationDate(J)V

    .line 815
    :cond_0
    if-nez p1, :cond_1

    .line 816
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/viber/voip/contacts/c/d/b;->b(Ljava/lang/String;)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_1

    .line 820
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->k()Landroid/net/Uri;

    move-result-object v2

    .line 822
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactId(J)V

    .line 823
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativeContactId(J)V

    .line 824
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setContactName(Ljava/lang/String;)V

    .line 825
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->f()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setNativePhotoId(J)V

    .line 826
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 830
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/e;->g(JZ)V

    move-object v0, v1

    .line 840
    :cond_2
    :goto_1
    return-object v0

    .line 826
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->i()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 837
    if-nez v0, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/cr;->b()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    goto :goto_1
.end method

.method public a(ZZLjava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 747
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/cr;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 757
    if-eqz p2, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/cr;->a()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 794
    :cond_0
    :goto_0
    return-object v0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 763
    if-nez v0, :cond_2

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 764
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cr;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    goto :goto_0

    .line 767
    :cond_2
    if-eqz p4, :cond_5

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 768
    invoke-virtual {v0, p4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move v2, v1

    .line 773
    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getViberImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 774
    invoke-virtual {v0, p5}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    move v2, v1

    .line 780
    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getLocationDate()J

    move-result-wide v4

    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 782
    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLat(I)V

    .line 783
    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLng(I)V

    .line 784
    invoke-virtual {p6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setLocationDate(J)V

    .line 785
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 789
    :goto_2
    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->g(J)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/controller/c/e;->g(Ljava/util/Set;Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method public a(JJ)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 734
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;-><init>()V

    .line 735
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setMessageToken(J)V

    .line 736
    invoke-virtual {v0, p3, p4}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setConversationId(J)V

    .line 737
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;->setLiked(I)V

    .line 738
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 739
    return-object v0
.end method

.method public a(IJII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 509
    const/4 v0, 0x3

    if-eq p5, v0, :cond_0

    .line 510
    iget-object v3, p0, Lcom/viber/voip/messages/controller/cr;->d:Lcom/viber/voip/messages/controller/c/a;

    if-ne p5, v2, :cond_2

    const-string/jumbo v0, "key_not_synced_group"

    :goto_0
    invoke-virtual {v3, p2, p3, v0, v2}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;Z)J

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    packed-switch p5, :pswitch_data_0

    .line 572
    :cond_1
    :goto_1
    return-void

    .line 510
    :cond_2
    const-string/jumbo v0, "key_not_synced_public_group"

    goto :goto_0

    .line 521
    :pswitch_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetGroupInfo(IJ)Z

    goto :goto_1

    .line 529
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_1

    .line 531
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 532
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetPublicGroupInfoUri(ILjava/lang/String;)Z

    goto :goto_1

    .line 535
    :cond_3
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v4

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v2

    if-le p4, v2, :cond_4

    move v5, p4

    :goto_2
    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetPublicGroupInfo(IJII)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v5

    goto :goto_2

    .line 541
    :pswitch_2
    iget-object v3, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v3, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_1

    .line 543
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupRole()I

    move-result v4

    .line 549
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    move v4, v2

    .line 555
    :cond_5
    if-eq v4, v2, :cond_7

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getBackgroundId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v1, v2

    .line 556
    :cond_7
    if-ge p4, v2, :cond_8

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v5

    if-lt v5, v2, :cond_a

    :cond_8
    if-nez v1, :cond_a

    .line 558
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v1

    if-le p4, v1, :cond_9

    move v5, p4

    :goto_3
    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetPublicGroupInfo(IJII)Z

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getRevision()I

    move-result v5

    goto :goto_3

    .line 559
    :cond_a
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getGroupUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetPublicGroupInfoUri(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(J)V
    .locals 8
    .parameter

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v5

    .line 1175
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 1177
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 1178
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 1179
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(JJJZ)V

    .line 1181
    :cond_0
    return-void
.end method

.method public a(JI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 960
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 961
    if-eqz v3, :cond_0

    .line 962
    invoke-virtual {v3, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setTwitterStatus(I)V

    .line 963
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 964
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 966
    :cond_0
    return-void
.end method

.method public a(JJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/as;->a(JJJ)I

    move-result v0

    if-lez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 948
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/messages/controller/c/e;->c(JZ)V

    .line 950
    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/as;->a(JLjava/lang/String;II)I

    .line 1138
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 1139
    if-eqz v3, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 1142
    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/as;->a(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 1098
    :cond_0
    return-void
.end method

.method public a(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1101
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->b(JZ)I

    .line 1102
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->d:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v1, "key_not_sync_mute_notification"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;Z)J

    .line 1103
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p1, p2, v2}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 1104
    return-void
.end method

.method public a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1048
    new-instance v3, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    invoke-direct {v3, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;-><init>(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)V

    .line 1049
    new-instance v4, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    .line 1050
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 1051
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->p()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageToken(J)V

    .line 1052
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    .line 1053
    invoke-virtual {v4, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setCount(I)V

    .line 1054
    invoke-virtual {v4, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setFlag(I)V

    .line 1055
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 1056
    const-string/jumbo v0, "call"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMimeType(Ljava/lang/String;)V

    .line 1057
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 1058
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 1060
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-virtual {v4, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 1062
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1065
    const-string/jumbo v0, "vo"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    .line 1078
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 1079
    const-string/jumbo v0, "has_description"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBucket(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0, v4, v3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    .line 1083
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isRead()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    if-eqz v1, :cond_2

    .line 1085
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->e:Lcom/viber/voip/messages/controller/cq;

    iget-object v2, v0, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-object v3, v0, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-boolean v0, v0, Lcom/viber/voip/messages/controller/cv;->c:Z

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 1087
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1058
    goto :goto_0

    .line 1066
    :cond_4
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1067
    const-string/jumbo v0, "missed_call"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_1

    .line 1068
    :cond_5
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1069
    const-string/jumbo v0, "answ_another_dev"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_1

    .line 1070
    :cond_6
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1071
    const-string/jumbo v0, "transferred"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_1

    .line 1072
    :cond_7
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1073
    const-string/jumbo v0, "outgoing_call"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_1

    .line 1075
    :cond_8
    const-string/jumbo v0, "incoming_call"

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setBody(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/ct;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/ct;-><init>(Lcom/viber/voip/messages/controller/cr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 1045
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1156
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    const-string/jumbo v2, "sms"

    invoke-virtual {v0, v2, p2, v1}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 1157
    if-eqz p3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setUnread(I)V

    .line 1158
    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setType(I)V

    .line 1159
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v0

    .line 1162
    invoke-static {}, Lcom/viber/voip/sms/s;->d()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->e:Lcom/viber/voip/messages/controller/cq;

    iget-object v2, v0, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-object v3, v0, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-object v4, v0, Lcom/viber/voip/messages/controller/cv;->f:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iget-boolean v0, v0, Lcom/viber/voip/messages/controller/cv;->c:Z

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 1165
    :cond_0
    return-void

    .line 1157
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->i(Ljava/util/Set;)I

    move-result v0

    if-lez v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->l(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 921
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 922
    iget-object v4, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 923
    iget-object v4, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/controller/c/as;->w(J)V

    .line 924
    iget-object v4, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v5, v6, v0}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    goto :goto_0

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/messages/controller/c/e;->e(Ljava/util/Set;Z)V

    .line 927
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->b(Ljava/util/Set;Z)V

    .line 928
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/controller/cr;->b(Ljava/util/Set;)V

    .line 930
    :cond_1
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/viber/voip/messages/controller/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->g(Ljava/util/Set;)V

    .line 934
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/e;->f(Ljava/util/Set;Z)V

    .line 936
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/viber/voip/messages/controller/aa;->a(Ljava/util/Set;)V

    .line 938
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/e/u;->a(Ljava/util/Set;)V

    .line 939
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/as;->p()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/fz;->a([J)V

    .line 941
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/controller/cr;->c(Ljava/util/Set;)V

    .line 942
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->h(Ljava/util/Set;)V

    .line 943
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1107
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/util/Set;Z)I

    .line 1108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1109
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cr;->d:Lcom/viber/voip/messages/controller/c/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string/jumbo v0, "key_not_sync_mute_notification"

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;Z)J

    goto :goto_0

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p1, v5}, Lcom/viber/voip/messages/controller/c/e;->e(Ljava/util/Set;Z)V

    .line 1112
    return-void
.end method

.method public a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 127
    aget-object v3, p1, v0

    .line 128
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)Lcom/viber/voip/messages/controller/cv;

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    .line 133
    :cond_2
    return-void
.end method

.method public b(JIJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;-><init>()V

    .line 726
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setConversationId(J)V

    .line 727
    invoke-virtual {v0, p3}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setStatus(I)V

    .line 728
    invoke-virtual {v0, p4, p5}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->setParticipantInfoId(J)V

    .line 729
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 730
    return-object v0
.end method

.method public b()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 699
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;-><init>()V

    .line 700
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberImage(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setViberName(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->setParticipantType(I)V

    .line 704
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 705
    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/c/e;->g(JZ)V

    .line 706
    return-object v0
.end method

.method public b(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1204
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v5

    .line 1207
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    if-eq v0, v7, :cond_0

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1209
    invoke-virtual {v5, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLat(I)V

    .line 1210
    invoke-virtual {v5, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLng(I)V

    .line 1211
    invoke-virtual {v5, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 1212
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 1213
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 1214
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(JJJZ)V

    .line 1216
    :cond_0
    return-void
.end method

.method public b(JI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 969
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 970
    if-eqz v3, :cond_0

    .line 971
    invoke-virtual {v3, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setTwitterStatus(I)V

    .line 972
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 973
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 975
    :cond_0
    return-void
.end method

.method public b(JJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 953
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/controller/c/as;->a(JJJ)I

    move-result v0

    if-lez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 955
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/messages/controller/c/e;->a(JZ)V

    .line 957
    :cond_0
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->c(JLjava/lang/String;)I

    .line 1151
    return-void
.end method

.method public b(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1115
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->a(JZ)I

    .line 1116
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->d:Lcom/viber/voip/messages/controller/c/a;

    const-string/jumbo v1, "key_not_sync_smart_notification"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/viber/voip/messages/controller/c/a;->a(JLjava/lang/String;Z)J

    .line 1117
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p1, p2, v2}, Lcom/viber/voip/messages/controller/c/e;->d(JZ)V

    .line 1118
    return-void
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 6
    .parameter

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 1091
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 1092
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/messages/controller/c/as;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1254
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    goto :goto_0

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->g:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/a/a;->b()V

    .line 1258
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    if-nez p1, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->j(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1238
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public c(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1219
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 1222
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1224
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 1225
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 1226
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 1227
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 1229
    :cond_0
    return-void
.end method

.method public c(JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 1187
    if-eqz v3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isHasAnyStatus([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/a/a;->a(Ljava/lang/Long;)V

    .line 1189
    if-nez p3, :cond_1

    .line 1190
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 1191
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 1192
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaFlag()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1197
    :cond_2
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1187
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public c(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->c(JZ)I

    .line 1146
    return-void
.end method

.method public c(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1243
    if-nez p1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cr;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/as;->k(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1248
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cr;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/util/Set;)V

    goto :goto_0
.end method
