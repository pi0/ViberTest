.class public abstract Lcom/viber/voip/contacts/c/f/b/r;
.super Lcom/viber/voip/contacts/c/f/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/p;


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field protected b:Z

.field protected c:Z

.field protected final d:Lcom/viber/voip/ViberApplication;

.field protected final e:Lcom/viber/voip/registration/HardwareParameters;

.field protected final f:Lcom/viber/voip/contacts/c/f/b/q;

.field protected final g:Lcom/viber/voip/contacts/c/f/b/u;

.field protected final h:Lcom/viber/voip/contacts/c/f/b/ah;

.field protected final i:Lcom/viber/voip/contacts/c/f/a;

.field protected final j:Lcom/viber/jni/controller/PhoneController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/viber/voip/contacts/c/f/b/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/r;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    .line 49
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    .line 50
    invoke-static {p1}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->g:Lcom/viber/voip/contacts/c/f/b/u;

    .line 52
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/ah;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->g:Lcom/viber/voip/contacts/c/f/b/u;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/c/f/b/ah;-><init>(Lcom/viber/voip/contacts/c/f/b/u;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->h:Lcom/viber/voip/contacts/c/f/b/ah;

    .line 53
    invoke-static {p1}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->i:Lcom/viber/voip/contacts/c/f/a;

    .line 54
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->j:Lcom/viber/jni/controller/PhoneController;

    .line 56
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->e:Lcom/viber/voip/registration/HardwareParameters;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->i:Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->b:Z

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Lcom/viber/jni/PhoneControllerDelegate;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/h;

    sget-object v1, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/PhoneControllerDelegateAdapter;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/b/h;-><init>(Landroid/os/Handler;[Lcom/viber/jni/PhoneControllerDelegateAdapter;)V

    return-object v0
.end method

.method public a(Lcom/viber/voip/contacts/c/f/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public final a(Lcom/viber/voip/contacts/c/f/b/f;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/viber/voip/contacts/c/f/b/f;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 107
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->h:Lcom/viber/voip/contacts/c/f/b/ah;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/b/ah;->a(Lcom/viber/voip/contacts/c/f/b/f;)Lcom/viber/voip/contacts/c/f/b/ak;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget-object v2, v0, Lcom/viber/voip/contacts/c/f/b/ak;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/viber/voip/contacts/c/f/b/ak;->d:Ljava/util/Set;

    iget-object v4, v0, Lcom/viber/voip/contacts/c/f/b/ak;->b:Ljava/util/Set;

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/contacts/c/f/b/q;->a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/ak;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget-object v2, v0, Lcom/viber/voip/contacts/c/f/b/ak;->c:Ljava/util/Set;

    iget-object v3, v0, Lcom/viber/voip/contacts/c/f/b/ak;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/ak;->b:Ljava/util/Set;

    invoke-interface {v1, v2, v3, v0}, Lcom/viber/voip/contacts/c/f/b/q;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 130
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->c()V

    .line 135
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->b:Z

    if-eqz v0, :cond_2

    .line 137
    iput-boolean v5, p0, Lcom/viber/voip/contacts/c/f/b/r;->b:Z

    .line 138
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->i:Lcom/viber/voip/contacts/c/f/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a;->a(I)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->j:Lcom/viber/jni/controller/PhoneController;

    if-eqz v0, :cond_6

    .line 143
    instance-of v0, p1, Lcom/viber/voip/contacts/c/f/b/e;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->e:Lcom/viber/voip/registration/HardwareParameters;

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/aj;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/viber/voip/contacts/c/f/b/f;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/b/g;

    .line 151
    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/r;->j:Lcom/viber/jni/controller/PhoneController;

    iget v4, v0, Lcom/viber/voip/contacts/c/f/b/g;->c:I

    iget v5, v0, Lcom/viber/voip/contacts/c/f/b/g;->b:I

    iget-boolean v0, v0, Lcom/viber/voip/contacts/c/f/b/g;->e:Z

    invoke-interface {v3, v1, v4, v5, v0}, Lcom/viber/jni/controller/PhoneController;->handleSendAddressBookForSecondaryAck([BIIZ)Z

    goto :goto_1

    .line 131
    :cond_3
    iget-boolean v0, v0, Lcom/viber/voip/contacts/c/f/b/ak;->a:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/q;->l()V

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p1}, Lcom/viber/voip/contacts/c/f/b/f;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/b/g;

    .line 158
    iget v2, v0, Lcom/viber/voip/contacts/c/f/b/g;->d:I

    if-eqz v2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/r;->j:Lcom/viber/jni/controller/PhoneController;

    iget v0, v0, Lcom/viber/voip/contacts/c/f/b/g;->d:I

    invoke-interface {v2, v0, v5}, Lcom/viber/jni/controller/PhoneController;->handleSendRegisteredNumbersAck(IZ)Z

    goto :goto_2

    .line 166
    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->h:Lcom/viber/voip/contacts/c/f/b/ah;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/viber/voip/contacts/c/f/b/ah;->a(Ljava/lang/String;J)Lcom/viber/voip/contacts/c/f/b/ak;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget-object v2, v0, Lcom/viber/voip/contacts/c/f/b/ak;->c:Ljava/util/Set;

    iget-object v3, v0, Lcom/viber/voip/contacts/c/f/b/ak;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Lcom/viber/voip/contacts/c/f/b/ak;->b:Ljava/util/Set;

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/contacts/c/f/b/q;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 80
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b;

    move-result-object v1

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/ak;->f:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/c/f/b;->a(Ljava/util/Set;)V

    .line 83
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/viber/voip/e/u;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method protected abstract d()V
.end method

.method public e()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public declared-synchronized onRecanonize(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/viber/voip/registration/cp;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/viber/voip/user/UserData;->notifyOwnerChange()V

    .line 179
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->g:Lcom/viber/voip/contacts/c/f/b/u;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/c/f/b/u;->b(Lcom/viber/voip/ViberApplication;)I

    .line 186
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/contacts/c/f/b/s;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/contacts/c/f/b/s;-><init>(Lcom/viber/voip/contacts/c/f/b/r;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;Lcom/viber/voip/messages/controller/ai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->c:Z

    .line 201
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/b/r;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShareAddressBook()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onShareAddressBookReply(ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public final onShouldRegister()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/q;->n()V

    .line 72
    :cond_0
    return-void
.end method

.method public onUnregisteredNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/r;->h:Lcom/viber/voip/contacts/c/f/b/ah;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/b/ah;->a(Ljava/lang/String;)Lcom/viber/voip/contacts/c/f/b/ak;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget-object v2, v0, Lcom/viber/voip/contacts/c/f/b/ak;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/viber/voip/contacts/c/f/b/ak;->d:Ljava/util/Set;

    iget-object v4, v0, Lcom/viber/voip/contacts/c/f/b/ak;->b:Ljava/util/Set;

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/contacts/c/f/b/q;->a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 93
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/r;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget-object v2, v0, Lcom/viber/voip/contacts/c/f/b/ak;->c:Ljava/util/Set;

    iget-object v3, v0, Lcom/viber/voip/contacts/c/f/b/ak;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v0, v0, Lcom/viber/voip/contacts/c/f/b/ak;->b:Ljava/util/Set;

    invoke-interface {v1, v2, v3, v0}, Lcom/viber/voip/contacts/c/f/b/q;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method
