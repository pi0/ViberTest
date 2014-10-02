.class public Lcom/viber/logger/QaLogger$QaScreenChangeEvent;
.super Lcom/viber/logger/QaLogger$QaEventWithStringParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/viber/logger/QaLogger$QaEventWithStringParam;-><init>(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "[Update screen] "

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaScreenChangeEvent;->b:Ljava/lang/String;

    .line 81
    return-void
.end method
