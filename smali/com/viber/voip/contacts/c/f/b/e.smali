.class public Lcom/viber/voip/contacts/c/f/b/e;
.super Lcom/viber/voip/contacts/c/f/b/f;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/c/f/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/f;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->a:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->b:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->c:Ljava/util/Set;

    .line 163
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected a(IIIZZI[Lcom/viber/jni/CAddressBookEntry;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Lcom/viber/voip/contacts/c/f/b/f;->a(IIIZZILjava/util/Map;)V

    .line 169
    array-length v1, p7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p7, v0

    .line 170
    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/e;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/viber/jni/CAddressBookEntry;->getClientCanonizedPhone()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/viber/voip/contacts/c/f/b/c;

    invoke-direct {v5, v2}, Lcom/viber/voip/contacts/c/f/b/c;-><init>(Lcom/viber/jni/CAddressBookEntry;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/e;->c:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/viber/jni/CAddressBookEntry;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/e;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/viber/jni/CAddressBookEntry;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/viber/jni/CAddressBookEntry;->getClientSortName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v2}, Lcom/viber/jni/CAddressBookEntry;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/c/f/b/e;->a(Lcom/viber/jni/CAddressBookEntry;)V

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/c/f/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/e;->c:Ljava/util/Set;

    return-object v0
.end method
