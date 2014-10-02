.class Lcom/viber/jni/ptt/MockPttController$8;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$pttPlaing:Ljava/lang/String;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$8;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput-object p2, p0, Lcom/viber/jni/ptt/MockPttController$8;->val$pttPlaing:Ljava/lang/String;

    iput p3, p0, Lcom/viber/jni/ptt/MockPttController$8;->val$reason:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$8;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController$8;->val$pttPlaing:Ljava/lang/String;

    sget v2, Lcom/viber/jni/ptt/PttController$EPttStopStatus;->STOP_OK:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerListener;->onStopPlayPttReply(Ljava/lang/String;I)V

    .line 186
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$8;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController$8;->val$pttPlaing:Ljava/lang/String;

    iget v2, p0, Lcom/viber/jni/ptt/MockPttController$8;->val$reason:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerListener;->onPttPlayStopped(Ljava/lang/String;I)V

    .line 187
    return-void
.end method
