.class public abstract Lcom/viber/voip/ui/h;
.super Lcom/viber/voip/ui/q;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:I

.field private e:Ljava/lang/Runnable;

.field protected r:Z

.field protected s:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/viber/voip/ui/q;-><init>()V

    .line 33
    iput v0, p0, Lcom/viber/voip/ui/h;->a:I

    .line 34
    iput v0, p0, Lcom/viber/voip/ui/h;->b:I

    .line 35
    iput v0, p0, Lcom/viber/voip/ui/h;->c:I

    .line 38
    new-instance v0, Lcom/viber/voip/ui/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/ui/j;-><init>(Lcom/viber/voip/ui/h;Lcom/viber/voip/ui/i;)V

    iput-object v0, p0, Lcom/viber/voip/ui/h;->e:Ljava/lang/Runnable;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/ui/h;->s:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/viber/voip/ui/h;->d:I

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x3

    const-string/jumbo v1, "HomeBaseFragment"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 139
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method protected b_()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 155
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/viber/voip/ui/h;->c:I

    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/h;->c:I

    .line 158
    iget v0, p0, Lcom/viber/voip/ui/h;->a:I

    iget v1, p0, Lcom/viber/voip/ui/h;->c:I

    if-lt v0, v1, :cond_0

    .line 159
    iput v2, p0, Lcom/viber/voip/ui/h;->a:I

    .line 162
    :cond_0
    iget v0, p0, Lcom/viber/voip/ui/h;->c:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/viber/voip/ui/h;->a:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/viber/voip/ui/h;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tablet Fragment Navigation: click on list item position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ui/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/h;->a(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/viber/voip/ui/h;->b:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/viber/voip/ui/h;->a:I

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ui/h;->a:I

    invoke-interface {v0, v1, v3, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v3, p0, Lcom/viber/voip/ui/h;->a:I

    iget v0, p0, Lcom/viber/voip/ui/h;->a:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/ui/h;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 179
    :cond_2
    :goto_1
    return-void

    .line 165
    :cond_3
    iget v0, p0, Lcom/viber/voip/ui/h;->b:I

    goto :goto_0

    .line 175
    :cond_4
    const-string/jumbo v0, "Tablet Fragment Navigation: HomeBaseFragment onItemCountChanged"

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/h;->a(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/viber/voip/ui/h;->c:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/h;->a(I)V

    goto :goto_1
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/HomeActivity;

    .line 50
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->b()I

    move-result v0

    iget v2, p0, Lcom/viber/voip/ui/h;->d:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method protected d(I)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/viber/voip/ui/h;->a:I

    .line 124
    return-void
.end method

.method protected e(I)I
    .locals 2
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/viber/voip/ui/h;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p1

    :cond_0
    iget p1, p0, Lcom/viber/voip/ui/h;->a:I

    goto :goto_0
.end method

.method protected abstract g()Z
.end method

.method protected abstract h()V
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string/jumbo v0, "cont_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/ui/h;->r:Z

    .line 62
    const-string/jumbo v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/ui/h;->s:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/h;->b:I

    .line 65
    :cond_0
    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/viber/voip/ui/q;->onDestroy()V

    .line 90
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ui/h;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public onFragmentVisibilityChanged(Z)V
    .locals 4
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onFragmentVisibilityChanged(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->i()V

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ui/h;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ui/h;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :cond_0
    return-void
.end method

.method public onNewStickerPackageCountChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 195
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/viber/voip/ui/h;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "cont_mode"

    iget-boolean v1, p0, Lcom/viber/voip/ui/h;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    const-string/jumbo v0, "search_query"

    iget-object v1, p0, Lcom/viber/voip/ui/h;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ui/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/viber/voip/ui/q;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/h;->onFragmentVisibilityChanged(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public w()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/ui/h;->a:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->b_()V

    .line 136
    :cond_1
    return-void
.end method

.method protected x()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/viber/voip/ui/h;->a:I

    return v0
.end method

.method protected y()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    invoke-virtual {p0}, Lcom/viber/voip/ui/h;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 190
    :cond_0
    return-void
.end method
