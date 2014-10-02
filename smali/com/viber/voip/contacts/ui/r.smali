.class Lcom/viber/voip/contacts/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
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
    .line 367
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 370
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b;

    .line 371
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move-object v5, v1

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Z)Z

    .line 378
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v1

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v3

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v6}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z

    move-result v6

    iget-object v7, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/contacts/c/d/b;->a(JJLjava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V

    .line 392
    :goto_1
    return-void

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Z)Z

    .line 383
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->i(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/ui/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/s;-><init>(Lcom/viber/voip/contacts/ui/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V

    goto :goto_1

    :cond_4
    move-object v5, v0

    goto :goto_0
.end method
