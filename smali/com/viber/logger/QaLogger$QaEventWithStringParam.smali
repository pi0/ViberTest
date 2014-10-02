.class public Lcom/viber/logger/QaLogger$QaEventWithStringParam;
.super Lcom/viber/logger/QaLogger$QaEvent;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/logger/QaLogger$QaEvent;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/viber/logger/QaLogger$QaEventWithStringParam;->a:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "[Event] "

    iput-object v0, p0, Lcom/viber/logger/QaLogger$QaEventWithStringParam;->b:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/logger/QaLogger$QaEventWithStringParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/logger/QaLogger$QaEventWithStringParam;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
