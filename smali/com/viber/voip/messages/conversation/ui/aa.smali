.class Lcom/viber/voip/messages/conversation/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/aa;->c:Lcom/viber/voip/messages/conversation/ui/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/aa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/aa;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
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
    .line 388
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 389
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->q()Lcom/viber/voip/contacts/b/f;

    move-result-object v0

    .line 390
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/aa;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aa;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aa;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
