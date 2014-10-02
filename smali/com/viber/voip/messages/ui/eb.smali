.class Lcom/viber/voip/messages/ui/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/PttViewController;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/voip/messages/ui/dw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/eb;-><init>(Lcom/viber/voip/messages/ui/PttViewController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->b(Lcom/viber/voip/messages/ui/PttViewController;)Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/PttViewController;->b(Lcom/viber/voip/messages/ui/PttViewController;)Lcom/viber/jni/ptt/PttController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/jni/ptt/PttController;->handleStartRecordPtt(I)V

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    new-instance v1, Lcom/viber/voip/messages/ui/ea;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/ui/ea;-><init>(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/voip/messages/ui/dw;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->a(Lcom/viber/voip/messages/ui/PttViewController;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 288
    iget-object v0, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    new-instance v1, Ljava/util/Timer;

    const-string/jumbo v2, "PttTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->a(Lcom/viber/voip/messages/ui/PttViewController;Ljava/util/Timer;)Ljava/util/Timer;

    .line 289
    iget-object v0, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->e(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/eb;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/PttViewController;->d(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 291
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v1}, Lcom/viber/voip/a/ad;->f()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 293
    :cond_0
    return-void
.end method
