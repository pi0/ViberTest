.class Lcom/viber/voip/sms/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/SmsReplyActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/SmsReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/viber/voip/sms/o;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/viber/voip/sms/o;->a:Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-static {v0}, Lcom/viber/voip/sms/SmsReplyActivity;->f(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    return-void
.end method
