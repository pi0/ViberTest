.class Lcom/viber/voip/calls/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/as;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Z

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/viber/voip/calls/w;

.field final synthetic m:I

.field final synthetic n:Lcom/viber/voip/calls/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/z;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;JZIIILcom/viber/voip/calls/w;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/viber/voip/calls/ae;->n:Lcom/viber/voip/calls/z;

    iput-wide p2, p0, Lcom/viber/voip/calls/ae;->a:J

    iput-object p4, p0, Lcom/viber/voip/calls/ae;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/calls/ae;->c:Ljava/lang/String;

    iput p6, p0, Lcom/viber/voip/calls/ae;->d:I

    iput-wide p7, p0, Lcom/viber/voip/calls/ae;->e:J

    iput-object p9, p0, Lcom/viber/voip/calls/ae;->f:Ljava/lang/String;

    iput-wide p10, p0, Lcom/viber/voip/calls/ae;->g:J

    iput-boolean p12, p0, Lcom/viber/voip/calls/ae;->h:Z

    iput p13, p0, Lcom/viber/voip/calls/ae;->i:I

    iput p14, p0, Lcom/viber/voip/calls/ae;->j:I

    move/from16 v0, p15

    iput v0, p0, Lcom/viber/voip/calls/ae;->k:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/viber/voip/calls/ae;->l:Lcom/viber/voip/calls/w;

    move/from16 v0, p17

    iput v0, p0, Lcom/viber/voip/calls/ae;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/b/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    .line 276
    :goto_0
    new-instance v9, Lcom/viber/voip/calls/entities/impl/g;

    invoke-direct {v9}, Lcom/viber/voip/calls/entities/impl/g;-><init>()V

    .line 277
    iget-wide v2, p0, Lcom/viber/voip/calls/ae;->a:J

    invoke-virtual {v9, v2, v3}, Lcom/viber/voip/calls/entities/impl/g;->a(J)V

    .line 278
    iget-object v2, p0, Lcom/viber/voip/calls/ae;->b:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/viber/voip/calls/entities/impl/g;->a(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/viber/voip/calls/ae;->c:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/viber/voip/calls/entities/impl/g;->d(Ljava/lang/String;)V

    .line 280
    iget v2, p0, Lcom/viber/voip/calls/ae;->d:I

    invoke-virtual {v9, v2}, Lcom/viber/voip/calls/entities/impl/g;->b(I)V

    .line 281
    iget-wide v2, p0, Lcom/viber/voip/calls/ae;->e:J

    invoke-virtual {v9, v2, v3}, Lcom/viber/voip/calls/entities/impl/g;->b(J)V

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->m()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/contacts/b/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->m()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b/b/a/a;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->m()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/a/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 287
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->l()Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/a/i;->getId()J

    move-result-wide v4

    .line 291
    invoke-virtual {v9, v2}, Lcom/viber/voip/calls/entities/impl/g;->a(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v9, v4, v5}, Lcom/viber/voip/calls/entities/impl/g;->c(J)V

    .line 293
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v9, v1}, Lcom/viber/voip/calls/entities/impl/g;->c(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/viber/voip/calls/entities/impl/g;->b(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->d()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/viber/voip/calls/entities/impl/g;->a(I)V

    .line 299
    :cond_1
    new-instance v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    iget-object v1, p0, Lcom/viber/voip/calls/ae;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/viber/voip/calls/ae;->g:J

    iget-boolean v4, p0, Lcom/viber/voip/calls/ae;->h:Z

    iget v5, p0, Lcom/viber/voip/calls/ae;->i:I

    iget v6, p0, Lcom/viber/voip/calls/ae;->d:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    iget v7, p0, Lcom/viber/voip/calls/ae;->j:I

    iget v8, p0, Lcom/viber/voip/calls/ae;->k:I

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>(Ljava/lang/String;JZIZIILcom/viber/voip/calls/entities/impl/g;)V

    .line 301
    iget-object v1, p0, Lcom/viber/voip/calls/ae;->n:Lcom/viber/voip/calls/z;

    invoke-static {v1}, Lcom/viber/voip/calls/z;->a(Lcom/viber/voip/calls/z;)Lcom/viber/voip/calls/af;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/calls/ae;->l:Lcom/viber/voip/calls/w;

    invoke-virtual {v1, v0, v9, v2}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/w;)V

    .line 303
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/viber/voip/calls/ae;->n:Lcom/viber/voip/calls/z;

    invoke-static {v2}, Lcom/viber/voip/calls/z;->c(Lcom/viber/voip/calls/z;)Lcom/viber/voip/messages/i;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/viber/voip/calls/ae;->n:Lcom/viber/voip/calls/z;

    invoke-static {v1}, Lcom/viber/voip/calls/z;->c(Lcom/viber/voip/calls/z;)Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/calls/ae;->m:I

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V

    .line 310
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 273
    goto/16 :goto_0

    .line 299
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
