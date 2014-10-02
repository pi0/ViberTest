.class Lcom/viber/voip/phone/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/a/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/k;->a:Lcom/viber/voip/phone/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/k;->a:Lcom/viber/voip/phone/b/a/j;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/k;->a:Lcom/viber/voip/phone/b/a/j;

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/k;->a:Lcom/viber/voip/phone/b/a/j;

    invoke-static {v2}, Lcom/viber/voip/phone/b/a/j;->a(Lcom/viber/voip/phone/b/a/j;)Lcom/viber/jni/dialer/DialerController;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/jni/dialer/DialerController;->queryVoiceQuality()I

    move-result v2

    invoke-static {v1, v2}, Lcom/viber/voip/phone/b/a/j;->b(Lcom/viber/voip/phone/b/a/j;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/b/a/j;->a(Lcom/viber/voip/phone/b/a/j;I)I

    .line 28
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v0}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/k;->a:Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method
