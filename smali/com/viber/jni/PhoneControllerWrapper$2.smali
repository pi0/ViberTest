.class Lcom/viber/jni/PhoneControllerWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/phone/call/i;


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$2;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/jni/PhoneControllerWrapper$2$1;

    invoke-direct {v1, p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$2$1;-><init>(Lcom/viber/jni/PhoneControllerWrapper$2;Lcom/viber/voip/phone/call/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method
