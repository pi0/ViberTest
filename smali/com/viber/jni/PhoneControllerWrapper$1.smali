.class Lcom/viber/jni/PhoneControllerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$1;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$1;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isGSMCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$1;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->reschedulePhoneStateWatchdog(Ljava/lang/Runnable;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$1;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->dropPhoneStateWatchdog(Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method
