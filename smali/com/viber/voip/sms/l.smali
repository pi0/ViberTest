.class Lcom/viber/voip/sms/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ag;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/viber/voip/sms/l;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/sms/l;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    new-instance v1, Lcom/viber/voip/sms/m;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/sms/m;-><init>(Lcom/viber/voip/sms/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/sms/SmsReplyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
