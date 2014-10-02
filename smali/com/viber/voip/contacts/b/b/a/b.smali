.class public Lcom/viber/voip/contacts/b/b/a/b;
.super Lcom/viber/voip/messages/orm/entity/EntityUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
        "<",
        "Lcom/viber/voip/contacts/b/b/a/a;",
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

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public varargs constructor <init>(Lcom/viber/voip/contacts/b/b/a/a;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;-><init>(Lcom/viber/voip/messages/orm/entity/Entity;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 384
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/b/b/a/a;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 410
    const/4 v1, 0x0

    .line 411
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/b;->a:Z

    iget-object v3, p1, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/contacts/b/b/a/a;->m(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/contacts/b/b/a/a;->h(Ljava/lang/String;)V

    move v1, v6

    .line 416
    :cond_0
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/b;->i:Z

    iget-object v3, p1, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    move v1, v6

    .line 420
    :cond_1
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/b;->b:Z

    iget-boolean v3, p1, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    iput-boolean v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    move v1, v6

    .line 424
    :cond_2
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/b;->c:Z

    iget-boolean v3, p1, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    iput-boolean v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    move v1, v6

    .line 428
    :cond_3
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/b;->e:Z

    iget v3, p1, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    iput v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    move v1, v6

    .line 432
    :cond_4
    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/b;->f:Z

    iget-boolean v3, p1, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    iput-boolean v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    move v7, v6

    .line 436
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->j:Z

    iget-wide v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-wide v4, v0, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 438
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-wide v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    iput-wide v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    move v7, v6

    .line 440
    :cond_5
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->g:Z

    iget-boolean v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 442
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    iput-boolean v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    move v7, v6

    .line 444
    :cond_6
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->h:Z

    iget-wide v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-wide v4, v0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-wide v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    iput-wide v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    move v7, v6

    .line 448
    :cond_7
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->k:Z

    iget v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 450
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    iput v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    move v7, v6

    .line 452
    :cond_8
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->d:Z

    iget-boolean v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 454
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    iput-boolean v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    move v7, v6

    .line 456
    :cond_9
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->l:Z

    iget v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 458
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    iput v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    move v7, v6

    .line 460
    :cond_a
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->m:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 462
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    move v7, v6

    .line 464
    :cond_b
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/b;->n:Z

    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/contacts/b/b/a/b;->notEquals(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 466
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->baseEntity:Lcom/viber/voip/messages/orm/entity/Entity;

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/a;

    iget-object v0, v0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    iput-object v0, p1, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    .line 468
    :goto_1
    return v6

    :cond_c
    move v6, v7

    goto :goto_1

    :cond_d
    move v7, v1

    goto/16 :goto_0
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
    .line 392
    const-string/jumbo v0, "display_name"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->a:Z

    .line 393
    const-string/jumbo v0, "contact_lookup_key"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->i:Z

    .line 394
    const-string/jumbo v0, "starred"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->b:Z

    .line 395
    const-string/jumbo v0, "viber"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->c:Z

    .line 396
    const-string/jumbo v0, "contact_hash"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->e:Z

    .line 397
    const-string/jumbo v0, "has_number"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->f:Z

    .line 398
    const-string/jumbo v0, "has_name"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->g:Z

    .line 399
    const-string/jumbo v0, "native_photo_id"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->h:Z

    .line 400
    const-string/jumbo v0, "joined_date"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->j:Z

    .line 401
    const-string/jumbo v0, "flags"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->k:Z

    .line 402
    const-string/jumbo v0, "viber_out"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->d:Z

    .line 403
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->l:Z

    .line 404
    const-string/jumbo v0, "phonetic_name"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->m:Z

    .line 405
    const-string/jumbo v0, "phone_label"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/b;->n:Z

    .line 406
    return-void
.end method

.method public synthetic updateEntity(Lcom/viber/voip/messages/orm/entity/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 365
    check-cast p1, Lcom/viber/voip/contacts/b/b/a/a;

    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/b;->a(Lcom/viber/voip/contacts/b/b/a/a;)Z

    move-result v0

    return v0
.end method
