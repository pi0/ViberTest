.class Lcom/viber/voip/messages/ui/ec;
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
    .line 296
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ec;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;Lcom/viber/voip/messages/ui/dw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/ec;-><init>(Lcom/viber/voip/messages/ui/PttViewController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ec;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->d(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ec;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/PttViewController;->d(Lcom/viber/voip/messages/ui/PttViewController;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 302
    :cond_0
    return-void
.end method
