.class Lit/sephiroth/android/library/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4542
    iput-object p1, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4546
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    if-eqz v0, :cond_1

    .line 4547
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->A:Z

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    .line 4548
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 4549
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4550
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 4552
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4553
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 4556
    :cond_1
    return-void
.end method
