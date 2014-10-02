.class Lcom/viber/voip/sms/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/viber/voip/sms/q;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/viber/voip/sms/q;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    const-string/jumbo v1, "SmsReplyActivity onTouch, timeout disable"

    invoke-static {v0, v1}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Lcom/viber/voip/sms/SmsReplyActivity;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/viber/voip/sms/q;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->h(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sms/q;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v1}, Lcom/viber/voip/sms/SmsReplyActivity;->g(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    const/4 v0, 0x0

    return v0
.end method
