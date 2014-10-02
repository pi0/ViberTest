.class public Lcom/viber/voip/messages/controller/a/m;
.super Lcom/viber/voip/messages/controller/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/viber/voip/messages/controller/cq;

.field private f:Lcom/viber/voip/messages/controller/cr;

.field private final g:Lcom/viber/voip/messages/controller/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/viber/voip/messages/controller/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/a/m;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/a/a;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/m;->d:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->e:Lcom/viber/voip/messages/controller/cq;

    .line 68
    new-instance v0, Lcom/viber/voip/messages/controller/cr;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/controller/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->f:Lcom/viber/voip/messages/controller/cr;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/controller/ce;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/controller/ce;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->g:Lcom/viber/voip/messages/controller/ce;

    .line 70
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 420
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/m;->f:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSyncedMessage()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v5

    :goto_0
    invoke-virtual {v2, p1, p2, v0}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Z)Lcom/viber/voip/messages/controller/cv;

    move-result-object v6

    .line 424
    iget-boolean v0, v6, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->f:Lcom/viber/voip/messages/controller/cr;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v7

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/viber/voip/messages/controller/cr;->a(JJ)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    .line 428
    :cond_1
    iget-boolean v0, v6, Lcom/viber/voip/messages/controller/cv;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, v6, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSyncedMessage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 429
    iget-object v0, v6, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-gtz v0, :cond_4

    :cond_3
    move v1, v5

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMessageReceivedAck(JZ)V

    .line 433
    :cond_5
    iget-boolean v0, v6, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isRead()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicWatcher()Z

    move-result v0

    if-nez v0, :cond_6

    .line 434
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->e:Lcom/viber/voip/messages/controller/cq;

    iget-object v1, v6, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    iget-object v2, v6, Lcom/viber/voip/messages/controller/cv;->e:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    iget-object v3, v6, Lcom/viber/voip/messages/controller/cv;->f:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    iget-boolean v4, v6, Lcom/viber/voip/messages/controller/cv;->c:Z

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZZ)V

    .line 437
    :cond_6
    iget-boolean v0, v6, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v0, :cond_8

    .line 438
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->g:Lcom/viber/voip/messages/controller/ce;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/ce;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "image"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "video"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "animated_message"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "animated_message_cache"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 441
    :cond_7
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(J)V

    .line 447
    :cond_8
    :goto_1
    return-object v6

    :cond_9
    move v0, v1

    .line 422
    goto/16 :goto_0

    .line 442
    :cond_a
    const-string/jumbo v0, "sound"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/m;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleDownloadPtt(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(ILcom/viber/voip/a/m;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    sget-object v2, Lcom/viber/voip/a/aj;->a:Lcom/viber/voip/a/aj;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ai;->a(Lcom/viber/voip/a/aj;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    sget-object v2, Lcom/viber/voip/a/aj;->e:Lcom/viber/voip/a/aj;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ai;->a(Lcom/viber/voip/a/aj;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    sget-object v2, Lcom/viber/voip/a/aj;->d:Lcom/viber/voip/a/aj;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ai;->a(Lcom/viber/voip/a/aj;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 185
    :pswitch_4
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    sget-object v2, Lcom/viber/voip/a/aj;->b:Lcom/viber/voip/a/aj;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ai;->a(Lcom/viber/voip/a/aj;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p2, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    sget-object v2, Lcom/viber/voip/a/aj;->c:Lcom/viber/voip/a/aj;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ai;->a(Lcom/viber/voip/a/aj;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;[Lcom/viber/jni/PublicGroupChangeEvent;JI)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    new-instance v1, Lcom/viber/voip/messages/controller/b/c;

    invoke-direct {v1}, Lcom/viber/voip/messages/controller/b/c;-><init>()V

    .line 321
    move-object/from16 v0, p2

    array-length v15, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    if-ge v14, v15, :cond_6

    aget-object v13, p2, v14

    .line 322
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMsgType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 321
    :cond_0
    :goto_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 325
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/m;->d:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getAttributes()Lcom/viber/jni/CGroupAttributesChanged;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/jni/CGroupAttributesChanged;->getFlags()I

    move-result v3

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getActorPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getTimeSent()J

    move-result-wide v7

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventToken()J

    move-result-wide v9

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getAttributes()Lcom/viber/jni/CGroupAttributesChanged;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/jni/CGroupAttributesChanged;->getGroupName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventId()I

    move-result v13

    move-object/from16 v4, p1

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v13}, Lcom/viber/voip/messages/controller/b/c;->a(Landroid/content/Context;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 328
    if-eqz v2, :cond_0

    .line 329
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    goto :goto_1

    .line 336
    :pswitch_1
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v2

    array-length v2, v2

    new-array v4, v2, [Ljava/lang/String;

    .line 342
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 343
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v3

    aget-object v3, v3, v2

    .line 352
    iget-object v5, v3, Lcom/viber/jni/PublicGroupUserInfo;->clientName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    .line 354
    :goto_3
    if-nez v3, :cond_1

    const-string/jumbo v3, "Unknown"

    :cond_1
    aput-object v3, v4, v2

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 352
    :cond_2
    iget-object v3, v3, Lcom/viber/jni/PublicGroupUserInfo;->clientName:Ljava/lang/String;

    goto :goto_3

    .line 357
    :cond_3
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v7, v2, Lcom/viber/jni/PublicGroupUserInfo;->phoneNumber:Ljava/lang/String;

    .line 358
    :goto_4
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getMembers()[Lcom/viber/jni/PublicGroupUserInfo;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/viber/jni/PublicGroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 360
    :goto_5
    const/4 v4, 0x2

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getTimeSent()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventToken()J

    move-result-wide v9

    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventId()I

    move-result v12

    move-wide/from16 v2, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v12}, Lcom/viber/voip/messages/controller/b/c;->a(JIJLjava/lang/String;IJLjava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_0

    .line 364
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    goto/16 :goto_1

    .line 357
    :cond_4
    invoke-virtual {v13}, Lcom/viber/jni/PublicGroupChangeEvent;->getActorPhoneNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 358
    :cond_5
    invoke-static {v4}, Lcom/viber/voip/messages/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 371
    :cond_6
    return-void

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    return-void
.end method

.method private a(ZZJLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V
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
    .parameter
    .parameter

    .prologue
    .line 210
    move/from16 v0, p16

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/controller/a/m;->a(ZI)I

    move-result v13

    .line 211
    if-eqz p1, :cond_1

    new-instance v1, Lcom/viber/voip/messages/controller/b/a;

    move-wide/from16 v2, p3

    move-object/from16 v4, p15

    move-object/from16 v5, p8

    move-wide/from16 v6, p6

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v1 .. v13}, Lcom/viber/voip/messages/controller/b/a;-><init>(JLjava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    .line 213
    :goto_0
    const-string/jumbo v2, "sound"

    const/4 v3, 0x0

    move/from16 v0, p16

    invoke-virtual {v1, v2, v3, v0}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 214
    move-object/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDownloadId(Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 216
    if-eqz p2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 217
    :cond_0
    move-object/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 218
    return-void

    .line 211
    :cond_1
    new-instance v1, Lcom/viber/voip/messages/controller/b/a;

    move-object/from16 v2, p8

    move-object/from16 v3, p15

    move-wide/from16 v4, p6

    move-wide/from16 v6, p9

    move/from16 v8, p11

    move/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    goto :goto_0
.end method

.method private a(JI)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-boolean v1, p0, Lcom/viber/voip/messages/controller/a/m;->a:Z

    if-nez v1, :cond_0

    if-lez p3, :cond_0

    .line 74
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/m;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1, p1, p2, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendMessageReceivedAck(JZ)V

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 455
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 457
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/e;

    .line 458
    invoke-virtual {v0}, Lcom/viber/voip/messages/e;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 459
    invoke-virtual {v0}, Lcom/viber/voip/messages/e;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/e;->a()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 459
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 462
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    return-void
.end method

.method public a(ZZJJLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15
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
    .parameter
    .parameter

    .prologue
    .line 394
    move/from16 v0, p1

    move/from16 v1, p16

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/a/m;->a(ZI)I

    move-result v14

    .line 395
    if-eqz p1, :cond_1

    new-instance v2, Lcom/viber/voip/messages/controller/b/a;

    move-wide/from16 v3, p3

    move-object/from16 v5, p15

    move-object/from16 v6, p7

    move-wide/from16 v7, p5

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v2 .. v14}, Lcom/viber/voip/messages/controller/b/a;-><init>(JLjava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;I)V

    .line 397
    :goto_0
    const-string/jumbo v3, "text"

    move-object/from16 v0, p8

    move/from16 v1, p16

    invoke-virtual {v2, v3, v0, v1}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 398
    if-eqz p2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 399
    :cond_0
    move-object/from16 v0, p15

    invoke-direct {p0, v2, v0}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 400
    const/4 v2, 0x0

    return v2

    .line 395
    :cond_1
    new-instance v2, Lcom/viber/voip/messages/controller/b/a;

    move-object/from16 v3, p7

    move-object/from16 v4, p14

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    goto :goto_0
.end method

.method a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 23
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p21

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/a/m;->a(ZI)I

    move-result v22

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    .line 410
    invoke-static/range {v3 .. v22}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 414
    if-eqz p2, :cond_0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->addExtraFlag(I)V

    .line 415
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p18

    invoke-direct {v0, v3, v1}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    .line 416
    const/4 v3, 0x0

    return v3
.end method

.method public onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
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
    .line 376
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v14, 0x6

    invoke-static/range {p10 .. p10}, Lcom/viber/voip/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v18, ""

    const-string/jumbo v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v15, p10

    move-object/from16 v17, p11

    invoke-virtual/range {v0 .. v21}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 26
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
    .parameter

    .prologue
    .line 383
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p15

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v18, 0x6

    invoke-static/range {p13 .. p13}, Lcom/viber/voip/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v19, p13

    move-object/from16 v21, p14

    move-object/from16 v22, p3

    move/from16 v25, p15

    invoke-virtual/range {v4 .. v25}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 387
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 31
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    if-eqz p6, :cond_0

    .line 317
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    .line 236
    const/4 v7, 0x1

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(IJIZ)V

    .line 237
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 239
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v27

    .line 240
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v5

    .line 242
    if-nez v27, :cond_1

    .line 243
    const-string/jumbo v3, "onGetPublicGroupMessages CONVERSATION EMPTY. ignore sync!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/viber/voip/messages/controller/a/m;->a(Ljava/lang/String;)V

    .line 244
    const/4 v7, 0x0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(IJIZ)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual/range {v27 .. v27}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v28

    .line 249
    const/16 v14, 0x8

    .line 254
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 255
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 257
    new-instance v4, Lcom/viber/voip/messages/controller/a/n;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/viber/voip/messages/controller/a/n;-><init>(Lcom/viber/voip/messages/controller/a/m;)V

    invoke-static {v6, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    new-instance v4, Lcom/viber/voip/messages/controller/a/o;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/viber/voip/messages/controller/a/o;-><init>(Lcom/viber/voip/messages/controller/a/m;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/viber/jni/PublicGroupMessage;

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageID()I

    move-result v3

    move v4, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/viber/jni/PublicGroupChangeEvent;

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventId()I

    move-result v3

    :goto_2
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 277
    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v4

    if-gt v4, v3, :cond_2

    invoke-virtual {v5}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getLastLocalMessageId()I

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    const/4 v3, 0x1

    .line 278
    :goto_3
    if-eqz v3, :cond_3

    .line 279
    const/16 v14, 0x48

    .line 284
    :cond_3
    :try_start_0
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v30, v0

    const/4 v3, 0x0

    move/from16 v25, v3

    :goto_4
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    aget-object v3, p4, v25

    .line 285
    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMediaType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 295
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageToken()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getTimeSent()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageSeq()I

    move-result v15

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v16

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMediaType()I

    move-result v17

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getBucketName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getDownloadId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getSenderName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getDuration()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v23, v0

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageID()I

    move-result v24

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v3 .. v24}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 284
    :goto_5
    add-int/lit8 v3, v25, 0x1

    move/from16 v25, v3

    goto :goto_4

    .line 271
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 277
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 287
    :pswitch_1
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageToken()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getTimeSent()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageSeq()I

    move-result v15

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v16

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getDownloadId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getSenderName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageID()I

    move-result v19

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v19}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 311
    :catchall_0
    move-exception v3

    move-object v10, v3

    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 312
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-wide/from16 v3, v28

    invoke-virtual/range {v2 .. v9}, Lcom/viber/voip/messages/controller/c/e;->a(JJJZ)V

    .line 313
    const/4 v7, 0x0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(IJIZ)V

    throw v10

    .line 291
    :pswitch_2
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageToken()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getTimeSent()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageSeq()I

    move-result v15

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getLocation()Lcom/viber/jni/LocationInfo;

    move-result-object v16

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getSenderName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v3}, Lcom/viber/jni/PublicGroupMessage;->getMessageID()I

    move-result v19

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v3 .. v19}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_7
    move-object/from16 v9, p0

    move-object/from16 v10, v27

    move-object/from16 v11, p5

    move-wide/from16 v12, p2

    .line 303
    invoke-direct/range {v9 .. v14}, Lcom/viber/voip/messages/controller/a/m;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;[Lcom/viber/jni/PublicGroupChangeEvent;JI)V

    .line 306
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->e(JJ)V

    .line 307
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v4

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1, v4}, Lcom/viber/voip/messages/controller/c/as;->a(JI)V

    .line 308
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->v(J)V

    .line 309
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 312
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-wide/from16 v3, v28

    invoke-virtual/range {v2 .. v9}, Lcom/viber/voip/messages/controller/c/e;->a(JJJZ)V

    .line 313
    const/4 v7, 0x0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/viber/voip/messages/controller/c/e;->a(IJIZ)V

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
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
    .parameter

    .prologue
    .line 115
    sget-object v2, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/a/m;->a(ILcom/viber/voip/a/m;)V

    .line 116
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v21, p14

    invoke-virtual/range {v2 .. v23}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 118
    const/4 v2, 0x0

    return v2
.end method

.method public onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 26
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    sget-object v4, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    move-object/from16 v0, p0

    move/from16 v1, p13

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/messages/controller/a/m;->a(ILcom/viber/voip/a/m;)V

    .line 147
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p18

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    move-object/from16 v22, p3

    move-object/from16 v23, p17

    move/from16 v25, p18

    invoke-virtual/range {v4 .. v25}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 151
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 17
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
    .line 196
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v0 .. v16}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 21
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
    .parameter

    .prologue
    .line 203
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p15

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p14

    move/from16 v20, p15

    invoke-direct/range {v4 .. v20}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public onSecondaryRegistered(JIII)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/m;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 488
    const-string/jumbo v3, "%04d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 489
    move/from16 v0, p4

    invoke-static {v0, v2}, Lcom/viber/jni/ClientMessages$DeviceTypes;->toString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v13

    .line 490
    const v3, 0x7f0c062a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 492
    const-string/jumbo v2, "viber"

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    new-instance v2, Lcom/viber/voip/messages/controller/b/a;

    const-string/jumbo v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v5, p1

    move/from16 v9, p5

    invoke-direct/range {v2 .. v11}, Lcom/viber/voip/messages/controller/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJIILcom/viber/jni/LocationInfo;)V

    .line 496
    const-string/jumbo v3, "text"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v14, v4}, Lcom/viber/voip/messages/controller/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v7

    .line 498
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/m;->f:Lcom/viber/voip/messages/controller/cr;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v7, v3}, Lcom/viber/voip/messages/controller/cr;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)Lcom/viber/voip/messages/controller/cv;

    move-result-object v3

    .line 499
    iget-boolean v2, v3, Lcom/viber/voip/messages/controller/cv;->a:Z

    if-nez v2, :cond_0

    iget-boolean v2, v3, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/m;->b:Lcom/viber/jni/PhoneControllerWrapper;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleSecondaryRegisteredAck(J)Z

    .line 503
    :cond_1
    iget-boolean v2, v3, Lcom/viber/voip/messages/controller/cv;->b:Z

    if-eqz v2, :cond_2

    .line 504
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/m;->d:Landroid/content/Context;

    const-class v5, Lcom/viber/voip/registration/ActivateSecondaryActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 506
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string/jumbo v4, "device_type"

    invoke-virtual {v2, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/m;->d:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/m;->f:Lcom/viber/voip/messages/controller/cr;

    iget-object v3, v3, Lcom/viber/voip/messages/controller/cv;->d:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v5

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/viber/voip/messages/controller/cr;->b(JJJ)V

    .line 512
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onServiceStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 471
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 473
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/controller/x;->a()V

    .line 475
    :cond_0
    return-void
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v1, 0x0

    sget-object v2, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/a/m;->a(ILcom/viber/voip/a/m;)V

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v1 .. v17}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method public onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 21
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
    .line 100
    const/4 v4, 0x0

    sget-object v5, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/viber/voip/messages/controller/a/m;->a(ILcom/viber/voip/a/m;)V

    .line 101
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p14

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p3

    move/from16 v20, p14

    invoke-virtual/range {v4 .. v20}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 104
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
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
    .parameter

    .prologue
    .line 131
    const/4 v1, 0x3

    sget-object v2, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/a/m;->a(ILcom/viber/voip/a/m;)V

    .line 132
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v15, 0x3

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p14

    move-object/from16 v20, p13

    move/from16 v21, p10

    invoke-virtual/range {v1 .. v22}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 134
    const/4 v1, 0x0

    return v1
.end method

.method public onVideoReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 26
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v4, 0x3

    sget-object v5, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/viber/voip/messages/controller/a/m;->a(ILcom/viber/voip/a/m;)V

    .line 166
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p18

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/a/m;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v18, 0x3

    move-object/from16 v4, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p17

    move-object/from16 v22, p3

    move-object/from16 v23, p16

    move/from16 v24, p13

    move/from16 v25, p18

    invoke-virtual/range {v4 .. v25}, Lcom/viber/voip/messages/controller/a/m;->a(ZZJJLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 170
    :cond_0
    const/4 v4, 0x0

    return v4
.end method
