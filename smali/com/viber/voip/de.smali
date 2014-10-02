.class final Lcom/viber/voip/de;
.super Lcom/viber/jni/ptt/PttRecorderListener;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/viber/jni/ptt/PttRecorderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPttRecordStopped(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    sget-object v0, Lcom/viber/voip/dh;->a:Lcom/viber/voip/dh;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dh;)V

    .line 167
    return-void
.end method

.method public onStartRecordPttReply(ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_OK:I

    if-ne v0, p3, :cond_0

    .line 155
    sget-object v0, Lcom/viber/voip/dh;->c:Lcom/viber/voip/dh;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dh;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onStopRecordPttReply(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/viber/voip/dh;->a:Lcom/viber/voip/dh;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dh;)V

    .line 162
    return-void
.end method
