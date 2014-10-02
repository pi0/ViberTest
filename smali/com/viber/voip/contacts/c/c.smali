.class final Lcom/viber/voip/contacts/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/viber/voip/contacts/c/u;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/viber/voip/contacts/c/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/viber/voip/contacts/c/c;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/c;->b:Lcom/viber/voip/contacts/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 620
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    .line 623
    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/viber/voip/contacts/c/c;->b:Lcom/viber/voip/contacts/c/u;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/u;->a(Ljava/util/Map;)V

    .line 657
    :cond_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 629
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 630
    new-instance v2, Lcom/viber/voip/contacts/c/d;

    invoke-direct {v2, p0, v0, v1}, Lcom/viber/voip/contacts/c/d;-><init>(Lcom/viber/voip/contacts/c/c;ILjava/util/Map;)V

    .line 654
    iget-object v0, p0, Lcom/viber/voip/contacts/c/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 655
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/t;)V

    goto :goto_0
.end method
