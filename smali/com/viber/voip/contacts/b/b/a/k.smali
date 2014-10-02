.class public Lcom/viber/voip/contacts/b/b/a/k;
.super Lcom/viber/voip/messages/orm/entity/EntityUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
        "<",
        "Lcom/viber/voip/contacts/b/b/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public varargs constructor <init>(Lcom/viber/voip/contacts/b/b/a/i;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;-><init>(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/b/b/a/i;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 195
    const/4 v1, 0x0

    .line 196
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/k;->a:Z

    invoke-static {p1}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;)Z

    move-result v3

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;)Z

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/k;->notEquals(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;Z)Z

    move v6, v7

    .line 200
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/k;->b:Z

    invoke-static {p1}, Lcom/viber/voip/contacts/b/b/a/i;->b(Lcom/viber/voip/contacts/b/b/a/i;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b(Lcom/viber/voip/contacts/b/b/a/i;)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/a/k;->notEquals(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b(Lcom/viber/voip/contacts/b/b/a/i;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/viber/voip/contacts/b/b/a/i;->b(Lcom/viber/voip/contacts/b/b/a/i;J)J

    move v6, v7

    .line 204
    :cond_0
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/k;->c:Z

    invoke-static {p1}, Lcom/viber/voip/contacts/b/b/a/i;->c(Lcom/viber/voip/contacts/b/b/a/i;)I

    move-result v2

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/a/i;->c(Lcom/viber/voip/contacts/b/b/a/i;)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/k;->notEquals(ZII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/a/i;->c(Lcom/viber/voip/contacts/b/b/a/i;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/i;I)I

    .line 208
    :goto_1
    return v7

    :cond_1
    move v7, v6

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_0
.end method

.method protected initUpdateTerms(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    const-string/jumbo v0, "starred"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->a:Z

    .line 189
    const-string/jumbo v0, "contact_id"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->b:Z

    .line 190
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/k;->c:Z

    .line 191
    return-void
.end method

.method public synthetic updateEntity(Lcom/viber/voip/messages/orm/entity/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 172
    check-cast p1, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/k;->a(Lcom/viber/voip/contacts/b/b/a/i;)Z

    move-result v0

    return v0
.end method
