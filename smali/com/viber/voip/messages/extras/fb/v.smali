.class Lcom/viber/voip/messages/extras/fb/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/fb/v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string/jumbo v0, "reportFacebookStatistics: already reported"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->c(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFacebookStatistics: isInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " isOnline="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->c(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleReportFacebookStatistics(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Facebook statistics: accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/v;->c:Lcom/viber/voip/messages/extras/fb/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Z)V

    goto/16 :goto_0

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to report Facebook statistics: accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " handleReportFacebookStatistics returned false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to report Facebook statistics: accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
