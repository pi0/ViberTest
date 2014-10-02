.class public Lcom/viber/jni/ConversationToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public peerNum:Ljava/lang/String;

.field public token:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/jni/ConversationToken;->token:J

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/jni/ConversationToken;->peerNum:Ljava/lang/String;

    .line 8
    iput-wide p1, p0, Lcom/viber/jni/ConversationToken;->token:J

    .line 9
    iput-object p3, p0, Lcom/viber/jni/ConversationToken;->peerNum:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/ConversationToken;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/ConversationToken;->peerNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
