.class Lcom/viber/voip/e/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/e/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/u;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/viber/voip/e/aa;->b:Lcom/viber/voip/e/u;

    iput-wide p2, p0, Lcom/viber/voip/e/aa;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/viber/voip/e/aa;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->g(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->f()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/aa;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->g(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->f()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/e/aa;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/aa;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->g(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/aa;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->g(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageNotification: messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/e/aa;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/viber/voip/e/aa;->b:Lcom/viber/voip/e/u;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/e/u;JZ)V

    .line 1082
    :cond_0
    return-void
.end method
