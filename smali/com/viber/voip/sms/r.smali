.class Lcom/viber/voip/sms/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    const-string/jumbo v1, "SmsReplyActivity Handler Activity finish"

    invoke-static {v0, v1}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Lcom/viber/voip/sms/SmsReplyActivity;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->i(Lcom/viber/voip/sms/SmsReplyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/h/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v1}, Lcom/viber/voip/sms/SmsReplyActivity;->c(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v2}, Lcom/viber/voip/sms/SmsReplyActivity;->j(Lcom/viber/voip/sms/SmsReplyActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/sms/s;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/viber/voip/messages/controller/ab;)V

    .line 296
    iget-object v0, p0, Lcom/viber/voip/sms/r;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-virtual {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->finish()V

    .line 298
    :cond_0
    return-void
.end method
