.class final Lcom/viber/voip/contacts/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bt;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/bt;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/bt;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 261
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 262
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 263
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bt;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bt;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V

    .line 273
    :cond_2
    return-void
.end method
