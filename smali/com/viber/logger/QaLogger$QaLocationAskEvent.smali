.class public Lcom/viber/logger/QaLogger$QaLocationAskEvent;
.super Lcom/viber/logger/QaLogger$QaEventWithStringParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Event] Location request for msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/logger/QaLogger$QaEventWithStringParam;-><init>(Ljava/lang/String;)V

    .line 224
    return-void
.end method
