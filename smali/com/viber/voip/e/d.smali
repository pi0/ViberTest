.class Lcom/viber/voip/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic b:Lcom/viber/voip/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/a;Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/viber/voip/e/d;->b:Lcom/viber/voip/e/a;

    iput-object p2, p0, Lcom/viber/voip/e/d;->a:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 4
    .parameter

    .prologue
    .line 205
    invoke-interface {p1}, Lcom/viber/jni/controller/PhoneController;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->getPhoneState()I

    move-result v0

    .line 206
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/d;->a:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v2, p0, Lcom/viber/voip/e/d;->b:Lcom/viber/voip/e/a;

    new-instance v3, Lcom/viber/voip/e/e;

    invoke-direct {v3, p0, v1, v0}, Lcom/viber/voip/e/e;-><init>(Lcom/viber/voip/e/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 219
    :cond_1
    return-void
.end method
