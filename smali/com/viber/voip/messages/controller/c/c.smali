.class public Lcom/viber/voip/messages/controller/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/i;


# static fields
.field private static a:Lcom/viber/voip/messages/controller/c/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/viber/voip/messages/controller/x;

.field private final f:Lcom/viber/voip/messages/controller/GroupController;

.field private final g:Lcom/viber/voip/messages/controller/dn;

.field private final h:Lcom/viber/voip/messages/controller/a/a;

.field private final i:Lcom/viber/voip/messages/controller/a/c;

.field private final j:Lcom/viber/voip/messages/controller/a/m;

.field private final k:Lcom/viber/voip/messages/controller/a/br;

.field private final l:Lcom/viber/voip/messages/controller/a/p;

.field private final m:Lcom/viber/voip/messages/controller/a/aa;

.field private final n:Lcom/viber/voip/messages/controller/a/h;

.field private final o:Lcom/viber/voip/messages/controller/c/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    .line 79
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-virtual {v0}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    .line 80
    sget-object v0, Lcom/viber/voip/dk;->e:Lcom/viber/voip/dk;

    invoke-virtual {v0}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->d:Landroid/os/Handler;

    .line 81
    invoke-static {}, Lcom/viber/voip/messages/controller/c/b;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->o:Lcom/viber/voip/messages/controller/c/b;

    .line 83
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/a/a;->a()V

    .line 84
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/a/a;->c()V

    .line 85
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/a/a;->b()V

    .line 87
    new-instance v0, Lcom/viber/voip/messages/controller/ak;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->d:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/controller/by;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/viber/voip/messages/controller/by;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/ak;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/viber/voip/messages/controller/x;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->e:Lcom/viber/voip/messages/controller/x;

    .line 88
    new-instance v0, Lcom/viber/voip/messages/controller/a/c;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->i:Lcom/viber/voip/messages/controller/a/c;

    .line 89
    new-instance v0, Lcom/viber/voip/messages/controller/a/m;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/a/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->j:Lcom/viber/voip/messages/controller/a/m;

    .line 90
    new-instance v0, Lcom/viber/voip/messages/controller/a/p;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/a/p;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->l:Lcom/viber/voip/messages/controller/a/p;

    .line 91
    new-instance v0, Lcom/viber/voip/messages/controller/a/br;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/a/br;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->k:Lcom/viber/voip/messages/controller/a/br;

    .line 92
    new-instance v0, Lcom/viber/voip/messages/controller/a/h;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/a/h;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->n:Lcom/viber/voip/messages/controller/a/h;

    .line 94
    new-instance v0, Lcom/viber/voip/messages/controller/r;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/r;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v1, Lcom/viber/voip/messages/controller/c;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/viber/voip/messages/controller/c;-><init>(Landroid/os/Handler;Lcom/viber/voip/messages/controller/GroupController;)V

    iput-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->f:Lcom/viber/voip/messages/controller/GroupController;

    .line 96
    new-instance v1, Lcom/viber/voip/messages/controller/a/j;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/viber/voip/messages/controller/a/j;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/controller/r;)V

    iput-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->h:Lcom/viber/voip/messages/controller/a/a;

    .line 97
    new-instance v0, Lcom/viber/voip/messages/controller/dp;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->k:Lcom/viber/voip/messages/controller/a/br;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/controller/dp;-><init>(Landroid/os/Handler;Lcom/viber/voip/messages/controller/dn;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->g:Lcom/viber/voip/messages/controller/dn;

    .line 98
    new-instance v0, Lcom/viber/voip/messages/controller/a/aa;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->j:Lcom/viber/voip/messages/controller/a/m;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/viber/voip/messages/controller/a/a;

    iget-object v5, p0, Lcom/viber/voip/messages/controller/c/c;->h:Lcom/viber/voip/messages/controller/a/a;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/viber/voip/messages/controller/c/c;->i:Lcom/viber/voip/messages/controller/a/c;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/viber/voip/messages/controller/c/c;->j:Lcom/viber/voip/messages/controller/a/m;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/viber/voip/messages/controller/c/c;->l:Lcom/viber/voip/messages/controller/a/p;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/viber/voip/messages/controller/c/c;->k:Lcom/viber/voip/messages/controller/a/br;

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/a/aa;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/viber/jni/ptt/PttControllerDelegate$Receiver;[Lcom/viber/voip/messages/controller/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->m:Lcom/viber/voip/messages/controller/a/aa;

    .line 100
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPttRecorderListener()Lcom/viber/jni/ptt/PttRecorderListener;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->n:Lcom/viber/voip/messages/controller/a/h;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcom/viber/jni/ptt/PttRecorderListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 103
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPttUploaderListener()Lcom/viber/jni/ptt/PttUploaderListener;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->n:Lcom/viber/voip/messages/controller/a/h;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcom/viber/jni/ptt/PttUploaderListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 104
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPttDownloaderListener()Lcom/viber/jni/ptt/PttDownloaderListener;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->n:Lcom/viber/voip/messages/controller/a/h;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcom/viber/jni/ptt/PttDownloaderListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 105
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPttPlayerListener()Lcom/viber/jni/ptt/PttPlayerListener;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->n:Lcom/viber/voip/messages/controller/a/h;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcom/viber/jni/ptt/PttPlayerListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 107
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPublicGroupInviteReceiveListener()Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->h:Lcom/viber/voip/messages/controller/a/a;

    check-cast v0, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3}, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 108
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPublicGroupInfoReceiverListener()Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->h:Lcom/viber/voip/messages/controller/a/a;

    check-cast v0, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->m:Lcom/viber/voip/messages/controller/a/aa;

    invoke-virtual {v1, v0, v8}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 112
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getPttReceiverListener()Lcom/viber/jni/ptt/PttReceiverListener;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/controller/c/c;->m:Lcom/viber/voip/messages/controller/a/aa;

    invoke-virtual {v0, v2, v8}, Lcom/viber/jni/ptt/PttReceiverListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 113
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/c;->m:Lcom/viber/voip/messages/controller/a/aa;

    invoke-virtual {v0, v1, v8}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->m:Lcom/viber/voip/messages/controller/a/aa;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/a/aa;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/c/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/c/d;-><init>(Lcom/viber/voip/messages/controller/c/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/messages/i;
    .locals 2
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/viber/voip/messages/controller/c/c;->a:Lcom/viber/voip/messages/controller/c/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_1

    .line 68
    const-class v1, Lcom/viber/voip/messages/controller/c/c;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/controller/c/c;->a:Lcom/viber/voip/messages/controller/c/c;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/viber/voip/messages/controller/c/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/messages/controller/c/c;->a:Lcom/viber/voip/messages/controller/c/c;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/controller/c/c;->a:Lcom/viber/voip/messages/controller/c/c;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/c;->f()V

    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "PREF_SHOW_COMPOSE_GROUP_PROMO"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 134
    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/as;->x()Z

    move-result v1

    .line 137
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/controller/c/as;->d()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v2

    .line 139
    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getDate()J

    move-result-wide v1

    sub-long v1, v3, v1

    const-wide/32 v3, 0x48190800

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 142
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_SHOW_COMPOSE_GROUP_PROMO"

    invoke-interface {v1, v2, v5}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 146
    :cond_1
    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-lez v0, :cond_2

    .line 148
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->y()Z

    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    invoke-interface {v0, v1, v5}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 154
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/controller/c/b;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->o:Lcom/viber/voip/messages/controller/c/b;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->l:Lcom/viber/voip/messages/controller/a/p;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/a/p;->b(J)V

    .line 194
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->l:Lcom/viber/voip/messages/controller/a/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/a/p;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public b()Lcom/viber/voip/messages/controller/cx;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->h:Lcom/viber/voip/messages/controller/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/a/a;->a(J)V

    .line 201
    return-void
.end method

.method public c()Lcom/viber/voip/messages/controller/x;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->e:Lcom/viber/voip/messages/controller/x;

    return-object v0
.end method

.method public d()Lcom/viber/voip/messages/controller/GroupController;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->f:Lcom/viber/voip/messages/controller/GroupController;

    return-object v0
.end method

.method public e()Lcom/viber/voip/messages/controller/dn;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/c;->g:Lcom/viber/voip/messages/controller/dn;

    return-object v0
.end method
