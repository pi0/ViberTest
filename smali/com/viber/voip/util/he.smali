.class final Lcom/viber/voip/util/he;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/util/hj;

.field final synthetic c:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/viber/voip/util/hj;Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/viber/voip/util/he;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/viber/voip/util/he;->b:Lcom/viber/voip/util/hj;

    iput-object p3, p0, Lcom/viber/voip/util/he;->c:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsRegisteredNumber(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIsRegisteredNumber toNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", checkedNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/he;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hd;->b(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/util/he;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    packed-switch p2, :pswitch_data_0

    .line 114
    iget-object v0, p0, Lcom/viber/voip/util/he;->b:Lcom/viber/voip/util/hj;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/util/he;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/util/he;->c:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 120
    :cond_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/util/he;->b:Lcom/viber/voip/util/hj;

    iget-object v1, p0, Lcom/viber/voip/util/he;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v3, v1}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/he;->b:Lcom/viber/voip/util/hj;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/util/he;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
