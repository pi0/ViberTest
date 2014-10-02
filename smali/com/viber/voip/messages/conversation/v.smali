.class public abstract Lcom/viber/voip/messages/conversation/v;
.super Lcom/viber/voip/messages/conversation/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/viber/voip/messages/conversation/an;",
        ">",
        "Lcom/viber/voip/messages/conversation/ai",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected h:Z

.field private volatile k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:Ljava/lang/String;

.field private p:J

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:Z

.field private v:J

.field private w:[I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/messages/conversation/ai;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->h:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/v;->y:Landroid/util/SparseArray;

    .line 59
    const/16 v0, 0x32

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    .line 61
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->d(I)V

    .line 62
    const-string/jumbo v0, "date DESC, token DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->b(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/conversation/ai;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->h:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/v;->y:Landroid/util/SparseArray;

    .line 67
    const/16 v0, 0x32

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    .line 68
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/v;->j:Lcom/viber/voip/messages/i;

    .line 70
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->d(I)V

    .line 71
    const-string/jumbo v0, "date DESC, token DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->b(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->i:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ai;->a(J)V

    .line 81
    return-void
.end method

.method public a(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    const-string/jumbo v0, "SELECT COUNT(*) FROM messages WHERE date>=%s AND conversation_id=%s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "CASE WHEN %s>0 AND (%s)>50 THEN (%s) ELSE 50 END"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->c(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method protected a(JJZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    .line 177
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->d(I)V

    .line 179
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    iput-wide p3, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    .line 180
    :cond_0
    if-nez p5, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->k:Z

    .line 182
    :cond_1
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/conversation/an;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->m:J

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    .line 189
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->n:J

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->s:I

    .line 192
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->y:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->D()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 7
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->u:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->w()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    iget-wide v5, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/x;->b(JJJ)V

    .line 133
    :cond_0
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/v;->u:Z

    .line 134
    return-void
.end method

.method public a(ZII)[I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 92
    new-array v2, p3, [I

    .line 93
    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    .line 96
    :goto_0
    if-ge v1, p3, :cond_4

    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 97
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    aget v3, v3, v0

    .line 99
    if-eqz v3, :cond_1

    .line 100
    if-eq v3, v5, :cond_0

    .line 101
    aput v3, v2, v1

    .line 115
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string/jumbo v4, "sticker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v4, 0x18

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 108
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    aput v3, v4, v0

    .line 109
    aput v3, v2, v1

    goto :goto_1

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    aput v5, v3, v0

    goto :goto_1

    .line 119
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 122
    :cond_4
    return-object v2
.end method

.method public a_(I)J
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->a_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(I)Lcom/viber/voip/messages/conversation/an;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 158
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v2, v0, p1

    .line 160
    invoke-super {p0, v2}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    .line 161
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 162
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->w()J

    move-result-wide v4

    long-to-int v0, v4

    :goto_0
    aput v0, v3, v2

    :cond_0
    move-object v0, v1

    .line 168
    :goto_1
    return-object v0

    .line 162
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 168
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/an;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->e()V

    .line 140
    const/16 v0, 0x32

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->h:Z

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized h()V
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->h()V

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->n:J

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected k()V
    .locals 11

    .prologue
    .line 199
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->k()V

    .line 201
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/v;->w:[I

    .line 203
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->h:Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/v;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v2, 0x16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 213
    iget-wide v5, p0, Lcom/viber/voip/messages/conversation/v;->m:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    .line 225
    :cond_1
    const/4 v3, 0x0

    .line 226
    const/4 v2, 0x0

    .line 227
    const/4 v1, -0x1

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->z:Z

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    .line 232
    const/4 v0, 0x0

    :goto_1
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->c(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 233
    if-nez v0, :cond_2

    .line 234
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/v;->o:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/viber/voip/messages/conversation/v;->p:J

    .line 236
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v4, 0x15

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    .line 237
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    .line 238
    iget-wide v4, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    iput-wide v4, p0, Lcom/viber/voip/messages/conversation/v;->m:J

    .line 239
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v4, 0x17

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 243
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v7, 0x5

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 244
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/16 v8, 0x22

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 245
    iget-object v8, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 246
    iget-object v9, p0, Lcom/viber/voip/messages/conversation/v;->e:Landroid/database/Cursor;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 248
    const/4 v10, 0x1

    if-ne v7, v10, :cond_c

    .line 249
    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 250
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/viber/voip/messages/conversation/v;->z:Z

    .line 251
    const/4 v2, 0x1

    .line 258
    :cond_3
    :goto_2
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    .line 260
    :goto_3
    iget-wide v9, p0, Lcom/viber/voip/messages/conversation/v;->n:J

    cmp-long v9, v9, v5

    if-ltz v9, :cond_e

    .line 261
    if-nez v3, :cond_4

    .line 262
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/viber/voip/messages/conversation/v;->s:I

    .line 263
    const/4 v3, 0x1

    .line 275
    :cond_4
    :goto_4
    if-eqz v3, :cond_11

    if-eqz v2, :cond_11

    .line 280
    :cond_5
    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    .line 284
    :cond_6
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    if-nez v0, :cond_7

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->s:I

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 289
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 290
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->w()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    iget-wide v5, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/x;->a(JJJ)V

    .line 302
    :cond_9
    :goto_5
    return-void

    .line 216
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/an;

    .line 217
    if-eqz v0, :cond_b

    .line 218
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/v;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 219
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 255
    :cond_c
    const/4 v2, 0x1

    goto :goto_2

    .line 258
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    .line 265
    :cond_e
    const/4 v9, 0x1

    if-eq v7, v9, :cond_f

    if-nez v4, :cond_f

    if-nez v8, :cond_10

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->b()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 266
    :cond_f
    if-nez v3, :cond_4

    .line 267
    iput-wide v5, p0, Lcom/viber/voip/messages/conversation/v;->n:J

    .line 268
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/viber/voip/messages/conversation/v;->s:I

    .line 269
    const/4 v3, 0x1

    goto :goto_4

    .line 272
    :cond_10
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    goto :goto_4

    .line 232
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 293
    :cond_12
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->k:Z

    if-eqz v0, :cond_9

    .line 294
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->u:Z

    if-eqz v0, :cond_13

    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->w()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    iget-wide v5, p0, Lcom/viber/voip/messages/conversation/v;->r:J

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/x;->b(JJJ)V

    .line 296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->v:J

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->k:Z

    goto :goto_5

    .line 299
    :cond_13
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->v:J

    goto :goto_5
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->n:J

    return-wide v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    add-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    .line 306
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->t:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/v;->d(I)V

    .line 307
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/v;->g()V

    .line 308
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->h:Z

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/viber/voip/messages/conversation/v;->s:I

    return v0
.end method

.method public r()J
    .locals 4

    .prologue
    .line 323
    const-string/jumbo v0, "call"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "notif"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->p:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->q:J

    .line 327
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 338
    const-string/jumbo v1, "call"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/v;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "notif"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/v;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/v;->p:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/v;->z:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/v;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->m:J

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/v;->n:J

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/v;->l:Z

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/v;->s:I

    .line 359
    return-void
.end method
