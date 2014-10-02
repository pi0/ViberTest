.class Lcom/viber/voip/phone/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/t;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/viber/voip/phone/u;->a:Lcom/viber/voip/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/viber/voip/phone/u;->a:Lcom/viber/voip/phone/t;

    iget-object v0, v0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->g(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 747
    iget-object v0, p0, Lcom/viber/voip/phone/u;->a:Lcom/viber/voip/phone/t;

    iget-object v0, v0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->h(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    .line 748
    iget-object v0, p0, Lcom/viber/voip/phone/u;->a:Lcom/viber/voip/phone/t;

    iget-object v0, v0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    .line 749
    return-void
.end method
