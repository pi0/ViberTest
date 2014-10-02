.class Lcom/viber/voip/contacts/c/f/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/ad;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/w;->b:Lcom/viber/voip/contacts/c/f/b/u;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/w;->a:Lcom/viber/voip/contacts/c/f/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 13
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 443
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v7

    .line 446
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 447
    invoke-virtual {p1, v6}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/viber/voip/contacts/b/b/d;

    .line 449
    if-eqz v5, :cond_1

    .line 450
    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/d;->i()I

    move-result v10

    .line 451
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/viber/jni/CAddressBookInfo;

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/d;->getId()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/d;->j()Ljava/util/Set;

    move-result-object v4

    new-array v12, v7, [Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/d;->s()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/CAddressBookInfo;-><init>(JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 453
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 454
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    :cond_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 463
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/w;->a:Lcom/viber/voip/contacts/c/f/b/ad;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v8}, Lcom/viber/voip/contacts/c/f/b/ad;->a(ILjava/lang/String;Ljava/util/Map;)V

    .line 464
    return-void
.end method
