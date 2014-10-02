.class Lcom/viber/voip/e/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/e/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/u;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/viber/voip/e/w;->b:Lcom/viber/voip/e/u;

    iput-object p2, p0, Lcom/viber/voip/e/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/viber/voip/contacts/b/b;

    .line 443
    iget-object v0, p0, Lcom/viber/voip/e/w;->b:Lcom/viber/voip/e/u;

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/e/w;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 444
    iget-object v0, p0, Lcom/viber/voip/e/w;->b:Lcom/viber/voip/e/u;

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/e/u;J)J

    .line 450
    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v0

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v2

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v7, v7, Lcom/viber/voip/a/l;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v7}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v8

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 452
    invoke-static {v6}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 453
    iget-object v0, p0, Lcom/viber/voip/e/w;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/a/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, v10

    move-object v4, v9

    move-object v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;JLcom/viber/voip/contacts/b/b;Ljava/lang/String;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/viber/voip/e/w;->b:Lcom/viber/voip/e/u;

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/e/u;J)J

    .line 456
    iget-object v1, p0, Lcom/viber/voip/e/w;->b:Lcom/viber/voip/e/u;

    invoke-static {v1}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v1

    const/4 v2, -0x5

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 458
    :cond_0
    return-void
.end method
