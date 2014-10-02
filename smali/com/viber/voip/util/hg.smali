.class final Lcom/viber/voip/util/hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/util/hj;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication;Ljava/lang/String;Lcom/viber/voip/util/hj;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/util/hg;->a:Lcom/viber/voip/ViberApplication;

    iput-object p2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/viber/voip/util/hg;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkIsOnline serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/hd;->b(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/util/fq;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/util/fq;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v0, v1, :cond_4

    .line 156
    iget-object v0, p0, Lcom/viber/voip/util/hg;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isFastNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/viber/voip/util/hg;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/hh;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/hh;-><init>(Lcom/viber/voip/util/hg;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 169
    const-string/jumbo v0, "checkIsOnline - handleIsOnline"

    invoke-static {v0}, Lcom/viber/voip/util/hd;->b(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/jni/controller/PhoneController;->handleIsOnline(Ljava/lang/String;)Z

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_4
    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v0, v1, :cond_5

    .line 176
    iget-object v0, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/util/hg;->c:Lcom/viber/voip/util/hj;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/viber/voip/util/hg;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0
.end method
