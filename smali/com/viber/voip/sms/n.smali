.class Lcom/viber/voip/sms/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/popup/view/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viber/voip/sms/n;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 262
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/viber/voip/sms/n;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v3}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    const-string/jumbo v1, "sticker"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 266
    iget-object v0, p0, Lcom/viber/voip/sms/n;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-virtual {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->finish()V

    .line 267
    return-void
.end method
