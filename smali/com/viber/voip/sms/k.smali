.class Lcom/viber/voip/sms/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ab;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/viber/voip/sms/k;->b:Lcom/viber/voip/sms/SmsReplyActivity;

    iput-object p2, p0, Lcom/viber/voip/sms/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/viber/voip/sms/k;->b:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v3}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/viber/voip/sms/k;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 187
    return-void
.end method
