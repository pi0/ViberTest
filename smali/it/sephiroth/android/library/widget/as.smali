.class public Lit/sephiroth/android/library/widget/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private final e:Landroid/widget/ListAdapter;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/as;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p3, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    .line 59
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/as;->f:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    sget-object v0, Lit/sephiroth/android/library/widget/as;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    .line 67
    :goto_0
    if-nez p2, :cond_1

    .line 68
    sget-object v0, Lit/sephiroth/android/library/widget/as;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    .line 73
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/as;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/as;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/as;->d:Z

    .line 76
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    goto :goto_0

    .line 70
    :cond_1
    iput-object p2, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    .line 93
    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/aq;->c:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 145
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/as;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->b()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->b()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/as;->f:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v0

    .line 175
    if-ge p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->b:Ljava/lang/Object;

    .line 190
    :goto_0
    return-object v0

    .line 180
    :cond_0
    sub-int v1, p1, v0

    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v2, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 183
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 184
    if-ge v1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 194
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v0

    .line 195
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 196
    sub-int v0, p1, v0

    .line 197
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 198
    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 202
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v0

    .line 235
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 236
    sub-int v0, p1, v0

    .line 237
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 238
    if-ge v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v0

    .line 215
    if-ge p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    .line 230
    :goto_0
    return-object v0

    .line 220
    :cond_0
    sub-int v1, p1, v0

    .line 221
    const/4 v0, 0x0

    .line 222
    iget-object v2, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 223
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 224
    if-ge v1, v0, :cond_1

    .line 225
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

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

.method public isEnabled(I)Z
    .locals 3
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/as;->a()I

    move-result v0

    .line 154
    if-ge p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/aq;->c:Z

    .line 169
    :goto_0
    return v0

    .line 159
    :cond_0
    sub-int v1, p1, v0

    .line 160
    const/4 v0, 0x0

    .line 161
    iget-object v2, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 162
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 163
    if-ge v1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/as;->b:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/aq;->c:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lit/sephiroth/android/library/widget/as;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 263
    :cond_0
    return-void
.end method
