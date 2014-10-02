.class public Lcom/viber/voip/phone/call/n;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:[B

.field private v:Ljava/lang/String;

.field private w:I

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    iput-wide v3, p0, Lcom/viber/voip/phone/call/n;->a:J

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/phone/call/n;->b:J

    .line 26
    iput-wide v3, p0, Lcom/viber/voip/phone/call/n;->c:J

    .line 27
    iput-wide v3, p0, Lcom/viber/voip/phone/call/n;->d:J

    .line 29
    iput-wide v3, p0, Lcom/viber/voip/phone/call/n;->e:J

    .line 31
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->f:Z

    .line 33
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->g:Z

    .line 34
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->h:Z

    .line 35
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->i:Z

    .line 36
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->j:Z

    .line 37
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->k:Z

    .line 38
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->l:Z

    .line 39
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->m:Z

    .line 40
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->n:Z

    .line 41
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->o:Z

    .line 42
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->p:Z

    .line 43
    iput-boolean v2, p0, Lcom/viber/voip/phone/call/n;->q:Z

    .line 44
    iput v2, p0, Lcom/viber/voip/phone/call/n;->r:I

    .line 45
    iput v2, p0, Lcom/viber/voip/phone/call/n;->s:I

    .line 46
    iput v2, p0, Lcom/viber/voip/phone/call/n;->t:I

    .line 47
    iput-object v5, p0, Lcom/viber/voip/phone/call/n;->u:[B

    .line 48
    iput-object v5, p0, Lcom/viber/voip/phone/call/n;->v:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/viber/voip/phone/call/n;->w:I

    .line 51
    iput-wide v3, p0, Lcom/viber/voip/phone/call/n;->x:J

    .line 52
    iput v2, p0, Lcom/viber/voip/phone/call/n;->y:I

    .line 53
    iput v2, p0, Lcom/viber/voip/phone/call/n;->z:I

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized A()Lcom/viber/voip/phone/call/n;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 350
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/phone/call/n;->a:J

    .line 353
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/phone/call/n;->d:J

    .line 354
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-object p0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->i:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->j:Z

    return v0
.end method

.method public a(I)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/viber/voip/phone/call/n;->w:I

    if-eq v0, p1, :cond_1

    .line 137
    iput p1, p0, Lcom/viber/voip/phone/call/n;->w:I

    .line 138
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/n;->f:Z

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 143
    :cond_1
    return-object p0
.end method

.method public a(I[BLjava/lang/String;I)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/viber/voip/phone/call/n;->s:I

    if-eq v0, p4, :cond_0

    .line 155
    iput p4, p0, Lcom/viber/voip/phone/call/n;->s:I

    .line 156
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 159
    :cond_0
    iget v0, p0, Lcom/viber/voip/phone/call/n;->t:I

    if-eq v0, p1, :cond_1

    .line 160
    iput p1, p0, Lcom/viber/voip/phone/call/n;->t:I

    .line 161
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/call/n;->u:[B

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/viber/voip/phone/call/n;->u:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    iput-object p2, p0, Lcom/viber/voip/phone/call/n;->u:[B

    .line 166
    iput-object p3, p0, Lcom/viber/voip/phone/call/n;->v:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 169
    :cond_2
    return-object p0
.end method

.method public a(J)Lcom/viber/voip/phone/call/n;
    .locals 2
    .parameter

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->x:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 213
    iput-wide p1, p0, Lcom/viber/voip/phone/call/n;->x:J

    .line 214
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 216
    :cond_0
    return-object p0
.end method

.method public a(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->i:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->i:Z

    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 68
    :cond_0
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->h:Z

    return v0
.end method

.method public b(I)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 224
    iget v0, p0, Lcom/viber/voip/phone/call/n;->y:I

    if-eq v0, p1, :cond_0

    .line 225
    iput p1, p0, Lcom/viber/voip/phone/call/n;->y:I

    .line 226
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 228
    :cond_0
    return-object p0
.end method

.method public b(J)Lcom/viber/voip/phone/call/n;
    .locals 2
    .parameter

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->e:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 312
    iput-wide p1, p0, Lcom/viber/voip/phone/call/n;->e:J

    .line 313
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 316
    :cond_0
    return-object p0
.end method

.method public b(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->h:Z

    if-eq v0, p1, :cond_0

    .line 73
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->h:Z

    .line 74
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 76
    :cond_0
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->n:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/viber/voip/phone/call/n;->w:I

    return v0
.end method

.method public c(I)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget v0, p0, Lcom/viber/voip/phone/call/n;->z:I

    if-eq v0, p1, :cond_0

    .line 237
    iput p1, p0, Lcom/viber/voip/phone/call/n;->z:I

    .line 238
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 240
    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->n:Z

    if-eq v0, p1, :cond_0

    .line 85
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->n:Z

    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 88
    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 412
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->q:Z

    if-eq p1, v0, :cond_0

    .line 101
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->q:Z

    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 104
    :cond_0
    return-object p0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->q:Z

    return v0
.end method

.method public e(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->o:Z

    if-eq p1, v0, :cond_0

    .line 113
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->o:Z

    .line 114
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 116
    :cond_0
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->o:Z

    return v0
.end method

.method public f(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->g:Z

    if-eq v0, p1, :cond_0

    .line 249
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->g:Z

    .line 250
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 252
    :cond_0
    return-object p0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/viber/voip/phone/call/n;->s:I

    return v0
.end method

.method public g(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->l:Z

    if-eq v0, p1, :cond_0

    .line 261
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->l:Z

    .line 262
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 265
    :cond_0
    return-object p0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/viber/voip/phone/call/n;->t:I

    return v0
.end method

.method public h(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->k:Z

    if-eq v0, p1, :cond_0

    .line 274
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->k:Z

    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 277
    :cond_0
    return-object p0
.end method

.method public i(Z)Lcom/viber/voip/phone/call/n;
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 293
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->m:Z

    if-eq v0, p1, :cond_0

    .line 294
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->m:Z

    .line 295
    if-eqz p1, :cond_1

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/phone/call/n;->c:J

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 303
    :cond_0
    return-object p0

    .line 298
    :cond_1
    iput-wide v1, p0, Lcom/viber/voip/phone/call/n;->c:J

    .line 299
    iput-wide v1, p0, Lcom/viber/voip/phone/call/n;->e:J

    goto :goto_0
.end method

.method public i()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/phone/call/n;->u:[B

    return-object v0
.end method

.method public j(Z)Lcom/viber/voip/phone/call/n;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->j:Z

    if-eq v0, p1, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/viber/voip/phone/call/n;->j:Z

    .line 366
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V

    .line 368
    :cond_0
    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/viber/voip/phone/call/n;->v:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/viber/voip/phone/call/n;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyObservers()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 381
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/call/n;->notifyObservers(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/viber/voip/phone/call/n;->y:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/viber/voip/phone/call/n;->z:I

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->g:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->l:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->k:Z

    return v0
.end method

.method public t()J
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/phone/call/n;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InCallState{checkpointTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/phone/call/n;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/phone/call/n;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", progressTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/phone/call/n;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isMuteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/call/n;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHoldEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/call/n;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSpeakerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/call/n;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDataInterrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/call/n;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", securePeer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureEncripted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureBreach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/n;->s:I

    and-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 289
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/n;->m:Z

    return v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->e:J

    return-wide v0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->c:J

    return-wide v0
.end method

.method public declared-synchronized x()J
    .locals 6

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->a:J

    .line 325
    iget-wide v2, p0, Lcom/viber/voip/phone/call/n;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 326
    iget-wide v0, p0, Lcom/viber/voip/phone/call/n;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/viber/voip/phone/call/n;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 328
    :cond_0
    monitor-exit p0

    return-wide v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/viber/voip/phone/call/n;->r:I

    return v0
.end method

.method public declared-synchronized z()Lcom/viber/voip/phone/call/n;
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/phone/call/n;->d:J

    .line 345
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/n;->setChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-object p0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
