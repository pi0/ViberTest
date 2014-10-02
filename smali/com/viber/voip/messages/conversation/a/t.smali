.class public Lcom/viber/voip/messages/conversation/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/a/a;


# instance fields
.field private final a:Lcom/viber/voip/messages/conversation/ag;

.field private final b:Z

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


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ag;ZZZZZZZZZZZZ)V
    .locals 0
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    .line 32
    iput-boolean p2, p0, Lcom/viber/voip/messages/conversation/a/t;->b:Z

    .line 33
    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/a/t;->c:Z

    .line 34
    iput-boolean p4, p0, Lcom/viber/voip/messages/conversation/a/t;->d:Z

    .line 35
    iput-boolean p5, p0, Lcom/viber/voip/messages/conversation/a/t;->e:Z

    .line 36
    iput-boolean p6, p0, Lcom/viber/voip/messages/conversation/a/t;->f:Z

    .line 37
    iput-boolean p7, p0, Lcom/viber/voip/messages/conversation/a/t;->g:Z

    .line 38
    iput-boolean p8, p0, Lcom/viber/voip/messages/conversation/a/t;->h:Z

    .line 39
    iput-boolean p9, p0, Lcom/viber/voip/messages/conversation/a/t;->i:Z

    .line 40
    iput-boolean p10, p0, Lcom/viber/voip/messages/conversation/a/t;->j:Z

    .line 41
    iput-boolean p11, p0, Lcom/viber/voip/messages/conversation/a/t;->k:Z

    .line 42
    iput-boolean p12, p0, Lcom/viber/voip/messages/conversation/a/t;->l:Z

    .line 43
    iput-boolean p13, p0, Lcom/viber/voip/messages/conversation/a/t;->m:Z

    .line 44
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->A()I

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->Y()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->Z()Z

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/t;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x3

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->n()I

    move-result v0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->ad()Z

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->ai()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->aj()Z

    move-result v0

    return v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->o()I

    move-result v0

    return v0
.end method

.method public M()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->s()I

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->W()Z

    move-result v0

    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()J
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->F()I

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->aa()Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->P()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->Q()Z

    move-result v0

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X()J
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()J
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public aa()J
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->N()Z

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
    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->O()Z

    move-result v0

    return v0
.end method

.method public ad()J
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public ae()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->D()I

    move-result v0

    return v0
.end method

.method public af()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->i()I

    move-result v0

    return v0
.end method

.method public ag()J
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public ah()J
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public ai()Z
    .locals 2

    .prologue
    .line 445
    const-string/jumbo v0, "has_description"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ag;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->d()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->f()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->g()I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->b:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->c:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->d:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->e:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->h:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->i:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/t;->j:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->R()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->T()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->ah()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->ag()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->X()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConversationAdapterItem{message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showUnreadHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showDateHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", aggregated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNewMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showCheckBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", prevCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", prevNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", prevSticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/t;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->U()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->V()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->ae()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->af()Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/t;->a:Lcom/viber/voip/messages/conversation/ag;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ag;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
