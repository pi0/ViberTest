.class public Lcom/viber/voip/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/phone/call/i;


# static fields
.field private static a:Lcom/viber/voip/e/a;


# instance fields
.field private b:Lcom/viber/voip/e/g;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/e/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/e/a;->c:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->addCallInfoListener(Lcom/viber/voip/phone/call/i;)V

    .line 30
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;

    new-instance v2, Lcom/viber/voip/e/b;

    invoke-direct {v2, p0}, Lcom/viber/voip/e/b;-><init>(Lcom/viber/voip/e/a;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 55
    return-void
.end method

.method public static a()Lcom/viber/voip/e/a;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/viber/voip/e/a;->a:Lcom/viber/voip/e/a;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/viber/voip/e/a;

    invoke-direct {v0}, Lcom/viber/voip/e/a;-><init>()V

    sput-object v0, Lcom/viber/voip/e/a;->a:Lcom/viber/voip/e/a;

    .line 61
    :cond_0
    sget-object v0, Lcom/viber/voip/e/a;->a:Lcom/viber/voip/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/e/a;)Lcom/viber/voip/e/g;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/e/a;->b:Lcom/viber/voip/e/g;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/s;)V

    return-void
.end method

.method private a(Lcom/viber/voip/e/s;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/e/f;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/e/f;-><init>(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/viber/voip/e/a;->b(Lcom/viber/voip/e/s;)V

    return-void
.end method

.method private b(Lcom/viber/voip/e/s;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    iget-object v1, p0, Lcom/viber/voip/e/a;->c:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/viber/voip/e/a;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/e/r;

    .line 246
    invoke-interface {p1, v0}, Lcom/viber/voip/e/s;->a(Lcom/viber/voip/e/r;)V

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v1, p0, Lcom/viber/voip/e/a;->c:Ljava/util/List;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/e/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/viber/voip/e/d;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/e/d;-><init>(Lcom/viber/voip/e/a;Lcom/viber/jni/PhoneControllerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 222
    return-void

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/viber/voip/e/g;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/e/g;-><init>(Lcom/viber/voip/e/a;Lcom/viber/voip/phone/call/k;)V

    iput-object v0, p0, Lcom/viber/voip/e/a;->b:Lcom/viber/voip/e/g;

    .line 67
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/a;->b:Lcom/viber/voip/e/g;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 68
    return-void
.end method
