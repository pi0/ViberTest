.class public Lit/sephiroth/android/library/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/a/a/a;


# instance fields
.field private a:Lit/sephiroth/android/library/a/a/a;

.field private b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/a;->a(Landroid/view/ActionMode;IJZ)V

    .line 69
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 72
    :cond_0
    return-void
.end method

.method public a(Lit/sephiroth/android/library/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    .line 21
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    invoke-interface {v0, p1, p2}, Lit/sephiroth/android/library/a/a/a;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    invoke-interface {v1, p1, p2}, Lit/sephiroth/android/library/a/a/a;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 32
    const/4 v0, 0x1

    .line 34
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/a/a/a;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 53
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V

    .line 57
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 58
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    .line 59
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 61
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    invoke-interface {v0, p1, p2}, Lit/sephiroth/android/library/a/a/a;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
