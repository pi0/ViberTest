.class public Lcom/viber/logger/QaLogger$QaSendBtnEvent;
.super Lcom/viber/logger/QaLogger$QaBtnEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "Send in Coversation"

    invoke-direct {p0, v0}, Lcom/viber/logger/QaLogger$QaBtnEvent;-><init>(Ljava/lang/String;)V

    .line 115
    return-void
.end method
