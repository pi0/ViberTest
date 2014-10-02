.class Lcom/viber/voip/viberout/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/e;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/viber/voip/viberout/h;->a:Lcom/viber/voip/viberout/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/viber/voip/viberout/h;->a:Lcom/viber/voip/viberout/e;

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->b(Lcom/viber/voip/viberout/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallEnded, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", call UI not visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/viber/voip/viberout/h;->a:Lcom/viber/voip/viberout/e;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/viber/voip/viberout/e;->b(Landroid/content/Context;I)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallEnded, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", call UI visible, ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallStarted(Z)V
    .locals 1
    .parameter

    .prologue
    .line 464
    const-string/jumbo v0, "onCallStarted"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public onHangup()V
    .locals 1

    .prologue
    .line 459
    const-string/jumbo v0, "onHangup"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    .line 460
    return-void
.end method
