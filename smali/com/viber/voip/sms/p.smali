.class Lcom/viber/voip/sms/p;
.super Lcom/viber/voip/messages/ui/dz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viber/voip/sms/p;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/dz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/viber/voip/sms/p;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-virtual {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->finish()V

    .line 279
    return-void
.end method
