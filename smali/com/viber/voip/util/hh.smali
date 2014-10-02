.class Lcom/viber/voip/util/hh;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/hg;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/hg;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/viber/voip/util/hh;->a:Lcom/viber/voip/util/hg;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsOnlineReply(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/viber/voip/util/hh;->a:Lcom/viber/voip/util/hg;

    iget-object v0, v0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/viber/voip/util/hh;->a:Lcom/viber/voip/util/hg;

    iget-object v2, v0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/viber/voip/util/hh;->a:Lcom/viber/voip/util/hg;

    iget-object v3, v3, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/util/hh;->a:Lcom/viber/voip/util/hg;

    iget-object v0, v0, Lcom/viber/voip/util/hg;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 167
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
