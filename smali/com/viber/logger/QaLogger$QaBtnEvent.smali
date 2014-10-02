.class public Lcom/viber/logger/QaLogger$QaBtnEvent;
.super Lcom/viber/logger/QaLogger$QaEventWithStringParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/viber/logger/QaLogger$QaEventWithStringParam;-><init>(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "[Button] "

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaBtnEvent;->b:Ljava/lang/String;

    .line 99
    return-void
.end method
