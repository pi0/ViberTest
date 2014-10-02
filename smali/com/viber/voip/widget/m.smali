.class Lcom/viber/voip/widget/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/PausableChronometer;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/PausableChronometer;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/viber/voip/widget/m;->a:Lcom/viber/voip/widget/PausableChronometer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/widget/m;->a:Lcom/viber/voip/widget/PausableChronometer;

    invoke-static {v0}, Lcom/viber/voip/widget/PausableChronometer;->a(Lcom/viber/voip/widget/PausableChronometer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/viber/voip/widget/m;->a:Lcom/viber/voip/widget/PausableChronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->a(Lcom/viber/voip/widget/PausableChronometer;J)V

    .line 201
    iget-object v0, p0, Lcom/viber/voip/widget/m;->a:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->d()V

    .line 202
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/widget/m;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    :cond_0
    return-void
.end method
