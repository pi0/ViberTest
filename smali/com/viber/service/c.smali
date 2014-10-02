.class final Lcom/viber/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ZJLandroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/viber/service/c;->a:Z

    iput-wide p2, p0, Lcom/viber/service/c;->b:J

    iput-object p4, p0, Lcom/viber/service/c;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/viber/service/c;->d:Landroid/content/Intent;

    iput-object p6, p0, Lcom/viber/service/c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/viber/service/c;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/viber/service/c;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/viber/service/c;->c:Landroid/content/Context;

    iget-wide v1, p0, Lcom/viber/service/c;->b:J

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/aa;->a(Landroid/content/Context;J)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    .line 86
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    const-string/jumbo v3, "tel"

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    iget-object v2, p0, Lcom/viber/service/c;->c:Landroid/content/Context;

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.NO_LONGER_VIBER_PROBLEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/viber/service/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/viber/service/c;->d:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/viber/service/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/c;->d:Landroid/content/Intent;

    iget-object v2, p0, Lcom/viber/service/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
