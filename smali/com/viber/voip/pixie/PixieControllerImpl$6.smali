.class Lcom/viber/voip/pixie/PixieControllerImpl$6;
.super Lcom/viber/voip/process/a/d;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/pixie/PixieControllerImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$6;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-direct {p0}, Lcom/viber/voip/process/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(ZI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    invoke-static {p2}, Lcom/viber/voip/pixie/PixieControllerImpl;->setupClientToUseLocalProxy(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$6;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #calls: Lcom/viber/voip/pixie/PixieControllerImpl;->notifyItsOkayToUseNetwork()V
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$600(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    .line 285
    const/4 v0, 0x3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pixie: client-only setup done, useLocalProxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", localProxyPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method
