.class Lcom/viber/voip/contacts/c/d/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ap;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/p;->b:Lcom/viber/voip/contacts/c/d/m;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/p;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/p;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/p;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 395
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/p;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/p;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/p;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/p;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/d/a;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 398
    :cond_0
    return-void
.end method
