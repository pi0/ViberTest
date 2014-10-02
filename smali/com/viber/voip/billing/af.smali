.class Lcom/viber/voip/billing/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ag;

.field final synthetic b:Lcom/viber/voip/billing/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/viber/voip/billing/af;->b:Lcom/viber/voip/billing/ae;

    iput-object p2, p0, Lcom/viber/voip/billing/af;->a:Lcom/viber/voip/billing/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
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
    .line 169
    if-eqz p2, :cond_0

    .line 170
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 171
    iget-object v1, p0, Lcom/viber/voip/billing/af;->b:Lcom/viber/voip/billing/ae;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/billing/ae;->a(Lcom/viber/voip/billing/ae;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/viber/voip/billing/af;->a:Lcom/viber/voip/billing/ag;

    iget-object v1, p0, Lcom/viber/voip/billing/af;->b:Lcom/viber/voip/billing/ae;

    invoke-static {v1}, Lcom/viber/voip/billing/ae;->a(Lcom/viber/voip/billing/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/ag;->a(Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/af;->a:Lcom/viber/voip/billing/ag;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
