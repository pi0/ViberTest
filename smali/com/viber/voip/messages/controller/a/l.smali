.class Lcom/viber/voip/messages/controller/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/l;->a:Lcom/viber/voip/messages/controller/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 552
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/l;->a:Lcom/viber/voip/messages/controller/a/k;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/k;->a:Lcom/viber/voip/messages/controller/a/j;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "conversation_type= ? AND _id != ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/e/u;->h()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 555
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/l;->a:Lcom/viber/voip/messages/controller/a/k;

    iget-object v1, v1, Lcom/viber/voip/messages/controller/a/k;->a:Lcom/viber/voip/messages/controller/a/j;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/a/j;->a(Lcom/viber/voip/messages/controller/a/j;)Lcom/viber/voip/messages/controller/cr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/controller/cr;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/l;->a:Lcom/viber/voip/messages/controller/a/k;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/k;->a:Lcom/viber/voip/messages/controller/a/j;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/j;->f:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->z()V

    .line 573
    return-void
.end method
