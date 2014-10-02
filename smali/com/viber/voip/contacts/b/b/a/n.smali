.class public Lcom/viber/voip/contacts/b/b/a/n;
.super Lcom/viber/voip/messages/orm/entity/EntityUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
        "<",
        "Lcom/viber/voip/contacts/b/b/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public varargs constructor <init>(Lcom/viber/voip/contacts/b/b/a/l;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;-><init>(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 284
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/b/b/a/l;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 305
    const/4 v6, 0x0

    .line 306
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->a:Z

    iget-wide v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-wide v4, v0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-wide v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    iput-wide v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    move v6, v7

    .line 310
    :cond_0
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->b:Z

    iget-wide v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-wide v4, v0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-wide v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    iput-wide v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    move v6, v7

    .line 314
    :cond_1
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->c:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    move v6, v7

    .line 318
    :cond_2
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->d:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    move v6, v7

    .line 322
    :cond_3
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->e:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    move v6, v7

    .line 326
    :cond_4
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->f:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    move v6, v7

    .line 330
    :cond_5
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->g:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    move v6, v7

    .line 334
    :cond_6
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->i:Z

    iget v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 336
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    iput v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    move v6, v7

    .line 338
    :cond_7
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/n;->h:Z

    iget v2, p1, Lcom/viber/voip/contacts/b/b/a/l;->g:I

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->g:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/n;->notEquals(ZII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/l;->g:I

    iput v0, p1, Lcom/viber/voip/contacts/b/b/a/l;->g:I

    .line 342
    :goto_0
    return v7

    :cond_8
    move v7, v6

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
    .line 292
    const-string/jumbo v0, "contact_id"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->a:Z

    .line 293
    const-string/jumbo v0, "raw_id"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->b:Z

    .line 294
    const-string/jumbo v0, "data1"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->c:Z

    .line 295
    const-string/jumbo v0, "data2"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->d:Z

    .line 296
    const-string/jumbo v0, "data3"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->e:Z

    .line 297
    const-string/jumbo v0, "data4"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->f:Z

    .line 298
    const-string/jumbo v0, "data5"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->g:Z

    .line 299
    const-string/jumbo v0, "int_data2"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->h:Z

    .line 300
    const-string/jumbo v0, "mime_type"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/n;->i:Z

    .line 301
    return-void
.end method

.method public synthetic updateEntity(Lcom/viber/voip/messages/orm/entity/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 270
    check-cast p1, Lcom/viber/voip/contacts/b/b/a/l;

    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/n;->a(Lcom/viber/voip/contacts/b/b/a/l;)Z

    move-result v0

    return v0
.end method
