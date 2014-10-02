.class Lcom/viber/voip/billing/ct;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/cs;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/billing/ct;->a:Lcom/viber/voip/billing/cs;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->values()[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    aget-object v0, v0, p1

    .line 144
    iget-object v1, p0, Lcom/viber/voip/billing/ct;->a:Lcom/viber/voip/billing/cs;

    invoke-static {v1}, Lcom/viber/voip/billing/cs;->a(Lcom/viber/voip/billing/cs;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/billing/ct;->a:Lcom/viber/voip/billing/cs;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/billing/cs;->a(Lcom/viber/voip/billing/cs;J)J

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/cs;->a(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/viber/voip/billing/cv;->a:[I

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 152
    iget-object v1, p0, Lcom/viber/voip/billing/ct;->a:Lcom/viber/voip/billing/cs;

    invoke-static {v1}, Lcom/viber/voip/billing/cs;->c(Lcom/viber/voip/billing/cs;)V

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/billing/ct;->a:Lcom/viber/voip/billing/cs;

    invoke-static {v1, v0}, Lcom/viber/voip/billing/cs;->a(Lcom/viber/voip/billing/cs;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/billing/ct;->a:Lcom/viber/voip/billing/cs;

    invoke-static {v1}, Lcom/viber/voip/billing/cs;->b(Lcom/viber/voip/billing/cs;)V

    goto :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
