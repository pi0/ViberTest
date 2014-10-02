.class public Lcom/viber/voip/messages/controller/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static h:Lcom/viber/voip/messages/controller/cq;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/app/KeyguardManager;

.field private e:Lcom/viber/voip/messages/controller/dk;

.field private f:Landroid/os/PowerManager$WakeLock;

.field private g:Lcom/viber/voip/messages/controller/c/as;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-string/jumbo v0, "MessageControllerUtils"

    sput-object v0, Lcom/viber/voip/messages/controller/cq;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.android.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/controller/cq;->b:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/messages/controller/cq;->h:Lcom/viber/voip/messages/controller/cq;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cq;->d:Landroid/app/KeyguardManager;

    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cq;->c:Landroid/content/Context;

    .line 67
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cq;->d:Landroid/app/KeyguardManager;

    .line 68
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cq;->g:Lcom/viber/voip/messages/controller/c/as;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/controller/dk;

    sget-object v1, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/dk;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    .line 71
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    const v1, 0x3000001a

    const-class v2, Lcom/viber/voip/messages/controller/cq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/cq;->f:Landroid/os/PowerManager$WakeLock;

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->f:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 75
    return-void
.end method

.method public static declared-synchronized a()Lcom/viber/voip/messages/controller/cq;
    .locals 3

    .prologue
    .line 59
    const-class v1, Lcom/viber/voip/messages/controller/cq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/controller/cq;->h:Lcom/viber/voip/messages/controller/cq;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/viber/voip/messages/controller/cq;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/messages/controller/cq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/messages/controller/cq;->h:Lcom/viber/voip/messages/controller/cq;

    .line 62
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/controller/cq;->h:Lcom/viber/voip/messages/controller/cq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    return-void
.end method

.method private a(ZIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startReceiveSound viberOnForeground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/dk;->a(Z)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/viber/voip/messages/controller/dk;->a(IZ)V

    .line 275
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/controller/cq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/viber/voip/messages/controller/cq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/cq;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    if-nez p1, :cond_4

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->O()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->aw()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    if-nez v1, :cond_3

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/dk;->a(Landroid/net/Uri;)V

    .line 287
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Lcom/viber/voip/messages/controller/dk;->a(IZ)V

    goto :goto_0

    .line 284
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/viber/voip/messages/controller/dk;->a(IZ)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 318
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    return v0
.end method

.method private b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 93
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->d:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->c:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 223
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string/jumbo v4, ".messages.ui.ConversationActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 230
    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/cq;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/dk;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(J)V
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 305
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/cq;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZZ)V

    .line 99
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;ZZ)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isNotification()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move v11, v2

    .line 106
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v3

    .line 109
    const/4 v2, 0x2

    if-le v3, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getSmartEventDate()J

    move-result-wide v14

    .line 111
    :goto_1
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    const/4 v2, 0x1

    .line 113
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPostMessageReceived: currentThreadMessageCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " smartEventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " restartSmart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/e/u;->f(J)Z

    move-result v17

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPostMessageReceived: skipNotification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 120
    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isMuteNotifications()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v11, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-eqz v3, :cond_6

    const-wide/32 v3, 0x493e0

    add-long/2addr v3, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 123
    :cond_1
    const-string/jumbo v2, "onPostMessageReceived: Skip notification"

    invoke-static {v2}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 213
    :cond_2
    :goto_3
    return-void

    .line 104
    :cond_3
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_0

    .line 109
    :cond_4
    const-wide/16 v14, 0x0

    goto/16 :goto_1

    .line 111
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 125
    :cond_6
    if-nez v17, :cond_7

    if-eqz v11, :cond_7

    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-eqz v3, :cond_7

    const-wide/32 v3, 0x493e0

    add-long/2addr v3, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 126
    const-string/jumbo v2, "onPostMessageReceived: Restart smart notification"

    invoke-static {v2}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 127
    const-wide/16 v14, 0x0

    .line 128
    const/4 v2, 0x1

    .line 129
    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setSmartEventDate(J)V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/cq;->g:Lcom/viber/voip/messages/controller/c/as;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    :cond_7
    move/from16 v16, v2

    .line 133
    if-nez v17, :cond_8

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 138
    if-nez v11, :cond_d

    .line 139
    const-wide/16 v9, -0x1

    .line 146
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPostMessageReceived: lastMessageSmartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v2

    if-eqz v11, :cond_f

    if-nez v16, :cond_f

    const/4 v6, 0x1

    :goto_5
    const/4 v7, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    .line 151
    if-eqz v11, :cond_8

    if-nez v16, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_8

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->setSmartEventDate(J)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/cq;->g:Lcom/viber/voip/messages/controller/c/as;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 158
    :cond_8
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->r()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 162
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/v;->f()Lcom/viber/voip/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/g/a;->d()Z

    move-result v3

    .line 166
    if-nez v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSilentMessage()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/viber/voip/messages/controller/cq;->b()V

    .line 170
    :cond_9
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    .line 172
    :goto_6
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/h/b;->a()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSilentMessage()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSms()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v3

    if-nez v3, :cond_a

    if-nez v2, :cond_a

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/viber/voip/messages/controller/cq;->e()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v17, :cond_11

    const/4 v2, 0x1

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getFlag()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v2, v3, v1}, Lcom/viber/voip/messages/controller/cq;->a(ZIZ)V

    .line 177
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/cq;->c:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/cq;->d:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/viber/voip/messages/controller/cq;->f()Z

    move-result v6

    .line 181
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    .line 182
    :goto_8
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    .line 184
    :goto_9
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 185
    const/4 v4, 0x0

    .line 189
    :goto_a
    if-eqz v4, :cond_b

    .line 190
    const/4 v11, 0x0

    .line 192
    :cond_b
    if-nez v11, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isSilentMessage()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isCall()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isNotification()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v4

    invoke-static {}, Lcom/viber/voip/settings/j;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/viber/voip/settings/j;->j()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v6, :cond_c

    if-eqz v5, :cond_15

    :cond_c
    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    const/4 v2, 0x1

    .line 201
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPostMessageReceived:enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , viberOnForeground = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 203
    if-eqz v2, :cond_2

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.MESSAGE_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const/4 v3, 0x1

    sput-boolean v3, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a:Z

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/controller/cq;->c:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 140
    :cond_d
    if-eqz v11, :cond_e

    if-nez v16, :cond_e

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_e

    move-wide v9, v12

    .line 141
    goto/16 :goto_4

    :cond_e
    move-wide v9, v14

    .line 143
    goto/16 :goto_4

    .line 148
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 171
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 174
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 181
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 182
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 187
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 192
    :cond_15
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.NO_LONGER_IN_GROUP_DIALOG"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->g:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_1
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v0, "address"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string/jumbo v2, "disable_sms"

    const-string/jumbo v0, "text"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void

    .line 256
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.NO_LONGER_VIBER_PROBLEM"

    goto :goto_0

    .line 259
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/controller/cq;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 84
    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    goto :goto_0

    .line 85
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 86
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDate(J)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 235
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/cq;->a(J)V

    .line 236
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/cq;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->at()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->au()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 251
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/cq;->e:Lcom/viber/voip/messages/controller/dk;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/dk;->a(IZ)V

    .line 253
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    const-string/jumbo v0, "startSmsReceiveSound"

    invoke-static {v0}, Lcom/viber/voip/messages/controller/cq;->a(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/cq;->e()Z

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lcom/viber/voip/messages/controller/cq;->a(ZIZ)V

    .line 300
    return-void
.end method
