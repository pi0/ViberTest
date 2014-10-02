.class Lcom/viber/jni/ptt/MockPttController$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput p2, p0, Lcom/viber/jni/ptt/MockPttController$1;->val$seq:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/ptt/MockPttController$1;->val$seq:I

    iget v2, p0, Lcom/viber/jni/ptt/MockPttController$1;->val$seq:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_OK:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerListener;->onStartRecordPttReply(ILjava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->onStartPttIndicator()V

    .line 45
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$1;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$200(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/viber/jni/ptt/MockPttController$1$1;

    invoke-direct {v1, p0}, Lcom/viber/jni/ptt/MockPttController$1$1;-><init>(Lcom/viber/jni/ptt/MockPttController$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 54
    return-void
.end method
