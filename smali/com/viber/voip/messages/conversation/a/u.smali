.class public Lcom/viber/voip/messages/conversation/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/a/a;


# instance fields
.field public final a:Z

.field private final b:Lcom/viber/voip/messages/conversation/an;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/an;)V
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 31
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v2

    invoke-direct/range {v0 .. v13}, Lcom/viber/voip/messages/conversation/a/u;-><init>(Lcom/viber/voip/messages/conversation/an;ZZZZZZZZZZZZ)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/conversation/an;ZZZZZZZZZZZZ)V
    .locals 2
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
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    .line 39
    iput-boolean p2, p0, Lcom/viber/voip/messages/conversation/a/u;->c:Z

    .line 40
    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/a/u;->d:Z

    .line 41
    iput-boolean p4, p0, Lcom/viber/voip/messages/conversation/a/u;->e:Z

    .line 42
    iput-boolean p5, p0, Lcom/viber/voip/messages/conversation/a/u;->f:Z

    .line 43
    iput-boolean p6, p0, Lcom/viber/voip/messages/conversation/a/u;->g:Z

    .line 44
    iput-boolean p7, p0, Lcom/viber/voip/messages/conversation/a/u;->h:Z

    .line 45
    iput-boolean p8, p0, Lcom/viber/voip/messages/conversation/a/u;->i:Z

    .line 46
    iput-boolean p9, p0, Lcom/viber/voip/messages/conversation/a/u;->j:Z

    .line 47
    iput-boolean p10, p0, Lcom/viber/voip/messages/conversation/a/u;->k:Z

    .line 48
    iput-boolean p11, p0, Lcom/viber/voip/messages/conversation/a/u;->l:Z

    .line 49
    iput-boolean p12, p0, Lcom/viber/voip/messages/conversation/a/u;->m:Z

    .line 50
    iput-boolean p13, p0, Lcom/viber/voip/messages/conversation/a/u;->n:Z

    .line 51
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->r()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->a:Z

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->A()I

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->Y()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->Z()Z

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/u;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x3

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->n()I

    move-result v0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->ad()Z

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->ai()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->aj()Z

    move-result v0

    return v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->o()I

    move-result v0

    return v0
.end method

.method public M()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->s()I

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->W()Z

    move-result v0

    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()J
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->F()I

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->aa()Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X()J
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public aa()J
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ac()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->O()Z

    move-result v0

    return v0
.end method

.method public ad()J
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public ae()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->D()I

    move-result v0

    return v0
.end method

.method public af()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public ag()J
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public ah()J
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public ai()Z
    .locals 2

    .prologue
    .line 450
    const-string/jumbo v0, "has_description"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->d()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->f()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->g()I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->c:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->d:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->e:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->f:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->i:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->j:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/u;->k:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->R()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->T()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->ah()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->ag()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->X()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationAdapterItem{message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showUnreadHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showDateHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", aggregated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNewMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showCheckBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", prevCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", prevNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", prevSticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/u;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->U()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->V()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->ae()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->af()Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/u;->b:Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
