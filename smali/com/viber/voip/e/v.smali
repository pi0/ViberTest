.class Lcom/viber/voip/e/v;
.super Lcom/viber/voip/e/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/e/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/u;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    invoke-direct {p0}, Lcom/viber/voip/e/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;JZ)V

    .line 324
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationManager.mCallNotifierListener: onIncomingCall name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    invoke-static {v0, p1}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 317
    const-string/jumbo v0, "NotificationManager.mCallNotifierListener: onIdleCall"

    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;)V

    .line 319
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationManager.mCallNotifierListener: onOutgoingCall name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    invoke-static {v0, p1}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/e/u;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;JZ)V

    .line 329
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/viber/voip/e/v;->a:Lcom/viber/voip/e/u;

    invoke-static {v0, p1}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;Ljava/lang/String;)V

    .line 313
    return-void
.end method
