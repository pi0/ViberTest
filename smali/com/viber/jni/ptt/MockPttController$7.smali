.class Lcom/viber/jni/ptt/MockPttController$7;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$7;->this$0:Lcom/viber/jni/ptt/MockPttController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$7;->this$0:Lcom/viber/jni/ptt/MockPttController;

    sget v1, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_TRACK_ENDED:I

    #calls: Lcom/viber/jni/ptt/MockPttController;->stopPlayer(I)V
    invoke-static {v0, v1}, Lcom/viber/jni/ptt/MockPttController;->access$500(Lcom/viber/jni/ptt/MockPttController;I)V

    .line 166
    return-void
.end method
