.class Lcom/viber/voip/messages/ui/ea;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/PttViewController;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ea;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/voip/messages/ui/dw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/ea;-><init>(Lcom/viber/voip/messages/ui/PttViewController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ea;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->a(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ea;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->b(Lcom/viber/voip/messages/ui/PttViewController;)Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ea;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->b(Lcom/viber/voip/messages/ui/PttViewController;)Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ea;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/PttViewController;->a(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleStopRecordPtt(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method
