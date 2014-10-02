.class Lcom/viber/voip/process/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/process/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/viber/voip/process/ProcessBoundTasks;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/ProcessBoundTasks;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/process/a;->d:Lcom/viber/voip/process/ProcessBoundTasks;

    iput-object p2, p0, Lcom/viber/voip/process/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/process/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/process/a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "3. onPerformReply for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/process/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/ProcessBoundTasks;->a(Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/process/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/viber/voip/process/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
