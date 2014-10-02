.class Lcom/viber/voip/market/a/e;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/process/b;

.field final synthetic b:Lcom/viber/voip/market/MarketPublicGroupInfo;

.field final synthetic c:Lcom/viber/voip/market/a/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/a/d;Lcom/viber/voip/process/b;Lcom/viber/voip/market/MarketPublicGroupInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/market/a/e;->c:Lcom/viber/voip/market/a/d;

    iput-object p2, p0, Lcom/viber/voip/market/a/e;->a:Lcom/viber/voip/process/b;

    iput-object p3, p0, Lcom/viber/voip/market/a/e;->b:Lcom/viber/voip/market/MarketPublicGroupInfo;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoinPublicGroup(JII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p4}, Lcom/viber/voip/market/MarketReceiver;->a(I)I

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onJoinPublicGroup, groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", web status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/market/a/d;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 65
    iget-object v1, p0, Lcom/viber/voip/market/a/e;->a:Lcom/viber/voip/process/b;

    iget-object v2, p0, Lcom/viber/voip/market/a/e;->c:Lcom/viber/voip/market/a/d;

    iget-object v3, p0, Lcom/viber/voip/market/a/e;->b:Lcom/viber/voip/market/MarketPublicGroupInfo;

    iget-wide v3, v3, Lcom/viber/voip/market/MarketPublicGroupInfo;->a:J

    invoke-static {v2, v3, v4, v0}, Lcom/viber/voip/market/a/d;->a(Lcom/viber/voip/market/a/d;JI)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
