.class Lcom/viber/voip/phone/call/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/phone/call/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/call/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/b;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/viber/voip/phone/call/c;->a:Lcom/viber/voip/phone/call/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/phone/call/c;->a:Lcom/viber/voip/phone/call/b;

    iget-boolean v0, v0, Lcom/viber/voip/phone/call/b;->b:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/viber/voip/phone/call/c;->a:Lcom/viber/voip/phone/call/b;

    iget-object v0, v0, Lcom/viber/voip/phone/call/b;->d:Lcom/viber/voip/phone/call/a;

    invoke-static {v0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/a;)Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/c;->a:Lcom/viber/voip/phone/call/b;

    iget-object v1, v1, Lcom/viber/voip/phone/call/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->handleDialViberOut(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/call/c;->a:Lcom/viber/voip/phone/call/b;

    iget-object v0, v0, Lcom/viber/voip/phone/call/b;->d:Lcom/viber/voip/phone/call/a;

    invoke-static {v0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/a;)Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/c;->a:Lcom/viber/voip/phone/call/b;

    iget-object v1, v1, Lcom/viber/voip/phone/call/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->handleDial(Ljava/lang/String;)V

    goto :goto_0
.end method
