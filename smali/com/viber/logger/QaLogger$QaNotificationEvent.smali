.class public Lcom/viber/logger/QaLogger$QaNotificationEvent;
.super Lcom/viber/logger/QaLogger$QaEventWithStringParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/viber/logger/QaLogger$QaEventWithStringParam;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, text={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaNotificationEvent;->a:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "[Notification] "

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaNotificationEvent;->b:Ljava/lang/String;

    .line 108
    return-void
.end method
