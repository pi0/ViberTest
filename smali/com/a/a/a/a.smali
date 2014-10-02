.class public Lcom/a/a/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field protected a:Lcom/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Lcom/a/a/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/e;-><init>(Lcom/a/a/a/e;)V

    iput-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    .line 47
    return-void
.end method


# virtual methods
.method public a(I)Landroid/widget/ListAdapter;
    .locals 3
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 149
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 151
    if-lt p1, v2, :cond_0

    .line 155
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a;->a(Landroid/view/View;Z)V

    .line 70
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0, v0, p2}, Lcom/a/a/a/a;->a(Ljava/util/List;Z)V

    .line 87
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/a/e;->a(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v0, Lcom/a/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/a;Lcom/a/a/a/b;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/e;->a(Landroid/widget/ListAdapter;Z)V

    .line 383
    invoke-virtual {p0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 384
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 111
    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0, p1}, Lcom/a/a/a/c;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/a/a/b/a;

    invoke-direct {v0, p1}, Lcom/a/a/b/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/e;->a(Landroid/view/View;Z)V

    .line 388
    invoke-virtual {p0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    return v1

    .line 169
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 170
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 127
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 128
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 130
    if-ge p1, v2, :cond_1

    .line 131
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 134
    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    .line 290
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 291
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 293
    if-ge p1, v2, :cond_1

    .line 294
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    .line 297
    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    const/4 v2, -0x1

    .line 205
    iget-object v1, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/a/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 220
    :goto_1
    return v0

    .line 205
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    .line 206
    iget-boolean v4, v0, Lcom/a/a/a/d;->b:Z

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 209
    if-ge p1, v4, :cond_1

    .line 210
    iget-object v0, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 211
    goto :goto_1

    .line 214
    :cond_1
    sub-int/2addr p1, v4

    .line 217
    :cond_2
    iget-object v0, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 305
    .line 307
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_1
    return v3

    .line 307
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 308
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 309
    check-cast v1, Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    .line 312
    if-eqz v5, :cond_3

    .line 313
    array-length v1, v5

    .line 316
    :goto_2
    if-ge p1, v1, :cond_1

    .line 317
    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    add-int v3, v2, v0

    goto :goto_1

    .line 319
    :cond_1
    if-eqz v5, :cond_2

    .line 320
    sub-int/2addr p1, v1

    .line 324
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public getSectionForPosition(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 332
    .line 334
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_1
    return v2

    .line 334
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 335
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 337
    if-ge p1, v4, :cond_2

    .line 338
    instance-of v3, v0, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_0

    .line 339
    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    add-int v2, v1, v0

    goto :goto_1

    .line 345
    :cond_2
    instance-of v5, v0, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_3

    .line 346
    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_3

    .line 349
    array-length v0, v0

    add-int/2addr v1, v0

    move v0, v1

    .line 354
    :goto_2
    sub-int/2addr p1, v4

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 375
    new-array v0, v4, [Ljava/lang/String;

    .line 378
    :goto_1
    return-object v0

    .line 364
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 365
    instance-of v3, v0, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_0

    .line 366
    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 267
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 268
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 270
    if-ge p1, v2, :cond_1

    .line 272
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 275
    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/a/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 184
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    .line 185
    iget-object v0, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 241
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 242
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 244
    if-ge p1, v2, :cond_1

    .line 245
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1

    .line 248
    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0
.end method
