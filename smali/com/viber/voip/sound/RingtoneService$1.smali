.class Lcom/viber/voip/sound/RingtoneService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/RingtoneService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/RingtoneService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/voip/sound/RingtoneService$1;->this$0:Lcom/viber/voip/sound/RingtoneService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$1;->this$0:Lcom/viber/voip/sound/RingtoneService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/RingtoneService;->stopRingtone()Z

    goto :goto_0
.end method
