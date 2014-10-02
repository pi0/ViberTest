.class Lcom/viber/jni/ptt/MockPttController$6;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/MockPttController;

.field final synthetic val$pttID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController$6;->this$0:Lcom/viber/jni/ptt/MockPttController;

    iput-object p2, p0, Lcom/viber/jni/ptt/MockPttController$6;->val$pttID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController$6;->this$0:Lcom/viber/jni/ptt/MockPttController;

    #getter for: Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/ptt/MockPttController;->access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController$6;->val$pttID:Ljava/lang/String;

    sget v2, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_OK:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerListener;->onStartPlayPttReply(Ljava/lang/String;I)V

    .line 158
    return-void
.end method
