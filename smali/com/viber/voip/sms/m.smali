.class Lcom/viber/voip/sms/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/sms/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/l;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/viber/voip/sms/m;->b:Lcom/viber/voip/sms/l;

    iput-object p2, p0, Lcom/viber/voip/sms/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/viber/voip/sms/m;->b:Lcom/viber/voip/sms/l;

    iget-object v0, v0, Lcom/viber/voip/sms/l;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->b(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/sms/m;->b:Lcom/viber/voip/sms/l;

    iget-object v0, v0, Lcom/viber/voip/sms/l;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->d(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sms/m;->b:Lcom/viber/voip/sms/l;

    iget-object v1, v1, Lcom/viber/voip/sms/l;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v1}, Lcom/viber/voip/sms/SmsReplyActivity;->c(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/sms/m;->b:Lcom/viber/voip/sms/l;

    iget-object v0, v0, Lcom/viber/voip/sms/l;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->e(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sms/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method
