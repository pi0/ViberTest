.class public Lcom/viber/voip/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler;

.field private f:Lcom/viber/jni/controller/PhoneController;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/viber/voip/util/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/c;-><init>(Lcom/viber/voip/util/b;)V

    iput-object v0, p0, Lcom/viber/voip/util/b;->b:Ljava/util/HashSet;

    .line 35
    const-string/jumbo v0, "init"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/b;->a(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/viber/voip/util/b;->c:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b;->e:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/viber/voip/util/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/d;-><init>(Lcom/viber/voip/util/b;)V

    iput-object v0, p0, Lcom/viber/voip/util/b;->d:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/b;)Lcom/viber/jni/controller/PhoneController;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/viber/voip/util/b;->f:Lcom/viber/jni/controller/PhoneController;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/util/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/viber/voip/util/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/util/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/viber/voip/util/b;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v1, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.APP_ON_FOREGROUND"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void

    .line 85
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.APP_ON_BACKGROUND"

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 58
    iget-object v0, p0, Lcom/viber/voip/util/b;->f:Lcom/viber/jni/controller/PhoneController;

    if-nez v0, :cond_1

    .line 59
    iput-boolean p1, p0, Lcom/viber/voip/util/b;->g:Z

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyActivityForeground className:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isForeground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/b;->a(Ljava/lang/String;)V

    .line 63
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/viber/voip/util/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :cond_2
    if-eqz p1, :cond_3

    .line 67
    iget-object v0, p0, Lcom/viber/voip/util/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/util/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    const-string/jumbo v0, "isOnForeground checker. notify LIB BG_FOREGROUND"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/b;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/util/b;->f:Lcom/viber/jni/controller/PhoneController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/jni/controller/PhoneController;->handleAppModeChanged(I)V

    .line 71
    iget-boolean v0, p0, Lcom/viber/voip/util/b;->g:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/viber/voip/util/b;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/util/b;->a(Landroid/content/Context;Z)V

    .line 73
    iput-boolean v2, p0, Lcom/viber/voip/util/b;->g:Z

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/util/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/util/b;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const-string/jumbo v0, "initialized"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/b;->a(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/viber/voip/util/b;->f:Lcom/viber/jni/controller/PhoneController;

    .line 53
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/b;->g:Z

    .line 54
    iget-boolean v0, p0, Lcom/viber/voip/util/b;->g:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/util/b;->a(ZLjava/lang/String;)V

    .line 55
    return-void
.end method
