.class public Lcom/viber/logger/QaLogger$QaRegisteredNumbersEvent;
.super Lcom/viber/logger/QaLogger$QaEventWithStringParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZLjava/util/Map;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/viber/logger/QaLogger$QaEventWithStringParam;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaRegisteredNumbersEvent;->a:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "[Registered contacts] "

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaRegisteredNumbersEvent;->b:Ljava/lang/String;

    .line 73
    return-void
.end method
